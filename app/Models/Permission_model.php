<?php

namespace App\Models;

use DB;
use App\Model\BaseModels\Permission;

class Permission_model {

	public function __construct(){
		//parent::__construct();
	}

	public function getAll(){
		return Permission::get();
	}

	public function findById($id){
		return Permission::find($id);
	}

	public function getPermissionForRoute(){
		return DB::table('tbl_permssion_scopes')
					->select(DB::raw('GROUP_CONCAT(tbl_scopes.scope_name SEPARATOR ',') AS names'))
                    ->select(', tbl_permissions.slug_name, tbl_permissions.controller_name
							    , tbl_permissions.method_name, tbl_permissions.method_type
							    , tbl_permissions.middleware_name')
                    ->Join('tbl_permissions','tbl_permssion_scopes.permission_id','=','tbl_permissions.id')
                    ->Join('tbl_scopes','tbl_permssion_scopes.scope_id','=','tbl_scopes.id')
                    ->groupBy('tbl_permissions.id');
                    ->get();
	}

	public function insert($request){
		$createUser = new Permission;
        $createUser->name = $request->perm_name;
        $createUser->slug = $request->slug;
        if(isset($request->desc) && $request->desc){
        	$createUser->description = $request->desc;
        }
        $createUser->save();
        return $createUser;
	}

	public function updatePerm($where_data,$update_data){
		return Permission::where($where_data)->update($update_data);
	}


	public function deletePerm($id){
		$get_id = $this->findById($id);
		return $get_id->delete();
	}


	public function checkPerm($where_datas){
		return DB::table('permission_role')->where($where_datas)->get();
	} 


	public function getUserId(){
		return DB::table('permission_role')->select('role_id')->distinct()->get();
	}

	public function deletePermAssignRole($id){
		return DB::table('permission_role')->where('id', $id)->delete();
	}


}
