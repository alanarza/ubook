<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class IndexController extends Controller
{
	public function index()
	{
		return view('index');
	}

	public function inicio()
	{
		$user = Auth::user();
		return view('inicio',compact('user'));
	}

}
