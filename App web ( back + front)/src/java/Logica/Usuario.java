//usuarios del sistema, empleados de la empresa que realizan gestiones sobre el mismo

package Logica;

import java.util.Date;


public class Usuario extends Persona{
    private String contraseña;
    private Date fechaNacimiento;
    
    private TipoDeUsuario tipoUsuario;

    public Usuario() {
    }

    public Usuario(String contraseña, Date fechaNacimiento, TipoDeUsuario tipoUsuario) {
        this.contraseña = contraseña;
        this.fechaNacimiento = fechaNacimiento;
        this.tipoUsuario = tipoUsuario;
    }

    public Usuario(String contraseña, Date fechaNacimiento, TipoDeUsuario tipoUsuario, int idPersona, String nombre, String apellido, String telefono, String email, String direccion, String provincia) {
        super(idPersona, nombre, apellido, telefono, email, direccion, provincia);
        this.contraseña = contraseña;
        this.fechaNacimiento = fechaNacimiento;
        this.tipoUsuario = tipoUsuario;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public TipoDeUsuario getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(TipoDeUsuario tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }
    
    
}
