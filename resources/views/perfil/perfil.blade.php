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
            <h1 id="type"> Bienvenido {{ $user->nombre }} </h1>
        </div>
    </div>
  </div>

@stop

@section('nav_side')

  @parent

  @section('active1', 'active')

@stop

@section('contenido')

<div class="col-lg-6">
<div class="panel panel-default">
  <div class="panel-body">
@foreach ($noticias as $noticia)

  	<div class="well">

  		<div class="media">
		  <div class="media-left media-top">
		    <a href="#">
		      <img class="media-object" style="max-width: 60px; max-heigth: 60px;"  src="/storage/{{ $user->foto }}" alt="...">
		    </a>
		  </div>
		  <div class="media-body">
		    <h4 class="media-heading">{{ $noticia->titulo }}</h4>

		    	{{ $noticia->resumen }}

		    <h5>	{{ $noticia->autorObj->name }} </h5>

		  </div>
		</div>

	</div>

@endforeach

{!! $noticias->render() !!}
</div>
</div>
</div>

@stop

@section('side')

  @parent

@stop