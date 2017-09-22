<?php

namespace App\Models;
use App\Model\BaseModel\ExampleModel;

class ExampleModel_model 
{

	public function getAll() {
            return ExampleModel::all();
    }

	public function findById($id) {
            return ExampleModel::find($id);
    }

    public function allCondtion($where_data = array()){
            return ExampleModel::where($where_data)->get();
    }

	public function insertData($insert_data = array()){
            return ExampleModel::insert($insert_data);
    }

	public function updateData($where_data = array(),$update_data = array()){
            return ExampleModel::where($where_data)->update($update_data);
    }


    public function insertOrUpdate($data = array()){
    	if(isset($data['id']) && $data['id'])){
    		return ExampleModel::where(['id'=>$data['id']])->update($data);
    	}else{
    		return ExampleModel::insert($data);
    	}
    }

    public function massInsert($data = array()){
            return ExampleModel::create($data);
    }

    public function deleteById($Id){
        $id = $this->findById($Id);
        return $id->delete();
    }
}
