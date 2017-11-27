<%-- 
    Document   : InicioSesion
    Created on : 20-ago-2017, 16:49:50
    Author     : developer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <script type="text/javascript" src="recursos/jquery-3.2.1.min (1).js"> </script>
        <link rel="stylesheet" href="recursos/bootstrap-3.3.7-dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="estilos/InicioSesion.css">
        <script type="text/javascript" src="recursos/bootstrap-3.3.7-dist/js/bootstrap.min.js" ></script>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

   
<title>Mundo math</title>
    </head>
    <body>
     
        <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage">Logo cuando se ocurra</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
<!--         modal de ingresar -->

          <li>    <a id="ingresar" data-toggle="modal" data-target="#myModal">Ingresar</a></li>
               
  <!-- Modal del <a id="ingresar"> -->
  
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Contenido del modal-->
      
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Ingresa a esta aventura</h4>
        </div>
        <div class="modal-body">
            <form action="validarsesion" method="post" autocomplete="off">
                <p> Ingresa tu nombre de usuario</p>
                <input id="ideUsuario" class="form-control" name="idUsuario" type="text" placeholder="Ingresa tu nombre de usuario" required="true">
                <p>Ingresa tu contraseña de usuario</p>
                <input id="contraseñaUsuario" class="form-control" name="clave" type="password" placeholder="Ingresa tu contraseña" required="true">
                <div id="botonesRegistro">
                    <a id="btnRegistrarse" type="button" href="registroUsuario.jsp">Registrarse</a>
               
                    <button id="btnEnviar"  type="submit" >Ingresar</button>
                </div>
            </form>
       
      </div>
      
    </div>
  </div>
  </div>
      </ul>
    </div>
  </div>

   
   
</nav>


    <img src="imagenes/fondo.png"  width="1350" height="660"  >
  

<!-- Container (About Section) -->
<div id="about" class="container-fluid">
  <div class="row">
    <div class="col-sm-8">
      <h2>lectura</h2><br>
      <h4>Los congresistas de la Anapo llegaron a sacar al senador Luis Ignacio ‘Nacho’ Vives, quien promovía un debate contra el general Gustavo Rojas Pinilla. Los ánimos se caldearon. 

Varios espectadores se lanzaron desde las barras del Senado y se enfrentaron con congresistas y asesores, en medio de insultos y amenazas. Los de la Anapo se paseaban por todo el recinto con sus armas desenfundadas, mientras 5 policías que prestaban guardia miraban impotentes. 
</h4><br>
<p>Los congresistas de la Anapo llegaron a sacar al senador Luis Ignacio ‘Nacho’ Vives, quien promovía un debate contra el general Gustavo Rojas Pinilla. Los ánimos se caldearon. 

Varios espectadores se lanzaron desde las barras del Senado y se enfrentaron con congresistas y asesores, en medio de insultos y amenazas. Los de la Anapo se paseaban por todo el recinto con sus armas desenfundadas, mientras 5 policías que prestaban guardia miraban impotentes. 
</p>     
<br><button class="btn btn-default btn-lg" onclick="window.location.href='registroUsuario.jsp'" >registrarse</button>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-signal logo"></span>
    </div>
  </div>
</div>



<!-- Container (Services Section) -->
<div id="services" class="container-fluid text-center">
  <h2>Logros</h2>
  <h4>texto texto texto</h4>
  <br>
  <div class="row slideanim">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-off logo-small"></span>
      <h4>Logors</h4>
      <p>Rexto texto texto texto</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-heart logo-small"></span>
      <h4>Logors</h4>
      <p>Rexto texto texto texto</p>  
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-lock logo-small"></span>
     <h4>Logors</h4>
      <p>Rexto texto texto texto</p>
    </div>
  </div>
  <br><br>
  <div class="row slideanim">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-leaf logo-small"></span>
      <h4>Logors</h4>
      <p>Rexto texto texto texto</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-certificate logo-small"></span>
      <h4>Logors</h4>
      <p>Rexto texto texto texto</p> 
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-wrench logo-small"></span>
       <h4>Logors</h4>
      <p>Rexto texto texto texto</p></div>
  </div>
</div>


  
  


<!-- Container (Contact Section) -->
<div id="contact" class="container-fluid bg-grey">
  <h2 class="text-center">Contactanos</h2>
  <div class="row">
    <div class="col-sm-5">
      <p>Puedes contactarnos en la siguiente informacion.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Bogotá, Colombia</p>
      <p><span class="glyphicon glyphicon-phone"></span>+57 3024554813. +57 3138572883</p>
      <p><span class="glyphicon glyphicon-envelope"></span> ram.v98@hotmail.com</p>
    </div>
    <div class="col-sm-7 slideanim">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Nombre" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="comentario" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-default pull-right" type="submit">Enviar</button>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Add Google Maps -->

<footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>Desarrolado por -valentina martínez y Raphael Martínez  </p>
</footer>

<script>
$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
  
  $(window).scroll(function() {
    $(".slideanim").each(function(){
      var pos = $(this).offset().top;

      var winTop = $(window).scrollTop();
        if (pos < winTop + 600) {
          $(this).addClass("slide");
        }
    });
  });
})
</script>


    </body>
</html>
