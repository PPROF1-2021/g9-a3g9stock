
package Servlets;

import Logica.Controladora;
import Logica.Usuario;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "SvRegistroUsuario", urlPatterns = {"/SvRegistroUsuario"})
public class SvRegistroUsuario extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       
    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
         //traigo los datos del JSP
        String inputNombre = request.getParameter("inputNombre");
        String inputApellido = request.getParameter("inputApellido");
        String inputEmail = request.getParameter("inputEmail");
        String inputPassword = request.getParameter("inputPassword");
        String inputTelefono = request.getParameter("inputTelefono");
        String inputDireccion = request.getParameter("inputDireccion");
        String inputFNacim = request.getParameter("inputFNacim");  //ver como hacer con date
        String selectProvincia = request.getParameter("selectProvincia");
        String selectUsuario = request.getParameter("selectUsuario");
        

        //traigo la sesion y asigno  los atributos para tomarlos desde otros jsp
        request.getSession().setAttribute("inputNombre", inputNombre);
        request.getSession().setAttribute("inputApellido", inputApellido);
        request.getSession().setAttribute("inputEmail", inputEmail);
        request.getSession().setAttribute("inputPassword", inputPassword);
        request.getSession().setAttribute("inputTelefono", inputTelefono);
        request.getSession().setAttribute("inputDireccion", inputDireccion);
        request.getSession().setAttribute("inputFNacim", inputFNacim);
        request.getSession().setAttribute("selectProvincia", selectProvincia);
        request.getSession().setAttribute("selectUsuario", selectUsuario);
        
        Controladora control = new Controladora();
        Usuario usuario;
       
        
        usuario = control.buscarUnUsuario(inputEmail);
        //si el mail esta guardado en la bbdd redirecciono al form de error de 
        //registro para informar que el usuario ya esta registrado
        if(usuario.getEmail()!=null){
            response.sendRedirect("errorRegistroUsuario.jsp");
        }
        else{//el mail no se encuentra registrado, pasa por el else
        //paso los datos a la lógica
        control.crearUsuario(inputNombre, inputApellido, inputEmail, inputPassword, inputTelefono, inputDireccion, inputFNacim, selectProvincia, selectUsuario);
        
        
        //redirecciono a la página de confirmacion
        response.sendRedirect("confRegistroUsuario.jsp");
        }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
