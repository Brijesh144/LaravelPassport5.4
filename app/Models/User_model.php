<?php

namespace App\Models;
use App\Models\BaseModels\User;
use Laravel\Passport\Client;
use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use Hash;
use App\Models\RoleUser_model;
use Response;

class User_model 
{
	private $client;
    protected $RoleUser_model;
	public function __construct(){
		$this->client = Client::find(2);
        $this->RoleUser_model = new RoleUser_model;
	}
    
    public function findForPassport($username,$password) {
        if(is_numeric($username)){
            $cond = ['mobile'=>$username];
        }else{
            $cond = ['email'=>$username];
        }
        $user =  User::where($cond)->first();
        if(Hash::check($password, $user->password)){
            return $user;
        }else{
            return null;
        }
        //use join to get scope
    }


    public function generatetoken($request,$user_data){
        $scopes = $this->RoleUser_model->getScopeByUserId($user_data->id);
        if(is_null($scopes)){
            return Response::json([
                                    'message'=>'Invalid User'
                                ],403);
        }

    	//get scope
    	$params = [
	        'grant_type' => 'password',
	        'client_id' => $this->client->id,
	        'client_secret' => $this->client->secret,
	        'username' => $user_data->email,
	        'password' => $request->password,
	        'scope' => implode(" ", $scopes),
	    ];

	    $request->request->add($params);
    	$proxy = $request->create('oauth/token','POST');
	    return Route::dispatch($proxy);
    }

}

