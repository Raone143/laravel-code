<?php

use Illuminate\Http\Request;


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

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::get('Book', 'BookController@index');
Route::get('displayproduct','BookController@displayproduct');

Route::get('Categoryname','BookController@Categoryname');
Route::post('Book','BookController@store');
Route::get('Book/{id}','BookController@edit');
//productdetails api
Route::get('Productdetails/{id}','Productdata@productdetails');

Route::put('Book/{id}','BookController@update');
Route::delete('Book/{id}','BookController@destroy');

Route::post('login', 'API\UserController@login');
Route::post('register', 'API\UserController@register');
Route::group(['middleware' => 'auth:api'], function(){
Route::post('details', 'API\UserController@details');
});

Route::post('logout', 'API\UserController@logout');
