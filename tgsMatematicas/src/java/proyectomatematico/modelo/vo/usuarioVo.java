
package proyectomatematico.modelo.vo;

public class usuarioVo {
     private String nombre;
     private String apodo;
     private String clave; 
     private String correo;
     private int coeficiente;
     private int edad;

    public usuarioVo(String nombre, String apodo, String clave, String correo, int coeficiente, int edad) {
        this.nombre = nombre;
        this.apodo = apodo;
        this.clave = clave;
        this.correo = correo;
        this.coeficiente = coeficiente;
        this.edad = edad;
    }


    public usuarioVo() {
    }


     
     
     
     /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the apodo
     */
    public String getApodo() {
        return apodo;
    }

    /**
     * @param apodo the apodo to set
     */
    public void setApodo(String apodo) {
        this.apodo = apodo;
    }

    /**
     * @return the clave
     */
    public String getClave() {
        return clave;
    }

    /**
     * @param clave the clave to set
     */
    public void setClave(String clave) {
        this.clave = clave;
    }

    /**
     * @return the correo
     */
    public String getCorreo() {
        return correo;
    }

    /**
     * @param correo the correo to set
     */
    public void setCorreo(String correo) {
        this.correo = correo;
    }

    /**
     * @return the edad
     */
    public int getEdad() {
        return edad;
    }

    /**
     * @param edad the edad to set
     */
    public void setEdad(int edad) {
        this.edad = edad;
    }

    /**
     * @return the coeficiente
     */
    public int getCoeficiente() {
        return coeficiente;
    }

    /**
     * @param coeficiente the coeficiente to set
     */
    public void setCoeficiente(int coeficiente) {
        this.coeficiente = coeficiente;
    }
}
