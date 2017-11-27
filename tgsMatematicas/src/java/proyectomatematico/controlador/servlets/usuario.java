/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectomatematico.controlador.servlets;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import proyectomatematico.controlador.dto.saberNivelDto;
import proyectomatematico.modelo.conexion.conector;
import proyectomatematico.modelo.dao.usuarioDao;
import proyectomatematico.modelo.vo.usuarioVo;

/**
 *
 * @author developer
 */
@WebServlet(name = "usuario", urlPatterns = {"/registrar","/sabernivel","/cambiarnivel"})
public class usuario extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
              String url = request.getServletPath();
            switch (url){
            case"/registrar":
                registrar(request,response);
                break;
                case "/sabernivel":
                    sabernivel(request,response,out);
                
        case"/cambiarnivel":
            cambiarnivel(request,response,out);
           break; 
        }
      
        }
    catch(Exception e ){
        
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
        processRequest(request, response);
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
        processRequest(request, response);
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




private void registrar(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        try{
            usuarioVo vo = new usuarioVo();
                   
       
            
            
            
            
            
            String nombre =  request.getParameter("nombreUsuario");
            String nombreLogeo = request.getParameter("nombreLogeo");
            String claveUsuario = request.getParameter("claveUsuario");
            String correoUsuario = request.getParameter("correoUsuario");
        int coeficiente = 0 ; 
            String edad = request.getParameter("edadUsuario");
         int eda = Integer.parseInt(edad);
         Connection cnn = new conector().getCONECCION();
           
            vo.setNombre(nombre);
            vo.setApodo(nombreLogeo);
            vo.setClave(claveUsuario);
            vo.setCorreo(correoUsuario);
            vo.setCoeficiente(coeficiente);
            vo.setEdad(eda);
            usuarioDao dao = new usuarioDao(cnn);
            dao.insertar(vo);
       
            response.sendRedirect("index.jsp");
       

        
        
        
        }
    catch(Exception e  ){
        System.out.println(e);
    }
    }

    private void sabernivel(HttpServletRequest request, HttpServletResponse response ,PrintWriter out) throws SQLException {
    saberNivelDto saber = new saberNivelDto();
    try{    
    String nombre = request.getParameter("nombre");
       
    Connection cnn = new conector().getCONECCION();
    usuarioDao dao = new usuarioDao(cnn);
    usuarioVo vo = dao.sabernivel(nombre);
    saber.setSabernivel(vo.getCoeficiente());
    
    
   
    }
    catch(Exception e)
    {}
         
         
     response.setContentType("aplication/json");
        String json = new Gson().toJson(saber);
      out.print(json);
      
    }

    private void cambiarnivel(HttpServletRequest request, HttpServletResponse response, PrintWriter out) throws SQLException {
        
        String nivel = request.getParameter("nivel");
        
    int nive = Integer.parseInt(nivel);
    String nombre = request.getParameter("nombre");
    
        
    Connection cnn = new conector().getCONECCION();
    
    usuarioDao dao = new usuarioDao(cnn);
   
    usuarioVo vo = dao.cambiarnivel(nive, nombre);
         
     
 
    }



}

