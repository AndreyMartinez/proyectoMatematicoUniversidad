<%-- 
    Document   : primerNivel
    Created on : 25/10/2017, 08:32:31 PM
    Author     : developer
--%>

<%@page import="proyectomatematico.modelo.vo.usuarioVo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript" src="recursos/jquery-3.2.1.min (1).js"> </script>
        <script type="text/javascript" src="recursos/bootstrap-3.3.7-dist/js/bootstrap.min.js" ></script>
        
        <link rel="stylesheet" href="recursos/bootstrap-3.3.7-dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="estilos/registroUsuario.css">
        <link rel="stylesheet" href="estilos/InicioSesion.css">
        <link rel="stylesheet" href="estilos/coeficiente.css">
        <link rel="stylesheet" href="estilos/primerNivel.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
    <body>
        
        <input type="button" id="nombre"  value="<%= usuario.getApodo()  %>">
        
          <nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
        
    
      <a class="navbar-brand" href="#myPage">Logo cuando se ocurra</a>

      <ul class="nav navbar-nav navbar-left">
          <li>    <a id="ingresar" onclick="href='index.jsp'">Cerrar sesión</a></li>
          <li>  <a id="mostrar" onclick="href='pruebaDeConocimientos.jsp'"><%= usuario.getApodo()  %> regresa</a><li>
    
      
      
      </ul>
     
    </div>
   
  </div>
</nav>
        <div>
      <iframe width="100%" height="600px" src="https://www.youtube.com/embed/_ZaWeXLnl5s" frameborder="0" allowfullscreen></iframe>     
        </div>
      <div>
          <h1 id="mensaje"> RESPONDE, APRENDE Y CONTINUA </h1>
          <h4 id="bombillo">Si  el bombillo se prende tu respuestá fue correcta de lo contrario corrigelo</h4>
      </div>
      
      
      
      
     <div class="panel-group" id="accordion">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">
        Pregunta numero 1 </a>
      </h4>
    </div>
    <div id="collapse1" class="panel-collapse collapse in">
      <div class="panel-body">
          
           <img id="myImage" src="imagenes/pic_bulboff.gif" style="width:100px">
<img id="signosuma" src="imagenes/signo_suma.jpg">
<h4 id="txtsuma"> ¿su nombre se lee como plus o suma ?</h4>
<form id="preguntauno">
   
        <label class="radio-inline"><input type="radio" name="optradio" onclick="document.getElementById('myImage').src='imagenes/pic_bulboff.gif'">falso</label>
<label class="radio-inline"><input type="radio" name="optradio" onclick="document.getElementById('myImage').src='imagenes/picbul.png'">verdadero</label>
</form>
      </div>
     
          
          
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">
        pregunta numero 2</a>
      </h4>
    </div>
    <div id="collapse2" class="panel-collapse collapse">
      <div class="panel-body">
            
           <img id="myImages" src="imagenes/pic_bulboff.gif" style="width:100px">
           <img id="signoresta" src="imagenes/menos.png">
<h4 id="txtsuma"> ¿su nombre se lee como divide o dividendo ?</h4>
<form id="preguntauno">
   
        <label class="radio-inline"><input type="radio" name="optradio" onclick="document.getElementById('myImages').src='imagenes/pic_bulboff.gif'">verdadero</label>
<label class="radio-inline"><input type="radio" name="optradio" onclick="document.getElementById('myImages').src='imagenes/picbul.png'">falso</label>
</form>
          
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">
        pregunta numero 3</a>
      </h4>
    </div>
    <div id="collapse3" class="panel-collapse collapse">
        <div class="panel-body">
            
              
           <img id="myImagess" src="imagenes/pic_bulboff.gif" style="width:100px">
           <img id="signosuma" src="imagenes/por.jpg">
<h4 id="txtsuma"> ¿su nombre se lee multiply o multiplicación ?</h4>
<form id="preguntauno">
   
        <label class="radio-inline"><input type="radio" name="optradio" onclick="document.getElementById('myImagess').src='imagenes/pic_bulboff.gif'">falso</label>
<label class="radio-inline"><input type="radio" name="optradio" onclick="document.getElementById('myImagess').src='imagenes/picbul.png'">verdadero</label>

<a id ="hola"> TERMINAR MI PRIMER NIVEL</a>
</form>


              
     
        </div>
    </div>
  </div>
      
    
      
 
      
      
      
     </div>


 </div>
      
    <script>
    
    var editar={
  "init":function (){
      var nombre = $('#nombre').val();
      console.log(nombre);
     $('#hola').on('click',editar.edit);
  } ,"edit":function (e){
             console.log("entro");
      var nivel = 1;
      var nombre = $('#nombre').val();
      
  
      $.ajax({
          'url':'cambiarnivel',
          'type':'post',
          'data':{'nivel':nivel, 'nombre':nombre},
          'success':function (data){
          location.href="pruebaDeConocimientos.jsp";
          },
          'beforeSend':function (){
               
          },error:function (e){
              console.log(e);
          }
      })
  } 
};
editar.init();
    
    
</script>
        
    </body>
</html>
