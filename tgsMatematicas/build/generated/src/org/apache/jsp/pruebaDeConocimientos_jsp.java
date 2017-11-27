package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class pruebaDeConocimientos_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <script type=\"text/javascript\" src=\"recursos/jquery-3.2.1.min (1).js\"> </script>\n");
      out.write("        <script type=\"text/javascript\" src=\"recursos/bootstrap-3.3.7-dist/js/bootstrap.min.js\" ></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"recursos/bootstrap-3.3.7-dist/css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"estilos/registroUsuario.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"estilos/InicioSesion.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"estilos/coeficiente.css\">\n");
      out.write("       \n");
      out.write("       \n");
      out.write("    </head>\n");
      out.write("    <body >\n");
      out.write("        \n");
      out.write("             <nav class=\"navbar navbar-default navbar-fixed-top\">\n");
      out.write("  <div class=\"container\">\n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("    \n");
      out.write("      <a class=\"navbar-brand\" href=\"#myPage\">Logo cuando se ocurra</a>\n");
      out.write("\n");
      out.write("      <ul class=\"nav navbar-nav navbar-left\">\n");
      out.write("          <li>    <a id=\"ingresar\" onclick=\"href=index.jsp\">Cerrar sesión</a></li>\n");
      out.write("          \n");
      out.write("      </ul>\n");
      out.write("     \n");
      out.write("    </div>\n");
      out.write("   \n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("        \n");
      out.write("        <div id=\"curso\" class=\"container\">\n");
      out.write("        <div id=\"nivel1\" class=\"container\">\n");
      out.write("            <img id=\"nivel1\" src=\"imagenes/images.jpg\">\n");
      out.write("        <button id=\"nivel1\" class=\"btn btn-success\">NIVEL 2 - 1 </button>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"nivel2\" class=\"container\">\n");
      out.write("            <img id=\"nivel2\" src=\"imagenes/descarga.png \">\n");
      out.write("        <button id=\"nivel2\" class=\"btn btn-success\">NIVEL 1 + 1 </button>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"nive2\" class=\"container\">\n");
      out.write("            <img id=\"nive2\" src=\"imagenes/51596880-Ilustraci-n-de-un-largo-cerebral-sombra-con-un-signo-de-resta-Foto-de-archivo.jpg\">\n");
      out.write("        <button id=\"nive2\" class=\"btn btn-success\">NIVEL 2-1 </button>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
