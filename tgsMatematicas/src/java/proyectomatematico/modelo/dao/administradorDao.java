
package proyectomatematico.modelo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import proyectomatematico.modelo.generico.Igenerico;
import proyectomatematico.modelo.vo.adminstradorVo;

public class administradorDao implements Igenerico<administradorDao>{

    private Connection cnn;

    public administradorDao(Connection cnn) {
    this.cnn = cnn;    
    }
    
    
    @Override
    public void insertar(administradorDao vo) {
    
    }

    @Override
    public List<administradorDao> consultar(administradorDao vo) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void modificar(administradorDao vo) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void eliminar(administradorDao vo) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    public adminstradorVo autenticar(String correo , String clave) throws SQLException{
       int i=0 ;
        adminstradorVo adminstradorvo = null;
        PreparedStatement sentencia = cnn.prepareStatement("select correo,clave from administradores where correo = ? and clave = ?  ");
       sentencia.setString(++i, correo);
       sentencia.setString(++i, clave);
        ResultSet rs = sentencia.executeQuery();
        while(rs.next()){
            adminstradorvo = new adminstradorVo();
            adminstradorvo.setCorreo(rs.getString("correo"));
            adminstradorvo.setClave(rs.getString("clave"));
            return adminstradorvo;
        }
        return adminstradorvo;
        }
    
}
