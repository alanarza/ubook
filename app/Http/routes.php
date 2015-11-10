<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

// Rutas de login
Route::post('auth/login', 'Auth\AuthController@postLogin');
Route::get('auth/logout', 'Auth\AuthController@getLogout');

// Rutas de registro
Route::post('auth/register', 'Auth\AuthController@postRegister');

// Rutas publicas
Route::resource('/','IndexController');
Route::resource('perfil_publico','PerfilController@publico');
Route::resource('ubooks_publico','UbooksController@publico');

// Rutas protegidas
$router->group(['middleware' => ['auth']], function()
{
	Route::resource('inicio','IndexController@inicio');
	Route::resource('perfil','PerfilController');
	Route::resource('ubooks','UbooksController');
	Route::resource('favoritos','FavoritosController');
});