package Persistencia;

import Logica.TipoDeUsuario;
import Logica.Usuario;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Query;

public class ControladoraPersistencia {

    //metodos para usuario
    public List recuperarUsuarios() {
        UsuarioJpaController controlUsuario = new UsuarioJpaController();
        List<Usuario> listaUsuarios;

        //recupero la lista de usuarios y la devuelvo
        listaUsuarios = controlUsuario.findUsuarioEntities();
        return listaUsuarios;
    }

    public void agregarAdmin(Usuario empleado) {
        UsuarioJpaController controlEmpleado = new UsuarioJpaController();
        controlEmpleado.create(empleado);

    }

    //busco un determinado cargo pasando por parametro el nombre 
    public TipoDeUsuario buscarUnCargo(String nombreCargo) {
        List<TipoDeUsuario> listaCargos;
        TipoDeUsuario cargo = new TipoDeUsuario();

        listaCargos = recuperarCargos();
        if (!listaCargos.isEmpty()) {
            for (TipoDeUsuario c : listaCargos) {
                if (c.getTipoUsuario().equals(nombreCargo)) {
                    cargo = c;
                    return cargo;
                }
            }
        }

        if (cargo.getTipoUsuario() == null) {
            //si no se encuentra el cargo en la bd lo asigna al cargo para devolverlo
            TipoDeUsuarioJpaController controlCargo = new TipoDeUsuarioJpaController();
            cargo.setTipoUsuario(nombreCargo);
            //lo guardo en la bd
            controlCargo.create(cargo);

        }

        return cargo;
    }

    public List<TipoDeUsuario> recuperarCargos() {
        TipoDeUsuarioJpaController controlCargo = new TipoDeUsuarioJpaController();
        List<TipoDeUsuario> listaCargos;
        listaCargos = controlCargo.findTipoDeUsuarioEntities();
        return listaCargos;
    }

    //busca el tipo de usuario pasado por parametro y lo devuelve
    public TipoDeUsuario buscarUnTipoDeUsuario(String tipo) {
        TipoDeUsuarioJpaController controlUsuario = new TipoDeUsuarioJpaController();
        TipoDeUsuario tipoUsuario = new TipoDeUsuario();
        List<TipoDeUsuario> listaTipoUsuarios;

        //traigo la lista con todos los tipos de usuarios registradoes en la base de datos para poder buscar el que necesito
        listaTipoUsuarios = controlUsuario.findTipoDeUsuarioEntities();

        //si la lista no está vacía
        if (!listaTipoUsuarios.isEmpty()) {
            for (TipoDeUsuario c : listaTipoUsuarios) {
                if (c.getTipoUsuario().equals(tipo)) {
                    tipoUsuario = c;
                    return tipoUsuario;
                }
            }
        }

        //si es null lo guardo en la bbdd
        if (tipoUsuario.getTipoUsuario() == null) {
            //si no se encuentra el cargo en la bd lo asigna al cargo para devolverlo y guardarlo en la bbdd
            tipoUsuario.setTipoUsuario(tipo);
            //lo guardo en la base de datos
            controlUsuario.create(tipoUsuario);

        }

        return tipoUsuario;
    }
    
    public void guardarUsuario(Usuario usuario){
        UsuarioJpaController usuarioControl = new UsuarioJpaController();
        usuarioControl.create(usuario);
    }

}



