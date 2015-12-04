@extends('perfil_base')

@section('title', 'Bienvenido a Ubook')

@section('navbar')

  @parent

@stop

<!--separador-->

@section('titulo')

<div class="row">
    <div class="col-lg-12">
        <div class="page-header">
            <h1 id="type"> Perfil de {{ $queries->nombre }} </h1>
        </div>
    </div>
  </div>

@stop

@section('nav_side')

<div class="col-lg-3">
  <a href="#" class="thumbnail">
  <img style="max-width: 200px; max-heigth: 200px;" src="/storage/{{ $queries->foto }}" alt="...">
  </a>

  <div class="list-group">
    <a href="/perfil" class="list-group-item active"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;&nbsp;
      Mi Perfil
    </a>
    <a href="/ubooks" class="list-group-item"><span class="glyphicon glyphicon-book" aria-hidden="true"></span>&nbsp;&nbsp;
      Mis Ubooks
    </a>
    <a href="/favoritos" class="list-group-item"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>&nbsp;&nbsp;
      Mis Favoritos <span class="badge">2</span>
    </a>
  </div>
</div>

@stop

@section('contenido')

<div class="col-lg-6">
<div class="panel panel-default">
  <div class="panel-body">

    <h3>Aca va la actividad</h3>

</div>
</div>
</div>

@stop

@section('side')

  @parent

@stop