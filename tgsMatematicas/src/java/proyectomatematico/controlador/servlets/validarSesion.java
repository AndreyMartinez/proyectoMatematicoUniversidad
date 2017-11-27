/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectomatematico.controlador.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import proyectomatematico.modelo.conexion.conector;
import proyectomatematico.modelo.dao.administradorDao;
import proyectomatematico.modelo.dao.usuarioDao;
import proyectomatematico.modelo.vo.adminstradorVo;
import proyectomatematico.modelo.vo.usuarioVo;

/**
 *
 * @author developer
 */
@WebServlet(name = "validarSesion", urlPatterns = {"/validarsesion","/cerrarsesion"})
public class validarSesion extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
            String url = request.getServletPath();
              System.out.println(url);
            switch(url){
                case "/validarsesion":
                    validarsesion(request,response);
                    break;
                case "/cerrarsesion":
                    consultar(request,response , out);
                            break;
            }
          
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(validarSesion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(validarSesion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>



    private void validarsesion(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
   try{
        Connection cnn = new conector().getCONECCION();
    String correo = request.getParameter("idUsuario");
    String clave = request.getParameter("clave");
    administradorDao dao = new administradorDao(cnn);
    adminstradorVo vo = dao.autenticar(correo, clave);
   
       usuarioDao usuariodao = new usuarioDao(cnn);
 usuarioVo usuvo = usuariodao.iniciarSesion(correo, clave);
    
    if(vo != null){
        response.sendRedirect("pruebaDeConocimientos.jsp");
        System.out.println(vo);
    }
    else if (usuvo != null){
        response.sendRedirect("pruebaDeConocimientos.jsp");
        request.getSession().setAttribute("usuario", usuvo);
    }
  
    else {
    response.sendRedirect("index.jsp");
    }
   
       System.out.println(correo+" "+ clave);
   
    
    }
   catch(Exception e){
       System.out.println(e);
   }
    }

    private void consultar(HttpServletRequest request, HttpServletResponse response, PrintWriter out) throws IOException {
        request.getSession().invalidate();
        response.sendRedirect("index.jsp");
    
        
    }

   

}
