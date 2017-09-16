<?php

namespace App\Http\Controllers\Api\Auth;

use Validator;
use Response;
use Illuminate\Http\Request;
use Laravel\Passport\Client;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Controller;
use App\User;

class RegisterController extends Controller
{

	private $client;

	public function __construct(){
		$this->client = Client::find(5);
	}
    public function register(Request $request){

        // $this->validate($request, [
        //     'name' => 'required',
        //     'email' => 'required|email|unique:users,email',
        //     'password' => 'required|min:6'
        // ]);
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|min:6'
        ]);

        if($validator->fails()){
            return Response::json([
                                    'message'=>$validator->errors()->all()
                                ],403);
        }

        $user = User::create([
            'name' => request('name'),
            'email' => request('email'),
            'password' => bcrypt(request('password')) // instead of bcrypt('password')
        ]);


        $params = [
	        'grant_type' => 'password',
	        'client_id' => $this->client->id,
	        'client_secret' => $this->client->secret,
	        'username' => request('email'),
	        'password' => request('password'),
	        'scope' => '*'
	    ];

	    $request->request->add($params);

	    $proxy = $request->create('oauth/token','POST');

	    return Route::dispatch($proxy);
    }
}
