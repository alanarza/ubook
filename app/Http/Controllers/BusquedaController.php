<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use DB;
use App\User;

class BusquedaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    public function busquedaUsuario(Request $req){
        
        $term = $req->input('usr');
        $user = Auth::user();

        $queries = DB::table('users')
            ->where('nombre', 'LIKE', '%'.$term.'%')
            ->orWhere('apellido', 'LIKE', '%'.$term.'%')
            ->orWhere('name', 'LIKE', '%'.$term.'%')
            ->paginate(5);


        return view('busqueda_usuario', compact('queries','user'));
        
    }

    /*
    $term = Input::get('term');
        
        $results = array();
        
        $queries = DB::table('users')
            ->where('nombre', 'LIKE', '%'.$term.'%')
            ->orWhere('apellido', 'LIKE', '%'.$term.'%')
            ->take(5)->get();
    
        foreach ($queries as $query)
        {
            $results[] = [ 'id' => $query->id, 'value' => $query->nombre.' '.$query->apellido ];
        }
        return Response::json($results);
    */

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
