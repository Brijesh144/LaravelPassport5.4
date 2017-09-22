<?php

namespace App\Models\BaseModels;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Scope extends Model
{
    use SoftDeletes;

    protected $table = 'tbl_scopes';

    protected $dates = ['deleted_at'];

    protected $fillable = [
        'scope_name','scope_desc'
    ];

    protected $hidden = [
        'created_at','updated_at','deleted_by','updated_by','deleted_at'
    ];
}
