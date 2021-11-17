package Servlets;

import Logica.Controladora;
import Logica.Usuario;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Caro
 */
@WebServlet(name = "SvLogin", urlPatterns = {"/SvLogin"})
public class SvLogin extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
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
        String usuario = request.getParameter("email");
        String contrasenia = request.getParameter("password");
        
        Controladora control = new Controladora();
        Usuario usu = new Usuario();
        
        boolean autorizado = control.verificarUsuario(usuario, contrasenia);
        
        
        if(autorizado == true){
            String nombreUsu;
            
            //obtengo nombre y apellido y los concateno para mostrarlos arriba a la derecha, 
            //en donde aparece el nombre del usuario logueado
            usu = control.buscarUnUsuario(usuario);
            nombreUsu = usu.getNombre() + " " + usu.getApellido();
            
            //seteo la sesion en true para que se pueda
            HttpSession misesion = request.getSession(true);
            misesion.setAttribute("usuario", usuario);
            misesion.setAttribute("contrasenia", contrasenia);
            misesion.setAttribute("nombreUsu", nombreUsu);
            
            response.sendRedirect("index.jsp");
        }
        else{
            
            response.sendRedirect("login.jsp");
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
