//tipo de usuario: administrador, usuario de stock, usuario de produccion

package Logica;

public class TipoDeUsuario {
    private int idTipoUsuario;
    private String tipoUsuario;

    public TipoDeUsuario() {
    }

    public TipoDeUsuario(int idTipoUsuario, String tipoUsuario) {
        this.idTipoUsuario = idTipoUsuario;
        this.tipoUsuario = tipoUsuario;
    }

    public int getIdTipoUsuario() {
        return idTipoUsuario;
    }

    public void setIdTipoUsuario(int idTipoUsuario) {
        this.idTipoUsuario = idTipoUsuario;
    }

    public String getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(String tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }
    
    
}
