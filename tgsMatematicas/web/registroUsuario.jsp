<%-- 
    Document   : newjsp
    Created on : 3/10/2017, 06:27:54 PM
    Author     : developer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
     <script type="text/javascript" src="recursos/jquery-3.2.1.min (1).js"> </script>
        <link rel="stylesheet" href="recursos/bootstrap-3.3.7-dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="estilos/registroUsuario.css">
        <link rel="stylesheet" href="estilos/InicioSesion.css">
        <script type="text/javascript" src="recursos/bootstrap-3.3.7-dist/js/bootstrap.min.js" ></script>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrarse</title>
    </head>
    <body>
        <nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
    
      <a class="navbar-brand" href="#myPage">Logo cuando se ocurra</a>
    </div>
   
  </div>
</nav>
        <div >
            <img id = "imagenRegistro" src="imagenes/tablet-computers-in-kindergarten.jpg">
        <div id="conjuntoRegistro" class="modal-content">
            <div class="modal-body">
                <form action="registrar" method="post" autocomplete="off">
                <p>Escribe tu nombre</p>
                <input class="form-control" name="nombreUsuario" id="nombreUsuario" type="text" placeholder="Escribe tu nombre" required="true">
                <p>Escribe un nombre de usuario con el cual entraras<p>
                <input class="form-control" name="nombreLogeo" id="nombreLogeo" type="text" placeholder="Escribe tu nombre de usuario para ingresar" required="true">
                <p>Escribe tu contraseña</p>
                <input class="form-control" name="claveUsuario" id="claveUsuario" type="password" placeholder="Escribe tu contraseña de usuario" required="true">
                <p>Escribe tu correo electronico</p>
                      
                <input class="form-control" name="correoUsuario" id="correoUsuario" type="email" placeholder="Escribe correo electronico" required="true">
                <p>Escribe tu edad</p>
                <input class="form-control" name="edadUsuario" id="edadUsuario" type="number" placeholder="Escribe tu edad">
                <button id="botonRegresar"  onclick="location.href='index.jsp'">Regresar a inicio</button>
           
                <button id="botonRegistra" type="submit">Registrarse</button>
            </form>
            </div>
            </div>  
        </div>
      
    </body>
</html>
