@extends('perfil_base')

@section('title', 'Bienvenido a Ubook')

@section('navbar')

  @parent

@stop

<!--separador-->

@section('nav_side')

  @parent

  @section('titulo_pagina', 'Mis Ubook')
  @section('active2', 'active')

@stop

@section('contenido')

<div class="col-lg-6">
<div class="panel panel-default">
  <div class="panel-body">



<a href="#" class="btn btn-sm btn-default"> <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Nuevo</a>
<a href="#" class="btn btn-sm btn-primary"> <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Editar</a>
<a href="#" class="btn btn-sm btn-warning"> <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Borrar</a>
<hr>

<!--Inicio del Body-->

  

<!--Fin del Body-->

</div>
</div>
</div>

@stop

@section('side')

  @parent

@stop