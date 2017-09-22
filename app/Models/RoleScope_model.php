<?php

namespace App\Models;

use DB;

class RoleScope_model {

	public function getScopeByRoleIds($role_id_arr){
		return DB::table('tbl_role_scopes')
                        ->select('*')
                        ->leftJoin('tbl_scopes','tbl_scopes.id','=','tbl_role_scopes.scope_id')
                        ->whereIn('tbl_role_scopes.role_id',$role_id_arr)
                        ->get();
	}

}
