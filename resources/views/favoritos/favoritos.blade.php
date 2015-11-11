@extends('perfil_base')

@section('title', 'Bienvenido a Ubook')

@section('navbar')

  @parent

@stop

<!--separador-->

@section('titulo')

  @parent

  @section('titulo_pagina', 'Mis Favoritos')

@stop

@section('nav_side')

  @parent

  @section('active3', 'active')

@stop

@section('contenido')

<div class="col-lg-6">
<div class="panel panel-default">
  <div class="panel-body">

<!--Inicio del Body-->

  

<!--Fin del Body-->

</div>
</div>
</div>

@stop

@section('side')

  @parent

@stop