<?php

namespace App\Models;

use DB;
use App\Model\BaseModels\role_user;
use App\Models\RoleScope_model;

class RoleUser_model {

  protected $RoleScope_model;

	public function __construct(){
		//parent::__construct();
		$this->RoleScope_model = new RoleScope_model;
	}


	//Only For API

	public function getRoleByIdAPI($user_id){
		return DB::table('tbl_roles_user')
                ->select('*')
                ->leftJoin('tbl_roles','tbl_roles.id','=','tbl_roles_user.role_id')
				->where('tbl_roles_user.user_id', '=', $user_id)
                ->get();
	}

	public function getScopeByUserId($user_id){
		$check_roles = $this->getRoleByIdAPI($user_id);
		if(count($check_roles)<=0){
			return null;
		}

		$role_id_arr = array();
		foreach($check_roles as $check_role){
			$role_id_arr[] = $check_role->role_id;
		}

		$scopes = $this->RoleScope_model->getScopeByRoleIds($role_id_arr);
		if(count($scopes)<=0){
			return null;
		}

		$scopes_arr = array();
		foreach($scopes as $scope){
				$scopes_arr[]=$scope->scope_name;
		}
		return $scopes_arr;
	}

	
	public function checkRole($where_datas){
		return role_user::where($where_datas)->get();
	} 

	public function removeUserToRole($id){
		$get_id = role_user::find($id);
		return $get_id->delete();
	}

	public function getUserId(){
		return role_user::select('user_id')->distinct()->get();
	}

}
