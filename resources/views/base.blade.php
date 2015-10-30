<!DOCTYPE html>
<html lang="es">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>@yield('title')</title>

    <!-- Bootstrap -->
  {!! Html::style('assets/css/bootstrap.min.css') !!}

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

	  <style type="text/css">

      .navbar-inverse {
  background-color: #454545;
  border-color: #e7e7e7;
}
.navbar-inverse .navbar-brand {
  color: #ffffff;
}
.navbar-inverse .navbar-brand:hover, .navbar-inverse .navbar-brand:focus {
  color: #a7a7a7;
}
.navbar-inverse .navbar-text {
  color: #ffffff;
}
.navbar-inverse .navbar-nav > li > a {
  color: #ffffff;
}
.navbar-inverse .navbar-nav > li > a:hover, .navbar-inverse .navbar-nav > li > a:focus {
  color: #a7a7a7;
}
.navbar-inverse .navbar-nav > .active > a, .navbar-inverse .navbar-nav > .active > a:hover, .navbar-inverse .navbar-nav > .active > a:focus {
  color: #a7a7a7;
  background-color: #e7e7e7;
}
.navbar-inverse .navbar-nav > .open > a, .navbar-inverse .navbar-nav > .open > a:hover, .navbar-inverse .navbar-nav > .open > a:focus {
  color: #a7a7a7;
  background-color: #e7e7e7;
}
.navbar-inverse .navbar-toggle {
  border-color: #e7e7e7;
}
.navbar-inverse .navbar-toggle:hover, .navbar-inverse .navbar-toggle:focus {
  background-color: #e7e7e7;
}
.navbar-inverse .navbar-toggle .icon-bar {
  background-color: #ffffff;
}
.navbar-inverse .navbar-collapse,
.navbar-inverse .navbar-form {
  border-color: #ffffff;
}
.navbar-inverse .navbar-link {
  color: #ffffff;
}
.navbar-inverse .navbar-link:hover {
  color: #a7a7a7;
}

@media (max-width: 767px) {
  .navbar-inverse .navbar-nav .open .dropdown-menu > li > a {
    color: #ffffff;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > li > a:hover, .navbar-inverse .navbar-nav .open .dropdown-menu > li > a:focus {
    color: #a7a7a7;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a, .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a:hover, .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a:focus {
    color: #a7a7a7;
    background-color: #e7e7e7;
  }
}

      body {
        min-height: 250px;
        padding-top: 70px;
      }

    </style>


</head>

<body>
<div class="container">
  <div class="row">

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
          

          <form class="navbar-form navbar-left" role="search">
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Ubooks">
          </div>
          <button type="submit" class="btn btn-inverse">Buscar</button>
        </form>

          <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> Iniciar Sesion <span class="caret"></span></a>
              <ul class="dropdown-menu">
               <fieldset>

                <div class="form-group">

                  <form action="login" method="post">
                    
                    <div class="form-group">
                      <div class="col-lg-12">
                        <input type="text" class="form-control input-sm" id="user" name="user" placeholder="Usuario" required>
                      </div>
                    </div>

                    <div class="form-group" >
                      <div class="col-lg-12" style="margin-top: 5px;">
                        <input type="password" class="form-control input-sm" id="pass" name="pass" placeholder="Contraseña" required>
                      </div>
                    </div>

                    <div class="col-sm-12" align="center"  style="margin-top: 10px;">         
                      <button type="submit" class="btn btn-success btn-sm">Ingresar</button>
                    </div>

                  </form>

                </div>
              </fieldset>
              </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

  @show

  @section('contenido')

  @show

  </div>
</div>

  {!! Html::script('assets/js/jquery-2.1.4.min.js') !!}
  {!! Html::script('assets/js/bootstrap.min.js') !!}

</body>
</html>