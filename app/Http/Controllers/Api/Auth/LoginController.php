<?php

namespace App\Http\Controllers\Api\Auth;

use Auth;
use DB;
use Validator;
use Response;
use Illuminate\Http\Request;
use Laravel\Passport\Client;
use App\Http\Controllers\Controller;
use App\User;

use Illuminate\Support\Facades\Route;

class LoginController extends Controller
{
    private $client;

	public function __construct(){
		$this->client = Client::find(5);
	}

	public function login(Request $request){
		$validator = Validator::make($request->all(), [
            'username' => 'required|email',
            'password' => 'required|min:6'
        ]);

        if($validator->fails()){
            return Response::json([
                                    'message'=>$validator->errors()->all()
                                ],403);
        }
        //validate username or password

        //get all email and scope by username 
        
        $userdata = User::findForPassport();
        $params = [
	        'grant_type' => 'password',
	        'client_id' => $this->client->id,
	        'client_secret' => $this->client->secret,
	        'username' => request('username'),
	        'password' => request('password'),
	        'scope' => '*'
	    ];

	    $request->request->add($params);

	    $proxy = Request::create('oauth/token','POST');

	    return Route::dispatch($proxy);
	}

	public function refresh(Request $request){
		$validator = Validator::make($request->all(), [
            'refresh_token' => 'required',
        ]);

        if($validator->fails()){
            return Response::json([
                                    'message'=>$validator->errors()->all()
                                ],403);
        }

		$params = [
			        'grant_type' => 'refresh_token',
		            'refresh_token' => request('refresh_token'),
			        'client_id' => $this->client->id,
			        'client_secret' => $this->client->secret,
			        'scope' => '*'
			    ];

	    $request->request->add($params);

	    $proxy = Request::create('oauth/token','POST');

	    return Route::dispatch($proxy);

	}

	public function logout(Request $request){
		$accessToken = Auth::user()->token();

		$refreshToken = DB::table('oauth_refresh_tokens')
					->where('access_token_id','=',$accessToken->id)
					->update(['revoked'=>true]);

		$accessToken->revoke();
		return Response::json([
                                    'message'=>"success"
                                ],403);
	}
}
