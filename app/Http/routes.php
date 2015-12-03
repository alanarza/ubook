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
Route::resource('perfil_publico','PerfilController@publico');
Route::resource('ubooks_publico','UbooksController@publico');
Route::get('/busqueda/{usr}','BusquedaController@busquedaUsuario');


// Rutas protegidas
$router->group(['middleware' => ['auth']], function()
{
	Route::resource('inicio','IndexController@inicio');
	Route::resource('perfil','PerfilController');
	Route::resource('ubooks','UbooksController');
	Route::resource('book_vista','UbooksController@vista');
	Route::resource('favoritos','FavoritosController');
    Route::resource('cuenta','PerfilController@cuenta');
    Route::post('gestion_cuenta','GestionCuentaController@save');
});

// Rutas protegidas if authenticated
$router->group(['middleware' => ['guest']], function()
{
	Route::resource('/','IndexController');
});

// Rutas de almacenamiento

// Ruta para obtener archivos
Route::get('storage/{archivo}', function ($archivo) {
     $public_path = public_path();
     $url = $public_path.'/storage/'.$archivo;
     //verificamos si el archivo existe y lo retornamos
     if (Storage::exists($archivo))
     {
       return response()->download($url);
     }
     //si no se encuentra lanzamos un error 404.
     abort(404);

});

// Ruta para subir archivos
//Route::post('storage/create', 'StorageController@save');