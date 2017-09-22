<?php

namespace App\Models\BaseModels;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;
use DB;

class Permission extends Model
{
    use SoftDeletes;
    protected $table = 'tbl_permissions';
    protected $fillable = ['name', 'slug', 'description'];
    protected $dates = ['deleted_at'];
    
    protected $hidden = [
        'created_at','updated_at','deleted_by','updated_by','deleted_at'
    ];
    public function roles()
    {
        return $this->belongsToMany('App\Role');
    }

    public static function getPermissionForRoute(){
        return DB::table('tbl_permssion_scopes')
                ->selectRaw("GROUP_CONCAT(tbl_scopes.scope_name SEPARATOR ',') AS scope_name")
                    ->select(array(DB::raw("GROUP_CONCAT(tbl_scopes.scope_name SEPARATOR ',') AS scope_name"),'tbl_permissions.id','tbl_permissions.slug_name', 'tbl_permissions.controller_name'
                                , 'tbl_permissions.method_name', 'tbl_permissions.method_type'
                                , 'tbl_permissions.middleware_name', 'tbl_permissions.namespace'))
                    ->leftJoin('tbl_permissions','tbl_permssion_scopes.permission_id','=','tbl_permissions.id')
                    ->leftJoin('tbl_scopes','tbl_permssion_scopes.scope_id','=','tbl_scopes.id')
                    ->groupBy('tbl_permissions.id')
                    ->get();
    }


}
