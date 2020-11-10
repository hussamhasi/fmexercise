<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('login', 'App\Http\Controllers\AuthController@login');
Route::post('signup', 'App\Http\Controllers\AuthController@signup');

Route::group([
    'middleware' => 'auth:api'
], function() {
    Route::get('logout', 'App\Http\Controllers\AuthController@logout');
    Route::get('user', 'App\Http\Controllers\AuthController@user');
    Route::group(['prefix' => 'companies', 'namespace' => 'App\Http\Controllers'], function(){
        //
        Route::post('', 'CompaniesController@store');
        Route::get('', 'CompaniesController@index');
        Route::get('search', 'CompaniesController@search');
        Route::get('{company}', 'CompaniesController@show');
        Route::post('{company}', 'CompaniesController@update');
    });
});
