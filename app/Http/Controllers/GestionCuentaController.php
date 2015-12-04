<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Support\Facades\Auth;

class GestionCuentaController extends Controller
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

    public function save(Request $request)
    {

        $this->validate($request, [
            'nombre'    => 'alpha|max:255',
            'apellido'  => 'alpha|max:255',
            'password'  => 'confirmed|min:6',
            'oldpassword'  => 'min:6',
        ]);
 
        $usuarioid = Auth::user();

        $user = User::find($usuarioid->id);

        if($request->file('file') != "")
        {
            //obtenemos el campo file definido en el formulario
            $file = $request->file('file');

            $extencion = substr($file->getClientOriginalName(), -4); 

            $nombre = $usuarioid->name.$extencion;

            $user->foto = $nombre;

           //indicamos que queremos guardar un nuevo archivo en el disco local
           \Storage::disk('local')->put($nombre,  \File::get($file));
        }
        
        if($request->input('nombre') != "")
        {
            $user->nombre = $request->input('nombre');
        }

        if($request->input('apellido') != "")
        {
            $user->apellido = $request->input('apellido');
        }

        if($request->input('descripcion') != "")
        {
            $user->descripcion = $request->input('descripcion');
        }


        /*
        if($request->input('oldpassword') != "" && $request->input('password') != "" && $request->input('password_confirmation') != "")
        {
            if(bcrypt($request->input('oldpassword')) == $user->password)
            {
                $user->password = bcrypt($request->input('password'));
            }

        }
        else
        {
            return redirect('cuenta')
                ->withErrors('Complete todos los campos password');
        }
        */

        $user->save();

       return redirect('perfil');
    }

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
