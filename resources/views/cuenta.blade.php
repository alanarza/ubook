@extends('perfil_base')

@section('title', 'Bienvenido a Ubook')

@section('navbar')

  @parent

@stop

<!--separador-->

@section('titulo')

  @parent

  @section('titulo_pagina', 'Cuenta de Usuario')

@stop

@section('nav_side')

@stop

@section('contenido')

<div class="col-lg-9">
<div class="panel panel-default">
<div class="panel-body">

	<form id="miform" method="POST" action="/gestion_cuenta/" enctype="multipart/form-data">
    <fieldset>

      {!! csrf_field() !!}

		  <div class="form-group col-lg-12" style="margin-top: 10px;">  
        <div class="col-lg-7">
          <label for="foto" style="margin-top: 10px;"><span class="glyphicon glyphicon-camera" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;Foto de Perfil</label>
          <input type="file" accept-charset="UTF-8" class="form-control" name="file" id="foto">

          <label for="nombre" style="margin-top: 10px;"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;Nombre/s</label>
          <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre/s">

          <label for="apellido" style="margin-top: 10px;"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;Apellido/s</label>
          <input type="text" class="form-control" id="apellido" name="apellido" placeholder="Apellido/s">

        </div>

        <div class="col-lg-5" style="margin-top: 10px;">

          <a href="#" class="thumbnail">
          <img style="max-width: 200px; max-heigth: 200px;" src="/storage/{{ $user->foto }}" alt="...">
          </a>

        </div>        
      </div>

      <div class="form-group col-lg-12">

        <div class="form-group col-lg-12">
          <label for="textArea" class="control-label">Descripcion Personal</label>
          <textarea class="form-control" rows="3" id="textArea"></textarea>
          <span class="help-block">Una descripcion personal acerca de ti.. Tus gustos, tus preferencias.</span>
        </div>

        <div class="form-group col-lg-4">
          <label for="inputPassword" class="control-label">Contraseña Antigua</label>
          <input type="password" class="form-control" id="inputPassword" name="password" placeholder="Password">
        </div>

        <div class="form-group col-lg-4">
          <label for="inputPassword" class="control-label">Nueva Contraseña</label>
          <input type="password" class="form-control" id="inputPassword" name="password" placeholder="Password">
        </div>

        <div class="form-group col-lg-4">
          <label for="inputPassword2" class="control-label">Repetir Contraseña</label>
          <input type="password" class="form-control" id="inputPassword2" name="password_confirmation" placeholder="Confirmar Password">
        </div>

      </div>

               
          <button type="reset" class="btn btn-default">Limpiar</button>
          <button type="submit" class="btn btn-primary">Enviar</button>
        

		</fieldset>
  </form>

</div>
</div>
</div>

@stop

@section('side')

	@parent

@stop