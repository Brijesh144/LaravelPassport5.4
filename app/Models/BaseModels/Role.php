<?php

namespace App\Model\BaseModels;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    use SoftDeletes;
    protected $table = 'tbl_roles';
    protected $dates = ['deleted_at'];
    protected $fillable = ['name', 'slug', 'is_admin', 'description'];

     protected $hidden = [
        'created_at','updated_at','deleted_by','updated_by','deleted_at'
    ];

    public function users()
    {
     return $this->belongsToMany(config('auth.providers.users.model'));
    }
}
