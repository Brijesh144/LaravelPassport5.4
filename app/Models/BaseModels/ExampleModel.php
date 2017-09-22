<?php

namespace App\Models\BaseModels;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ExampleModel extends Model
{
	//use for Soft Detete and specify deleted_at Column
    use SoftDeletes;

    /**
     * Rename The Column name of Created_at and Updated_at if Timestampes is true.
     *
     * @var string
     */

    //const CREATED_AT = 'creation_date';		//(Optional)
    //const UPDATED_AT = 'last_update';			//(Optional)


    /**
     * if You want to change Primary key name from id to other 
     *	(Laravel Provide default primary key id(int)).
     *
     * @var string
     */

    //protected $primaryKey  = 'example_id';	//(Optional)

    /**
     * The table associated with the model.
     *
     * @var string
     */

    protected $table = 'table_names';


    /**
     * If you wish to use a non-incrementing or a non-numeric primary key.
     *
     * @var bool
     */

    //protected $incrementing = false;	//(Optional)


    /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */

    //public $timestamps = false;		//(Optional)


    /**
     * The storage format of the model's date columns.
     *
     * @var string
     */
    //protected $dateFormat = 'U';		//(Optional)


    //Use For SoftDeletes

    protected $dates = ['deleted_at'];


    /**
     * Use for Mass Assignment.
     * use for Allowing Column Data only which you specify here
     *
     * @var Array
     */
    protected $fillable = [
        'column_name1','column_name2',...,'column_nameN'
    ];

    protected $hidden = [
        'created_at','updated_at','deleted_by','updated_by','deleted_at'
    ];
}
