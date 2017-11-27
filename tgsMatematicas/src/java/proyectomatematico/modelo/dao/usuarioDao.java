
package proyectomatematico.modelo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import proyectomatematico.modelo.conexion.conector;
import proyectomatematico.modelo.generico.Igenerico;
import proyectomatematico.modelo.vo.usuarioVo;


public class usuarioDao implements Igenerico<usuarioVo>{
    
 private Connection cnn;

    public usuarioDao(Connection cnn) {
    this.cnn = cnn;    
    }

    @Override
    public void insertar(usuarioVo vo) {
     
     try {
         conector  co= new conector(); 
      PreparedStatement    pst = co.getCONECCION().prepareStatement("INSERT INTO usuarios (nombre , nombre_usuario ,correo,clave,coeficiente,edad) VALUES (?,?,?,?,?,?) ");
     
     int i = 1;
     pst.setString(i++, vo.getNombre());
     pst.setString(i++, vo.getApodo());
     pst.setString(i++, vo.getCorreo());
     pst.setString(i++, vo.getClave());
     pst.setInt(i++, vo.getCoeficiente());
     pst.setInt(i, vo.getEdad());    
     if(pst.executeUpdate()!= 1){
         
           }
     }
     catch (SQLException ex) {
         Logger.getLogger(usuarioDao.class.getName()).log(Level.SEVERE, null, ex);
     }
    }

    @Override
    public List<usuarioVo> consultar(usuarioVo vo) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void modificar(usuarioVo vo) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void eliminar(usuarioVo vo) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
   public usuarioVo iniciarSesion (String nickname, String clave) throws SQLException {
         
  usuarioVo vo = new usuarioVo();
          PreparedStatement pst = cnn.prepareStatement("SELECT nombre_usuario , clave FROM usuarios WHERE nombre_usuario = ? AND clave = ? ");
          int i = 1;
          pst.setString(i++, nickname);
          pst.setString(i++ ,clave);
          ResultSet rs = pst.executeQuery();
          while(rs.next()){
            
            vo.setApodo(rs.getString("nombre_usuario"));
            vo.setClave(rs.getString("clave"));
          }
   return vo;
   }
   public usuarioVo sabernivel(String nombre) throws SQLException{
       usuarioVo vo = new usuarioVo();
       PreparedStatement pst = cnn.prepareStatement("SELECT coeficiente FROM usuarios WHERE nombre_usuario = ? ");
int i = 1 ;
pst.setString(i, nombre);
   ResultSet rs  = pst.executeQuery();
   while(rs.next()){
       vo.setCoeficiente(rs.getInt("coeficiente"));
   }
   return  vo;
   }
   public usuarioVo cambiarnivel (int coeficiente , String usuario) throws SQLException{
     usuarioVo vo = new usuarioVo();
     conector co = new conector();
      
       try{
    String consulta =  "update usuarios set coeficiente = ? where  nombre_usuario = ?  ";
    PreparedStatement pst = co.getCONECCION().prepareStatement(consulta);
    int i = 1;
     
       pst.setInt(i++, coeficiente);
           
       pst.setString(i++,usuario);
     
    
       pst.executeQuery();
     }
     catch(Exception e){
         System.out.println(e);
     }
       
       return vo;
       
   }
   
 
}