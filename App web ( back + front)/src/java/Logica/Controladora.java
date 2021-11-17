package Logica;

import Persistencia.ControladoraPersistencia;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Controladora {

    ControladoraPersistencia controlPersis = new ControladoraPersistencia();
    
     //recibe los parametros del servlet, los procesa y lo pasa a la persistencia para guardarlos
    public void crearUsuario(String inputNombre, String inputApellido, String inputEmail, String inputPassword, String inputTelefono, String inputDireccion, String inputFNacim, String selectProvincia, String selectUsuario) {
        Usuario usuario = new Usuario();
        Date fechaN;
        Encoder encriptador = new Encoder();
        TipoDeUsuario tipoUsuario = new TipoDeUsuario();

        //convierto la fecha de string a date
        fechaN = parseFecha(inputFNacim);
        
        tipoUsuario = controlPersis.buscarUnTipoDeUsuario(selectUsuario);
        
        
        //asigno los valores al usuario para pasarlos a la persistencia
        usuario.setNombre(inputNombre);
        usuario.setApellido(inputApellido);
        usuario.setEmail(inputEmail);
        usuario.setFechaNacimiento(fechaN);
        usuario.setContrasenia(encriptador.encriptar(inputPassword)); //asigno la clave encriptada
        usuario.setTelefono(inputTelefono);
        usuario.setDireccion(inputDireccion);
        usuario.setFechaNacimiento(fechaN);
        usuario.setProvincia(selectProvincia);
        usuario.setTipoUsuario(tipoUsuario);
        
        controlPersis.guardarUsuario(usuario);
    }
    
    
    //método para convertir el string en formato fecha para poder pasarlo a la controladora de persistencia
    public Date parseFecha(String fechaAParsear) {
        Date fechaParse = new Date();

        SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
        try {
            fechaParse = formato.parse(fechaAParsear);
        } catch (ParseException ex) {
            Logger.getLogger(Controladora.class.getName()).log(Level.SEVERE, null, ex);
        }
        formato.format(fechaParse);
        return fechaParse;
    }

    //permite darle el formato a la fecha
    public String formatearFecha(Date fecha) {
        String fechaFormateada;

        //le doy el formato a la fecha para poder devolverla y mostrarla
        SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
        fechaFormateada = formato.format(fecha);

        return fechaFormateada;

    }
    
    
    
    
    
    
    //metodo para el logueo del usuario, verifica si existe en la base de datos
    //si no hay ningun usuario, crea el usuario admin, clave admin
    public boolean verificarUsuario(String usuario, String contrasenia) {
        List<Usuario> listaUsuarios;
        Encoder encriptador = new Encoder();
        listaUsuarios = controlPersis.recuperarUsuarios();

        if (listaUsuarios.isEmpty()) {
            agregarAdmin();

        } else { //si la lista está vacía agrego el usuario admin / clave admin

            for (Usuario usu : listaUsuarios) {
                if (usu.getEmail().equals(usuario) && usu.getContrasenia().equals(encriptador.encriptar(contrasenia))) {
                    return true;
                }

            }
        }
        return false;
    }

    //permite buscar un usuario determinado
    public Usuario buscarUnUsuario(String email){
        Usuario usuario = new Usuario();
         List<Usuario> listaUsuarios;
        
        listaUsuarios = controlPersis.recuperarUsuarios();

        if (listaUsuarios.isEmpty()) {
            agregarAdmin();

        } else { //si la lista está vacía agrego el usuario admin / clave admin

            for (Usuario usu : listaUsuarios) {
                if (usu.getEmail().equals(email)) { //verifico que coincida el mail y retorno el usuario correspondiente
                    usuario = usu;
                    return usuario;
                }

            }
        }
    
        return usuario;
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
