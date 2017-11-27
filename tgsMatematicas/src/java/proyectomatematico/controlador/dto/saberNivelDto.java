/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectomatematico.controlador.dto;

/**
 *
 * @author developer
 */
public class saberNivelDto {
    private int sabernivel;

    public saberNivelDto() {
    }

    public saberNivelDto(int sabernivel) {
        this.sabernivel = sabernivel;
    }
    
    
    

    /**
     * @return the sabernivel
     */
    public int getSabernivel() {
        return sabernivel;
    }

    /**
     * @param sabernivel the sabernivel to set
     */
    public void setSabernivel(int sabernivel) {
        this.sabernivel = sabernivel;
    }
    
}
