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
		      <img class="media-object" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iNjQiIGhlaWdodD0iNjQiIHZpZXdCb3g9IjAgMCA2NCA2NCIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+PCEtLQpTb3VyY2UgVVJMOiBob2xkZXIuanMvNjR4NjQKQ3JlYXRlZCB3aXRoIEhvbGRlci5qcyAyLjYuMC4KTGVhcm4gbW9yZSBhdCBodHRwOi8vaG9sZGVyanMuY29tCihjKSAyMDEyLTIwMTUgSXZhbiBNYWxvcGluc2t5IC0gaHR0cDovL2ltc2t5LmNvCi0tPjxkZWZzPjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+PCFbQ0RBVEFbI2hvbGRlcl8xNTAzN2UyM2Y5ZCB0ZXh0IHsgZmlsbDojQUFBQUFBO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1mYW1pbHk6QXJpYWwsIEhlbHZldGljYSwgT3BlbiBTYW5zLCBzYW5zLXNlcmlmLCBtb25vc3BhY2U7Zm9udC1zaXplOjEwcHQgfSBdXT48L3N0eWxlPjwvZGVmcz48ZyBpZD0iaG9sZGVyXzE1MDM3ZTIzZjlkIj48cmVjdCB3aWR0aD0iNjQiIGhlaWdodD0iNjQiIGZpbGw9IiNFRUVFRUUiLz48Zz48dGV4dCB4PSIxMy40Njg3NSIgeT0iMzYuNSI+NjR4NjQ8L3RleHQ+PC9nPjwvZz48L3N2Zz4=" alt="...">
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