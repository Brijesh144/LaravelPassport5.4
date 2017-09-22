<?php

use Illuminate\Http\Request;
use App\Models\BaseModels\Permission;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

//with Auth
// $get_route_datas = Permission::getPermissionForRoute();
// foreach ($get_route_datas as $route_value) {
// 		$meth_name = $route_value->method_name;
// 		$slug_name = $route_value->slug_name ;
// 		$method_type = $route_value->method_type;
// 		$namespace = $route_value->namespace;
// 		$controller_name = $route_value->controller_name;
// 		$method = $route_value->method_name;
// 		$class_n = "Api\V1".$namespace.$controller_name."@".$method;
// 		$middleware_name = $route_value->middleware_name;
// 		$scope_name = "scopes:".$route_value->scope_name;
// 		$middle_data = array($middleware_name,$scope_name);
// 		Route::$method_type($slug_name,$class_n)
// 					->middleware($middle_data);

// }

// $get_routes = Permission::getPermissionForNonAuth();

// foreach ($get_routes as $get_route) {
// 		$meth_name = $get_route->method_name;
// 		$slug_name = $get_route->slug_name ;
// 		$method_type = $get_route->method_type;
// 		$namespace = $get_route->namespace;
// 		$controller_name = $get_route->controller_name;
// 		$method = $get_route->method_name;
// 		$class_n = "Api\V1".$namespace.$controller_name."@".$method;
// 		Route::$method_type($slug_name,$class_n);
// }

$get_routes_data = Permission::getRouteData();
// dd($get_routes_data);exit;
foreach ($get_routes_data as $route_value) {
		$meth_name = $route_value->method_name;
		$slug_name = $route_value->slug_name ;
		$method_type = $route_value->method_type;
		if(is_null($route_value->namespace)){
			$namespace = '';
		}else{
			$namespace = $route_value->namespace;
		}
		$controller_name = $route_value->controller_name;
		$method = $route_value->method_name;
		$class_n = "Api\V1".$namespace.$controller_name."@".$method;

		
		if($route_value->is_middleware == 1){
			$middleware_name = $route_value->middleware_name;
			if(is_null($route_value->scope_name)){
				$middle_data = $middleware_name;
			}else{
				$scope_name = "scopes:".$route_value->scope_name;
				$middle_data = array($middleware_name,$scope_name);
			}
			Route::$method_type($slug_name,$class_n)
					->middleware($middle_data);
		}else{
			Route::$method_type($slug_name,$class_n);
		}
}




// Route::post('register','Api\V1\Auth\RegisterController@register');
// Route::post('login','Api\V1\Auth\LoginController@login');
// Route::post('refresh','Api\V1\Auth\LoginController@refresh');

// Route::middleware('auth:api')->get('/user', function (Request $request) {
// 	return $request->user();
//     //Route::post('logout','Api\Auth\LoginController@logout');
// });

// Route::middleware('auth:api')->group(function(){
// 	Route::post('logout','Api\V1\Auth\LoginController@logout');
// });


