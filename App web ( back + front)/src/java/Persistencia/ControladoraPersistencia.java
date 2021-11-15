
package Persistencia;

import Logica.TipoDeUsuario;
import Logica.Usuario;
import java.util.List;


public class ControladoraPersistencia {
    
       
    //metodos para usuario
     
     public List recuperarUsuarios(){
         UsuarioJpaController controlUsuario = new UsuarioJpaController();
         List <Usuario> listaUsuarios;
         
         //recupero la lista de usuarios y la devuelvo
         listaUsuarios = controlUsuario.findUsuarioEntities();
         return listaUsuarios;
     }
     
      public void agregarAdmin(Usuario empleado){
       UsuarioJpaController controlEmpleado = new UsuarioJpaController();
       controlEmpleado.create(empleado);
         
     }
      
      
        //busco un determinado cargo pasando por parametro el nombre 
     public TipoDeUsuario buscarUnCargo(String nombreCargo){
         List<TipoDeUsuario> listaCargos;
         TipoDeUsuario cargo = new TipoDeUsuario();
                 
         listaCargos = recuperarCargos();
         
         if(!listaCargos.isEmpty()){
             for(TipoDeUsuario c : listaCargos){
                if(c.getTipoUsuario().equals(nombreCargo)){
                     cargo = c;
                     return cargo;
                 }
             }
         }
         
       if(cargo.getTipoUsuario() == null){
            //si no se encuentra el cargo en la bd lo asigna al cargo para devolverlo
            TipoDeUsuarioJpaController controlCargo = new TipoDeUsuarioJpaController();
            cargo.setTipoUsuario(nombreCargo);
            //lo guardo en la bd
            controlCargo.create(cargo);
             
         }
         
         return cargo;
    }
     
     public List<TipoDeUsuario> recuperarCargos(){
       TipoDeUsuarioJpaController controlCargo = new TipoDeUsuarioJpaController();
        List<TipoDeUsuario> listaCargos;
        listaCargos = controlCargo.findTipoDeUsuarioEntities();
        return listaCargos;}
}
