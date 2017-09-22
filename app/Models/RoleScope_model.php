<?php

namespace App\Models;
use App\Models\BaseModels\Scope;

use DB;

class RoleScope_model {

	public function getScopeByRoleIds($role_id_arr){
		return DB::table('tbl_role_scopes')
                        ->select('*')
                        ->leftJoin('tbl_scopes','tbl_scopes.id','=','tbl_role_scopes.scope_id')
                        ->whereIn('tbl_role_scopes.role_id',$role_id_arr)
                        ->get();
	}

	public function getScope(){
		$get_scopes =  Scope::select('scope_name','scope_desc')->get();
		$scopes = array();
		if(count($get_scopes) <=0){
			return $scopes;
		}
		foreach($get_scopes as $value){
			$scopes[$value->scope_name] = $value->scope_desc;
		}
		return $scopes;
	}

}
