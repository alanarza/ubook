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

Route::get('/', function () {
    return view('index');
});

Route::get('/perfil', function () {
    return view('perfil');
});

Route::get('/ubooks', function () {
    return view('ubooks');
});

Route::get('/favoritos', function () {
    return view('favoritos');
});

Route::resource('books','BookController');