<%-- 
    Document   : pruebaDeConocimientos
    Created on : 24/10/2017, 07:21:37 PM
    Author     : developer
--%>

<%@page import="proyectomatematico.modelo.vo.usuarioVo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="recursos/jquery-3.2.1.min (2).js"> </script>
        <script type="text/javascript" src="recursos/bootstrap-3.3.7-dist/js/bootstrap.min.js" ></script>
        <script type="text/javascript" src="js/ajaxUrl.js"></script>
        <link rel="stylesheet" href="recursos/bootstrap-3.3.7-dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="estilos/registroUsuario.css">
        <link rel="stylesheet" href="estilos/InicioSesion.css">
        <link rel="stylesheet" href="estilos/coeficiente.css">
        <link href="https://fonts.googleapis.com/css?family=Indie+Flower" rel="stylesheet">
       <%
    Object obj = request.getSession().getAttribute("usuario");
    usuarioVo usuario = new usuarioVo();
    if (obj == null) {
            response.sendRedirect("index.jsp");
    } else {
        usuario = (usuarioVo) obj;
    }
%>
       
    </head>
    <body onload="sabernivel()">
      
        <input type="text" id="nombre"  value="<%= usuario.getApodo()  %>">
        <h1></h1>
             <nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
    
      <a class="navbar-brand" href="#myPage">Logo cuando se ocurra</a>

      <ul class="nav navbar-nav navbar-left">
          <li>    <a id="ingresar" onclick="href='index.jsp'">Cerrar sesión</a></li>
          <li>  <a id="mostrar" ><%= usuario.getApodo()  %> <li></a>
          
      </ul>
     
    </div>
   
  </div>
</nav>
          <h1 id="saludo">HOLA EMPIEZA A APRENDER EN NUESTROS NIVELES</h1>
          <div id="curso1">
              <h1 id="intro">APRENDE CON NOSOTROS <%=usuario.getApodo()%></h1>
          <iframe id="video" width="260" height="220" src="https://www.youtube.com/embed/VeVhia7WYEI" frameborder="0" allowfullscreen></iframe>
          </div>
        
        <div id="curso" class="container">
        <div id="nivel1" class="container">
            <img id="nivel1" src="imagenes/images.jpg">
            <button id="nivel1" class="btn btn-success"  disabled="true"  onclick="location.href='primerNivel.jsp'">NIVEL 2 - 1 </button>
        </div>
        <div id="nivel2" class="container">
            <img id="nivel2" src="imagenes/descarga.png ">
            <button id="nivel2" class="btn btn-success" disabled="true"onclick="location.href='segundoNivel.jsp'">NIVEL 1 + 1 </button>
        </div>
        <div id="nive2" class="container">
            <img id="nive2" src="imagenes/51596880-Ilustraci-n-de-un-largo-cerebral-sombra-con-un-signo-de-resta-Foto-de-archivo.jpg">
        <button id="nive2" class="btn btn-success" disabled="true">NIVEL 2-1 </button>
        </div>
             <div id="nivel3" class="container">
                 <img id="nivel3" src="imagenes/por.jpg">
        <button id="nivel3" class="btn btn-success" disabled="true">NIVEL 2 + 1 </button>
        </div>
        <div id="nive3" class="container">
            <img id="nive3" src="imagenes/Tabla-de-multiplicar-1.jpg">
        <button id="nive3" class="btn btn-success" disabled="true">NIVEL 3 - 1 </button>
        </div>
             <div id="niv3" class="container">
                 <img id="niv3" src="imagenes/tablapor2.jpg">
        <button id="niv3" class="btn btn-success" disabled="true">NIVEL 5 - 2 </button>
        </div>
            
            
      
        </div>
        
    </body>
</html>
