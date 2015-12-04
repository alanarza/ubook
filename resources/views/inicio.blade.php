@extends('base')

@section('title', 'Bienvenido a Ubook')

@section('navbar')

<!-- Fixed navbar -->
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="/">Ubook</a>

    </div>
    <div id="navbar" class="navbar-collapse collapse">
      

      <form class="navbar-form navbar-left" role="search" method="GET" action="/busqueda">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Nombre Apellido" name="usr" id="apellido">
        </div>
        <button type="submit" class="btn btn-inverse">Buscar</button>
      </form>

      <ul class="nav navbar-nav navbar-right">

        <li class="active"><a href="/inicio">Inicio <span class="sr-only">(current)</span></a></li>
        <li ><a href="/perfil">Perfil <span class="sr-only">(current)</span></a></li>

        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> {{ $user->name }} <span class="caret"></span></a>
          <ul class="dropdown-menu">
          
                <li><a href="/cuenta">Cuenta</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="/auth/logout">Cerrar Sesion</a></li>
            
          </ul>
        </li>
      </ul>
    </div><!--/.nav-collapse -->
  </div>
</nav>

@stop

@section('contenido')

<div class="container">
  <div class="row">

    <div class="col-md-12" >
      


    </div>

  </div>
</div>

@stop