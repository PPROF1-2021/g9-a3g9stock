
package Logica;

import Persistencia.ControladoraPersistencia;
import java.util.List;

public class Controladora {
    
    ControladoraPersistencia controlPersis = new ControladoraPersistencia();
    
        //metodo para el logueo del usuario, verifica si existe en la base de datos
    //si no hay ningun usuario, crea el usuario admin, clave admin
    public boolean verificarUsuario(String usuario, String contrasenia) {
        List<Usuario> listaUsuarios;
        
        listaUsuarios = controlPersis.recuperarUsuarios();

        if (listaUsuarios.isEmpty()) {
            agregarAdmin();

        } else { //si la lista está vacía agrego el usuario admin / clave admin

            for (Usuario usu : listaUsuarios) {
                if (usu.getEmail().equals(usuario) && usu.getContrasenia().equals(contrasenia)) {
                    return true;
                }

            }
        }
        return false;
    }
    
    
     //para agregar el usuario admin cuando se carga por primera vez
    public void agregarAdmin() {
        Usuario empleado = new Usuario();
        Usuario usuario = new Usuario();
        TipoDeUsuario cargo = new TipoDeUsuario();

        usuario.setEmail("admin@admin");
        usuario.setContrasenia("admin");

        
        cargo = buscarUnCargo("Administrador");

        empleado.setNombre("admin");
        empleado.setApellido("admin");
        empleado.setEmail(usuario.getEmail());
        empleado.setCargo("Administrador");
        empleado.setTipoUsuario(cargo);

        controlPersis.agregarAdmin(usuario);
    }
    
     public TipoDeUsuario buscarUnCargo(String nombreCargo) {
        TipoDeUsuario cargo;
        cargo = controlPersis.buscarUnCargo(nombreCargo);
        return cargo;
    }
}



