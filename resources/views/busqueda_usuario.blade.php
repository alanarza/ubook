@extends('perfil_base')

@section('title', 'Bienvenido a Ubook')

@section('navbar')

  @parent

@stop

<!--separador-->

@section('titulo')

  @parent

  @section('titulo_pagina', 'Busqueda de Usuarios')

  <div class="container">
               @if (count($errors) > 0)
        <div class="alert alert-warning" role="alert">
      <ul>
              <strong>Oops! Something went wrong : </strong>
          @foreach ($errors->all() as $error)
        <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
</div>

@stop

@section('nav_side')

@stop

@section('contenido')

<div class="col-lg-9">
<div class="panel panel-default">
<div class="panel-body">

<div class="row">

@foreach ($queries as $usuario)
<a href="/user/{{ $usuario->name }}">
<div class="col-lg-6">
    <div class="well">

      <div class="media">
      <div class="media-left media-top">
        
          <img class="media-object" style="max-width: 60px; max-heigth: 60px;"  src="/storage/{{ $usuario->foto }}" alt="...">
        
      </div>
      <div class="media-body">
        <h4 class="media-heading">{{ $usuario->nombre }} {{ $usuario->apellido }}</h4>

          {{ $usuario->descripcion }}


        <h5>  {{ $usuario->name }} </h5>

      </div>
    </div>

  </div>
</div>
</a>

@endforeach

{!! $queries->render() !!}

</div>

</div>
</div>
</div>

@stop

@section('side')

	@parent

@stop