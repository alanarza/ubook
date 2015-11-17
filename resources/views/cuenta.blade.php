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

	<form id="miform" method="POST" action="{{ url("auth/register") }}">
        <fieldset>

        {!! csrf_field() !!}

		<div class="form-group">
          <label for="nomUsuario" class="col-lg-3 control-label">Foto de Perfil</label>
          <div class="col-lg-9">
            <input type="file" class="form-control" name="file" >
          </div>
        </div>

		</fieldset>
    </form>

</div>
</div>
</div>

@stop

@section('side')

	@parent

@stop