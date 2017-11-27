<%-- 
    Document   : segundoNivel
    Created on : 30/10/2017, 11:20:14 AM
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
        <link rel="stylesheet" href="estilos/segundoNivel.css">
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
      <iframe width="100%" height="600px" src="https://www.youtube.com/embed/VeVhia7WYEI" frameborder="0" allowfullscreen></iframe>     
        </div>
      <div>
          <h1 id="mensaje"> RESPONDE, APRENDE Y CONTINUA </h1>
          <h4 id="bombillo">Si  tu respuesta es correcta pon feliz a micky de lo contrario corrigelo </h4>
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
          
          <img id="myImage" src="imagenes/mickycentro.jpg" style="width:100px">
           <img id="signosuma" src="imagenes/preguntasuma1.png">
<h4 id="txtsuma"> ¿su resultado es 4  ?</h4>
<form id="preguntauno">
   
        <label class="radio-inline"><input type="radio" name="optradio" onclick="document.getElementById('myImage').src='imagenes/mickycorrecto.jpg-large'">verdadero</label>
<label class="radio-inline"><input type="radio" name="optradio" onclick="document.getElementById('myImage').src='imagenes/mickymal.jpg'">falso</label>
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
            
          <img id="myImages" src="imagenes/mickycentro.jpg" style="width:100px">
          <img id="signosuma" height="300px" width="250px" src="imagenes/dora.jpg">
<h4 id="txtsuma"> ¿hay 8 personajes  ?</h4>
<form id="preguntauno">
   
        <label class="radio-inline"><input type="radio" name="optradio" onclick="document.getElementById('myImages').src='imagenes/mickymal.jpg'">verdadero</label>
<label class="radio-inline"><input type="radio" name="optradio" onclick="document.getElementById('myImages').src='imagenes/mickycorrecto.jpg-large'">falso</label>
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
            
              
     <img id="myImagess" src="imagenes/mickycentro.jpg" style="width:100px">
     <img id="signosuma" height="300px" width="250px" src="imagenes/manzanas.png">
<h4 id="txtsuma"> ¿Su resultado es correcto  ?</h4>
<form id="preguntauno">
   
        <label class="radio-inline"><input type="radio" name="optradio" onclick="document.getElementById('myImagess').src='imagenes/mickymal.jpg'">falso</label>
<label class="radio-inline"><input type="radio" name="optradio" onclick="document.getElementById('myImagess').src='imagenes/mickycorrecto.jpg-large'">verdadero</label>

        
<a id ="hola"> TERMINAR LA PRIMERA PARTE DE MI SEGUNDO NIVEL</a>
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
