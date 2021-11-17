<%-- 
    Document   : errorRegistroUsuario
    Created on : 16 nov. 2021, 23:43:42
    Author     : Caro
--%>


<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="preconnect" href="https://fonts.gstatic.com" />
        <link href="https://fonts.googleapis.com/css2?family=Dosis:wght@200;500;700;800&display=swap" rel="stylesheet"/>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous"/>
        <link rel="stylesheet" href="styles/main.css" />
        <link rel="stylesheet" href="styles/normalize.css" />
        <link rel="stylesheet" href="styles/styles.css" />
        <script src="js/scripts.js"></script>
        <title>Login</title>
    </head>
    <body>
        <main class="login-design">
            <div class="waves"></div>
            <div class="login">
                <div class="login-data">
                    <img src="assets/beer2.png" alt="" />

                    <% // traigo los datos de la sesion para cargarlos en los input
                        HttpSession misesion = request.getSession();
                        String nombre = (String) misesion.getAttribute("inputNombre");
                        String apellido = (String) misesion.getAttribute("inputApellido");
                        String email = (String) misesion.getAttribute("inputEmail");
                        String contra = (String) misesion.getAttribute("inputPassword");
                        String telefono = (String) misesion.getAttribute("inputTelefono");
                        String direccion = (String) misesion.getAttribute("inputDireccion");
                        String fNacim = (String) misesion.getAttribute("inputFNacim");
                        String provincia = (String) misesion.getAttribute("selectProvincia");
                        String usuario = (String) misesion.getAttribute("selectUsuario");
                    %>
                    <!-- Formulario  -->
                    <div class="container-fluid col-12 border border-warning gx-5 p-5 border border-3 container-grey">
                        <form action="SvRegistroUsuario" method="Post" class="row g-3 was-validated text-md-left text-white" id="registroDeUsuario" onsubmit="return validarRegUsuario()">
                            <p class="h1" id="pRegistroUsuario">Registro de Usuario</p> 

                            <p class="h5">El email <%=email%> ya se encuentra registrado, si no recuerda la contraseña póngase en contacto con el administrador</p>
                            <p >En caso contrario verifique que el correo electrónico ingresado sea correcto y vuelva a intentarlo presionando <a href="login.jsp">aquí</a></p>                
                            <table class="table text-center">
                                <tr>
                                    <td>
                                        <!-- Email -->
                                        <div class="col-md-6">
                                            <label for="inputEmail" class="form-label">Email: </label>
                                            <input name="inputEmail" type="email" class="form-control" id="inputEmail"  aria-label="Email" value="<%=email%>" disabled>
                                        </div>
                                    </td>
                                    <td>
                                        <!-- Contraseña -->
                                        <div class="col-md-6">
                                            <label for="inputPassword" class="form-label">Contraseña: </label>
                                            <input name="inputPassword" type="password" class="form-control" id="inputPassword" aria-label="Contrasenia" value="<%=contra%>" disabled>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td> 
                                        <!--nombre-->
                                        <div class="col-md-6">
                                            <label for="inputNombre" class="form-label">Nombre: </label>
                                            <input name="inputNombre" type="text" class="form-control" id="inputNombre" minlength="2"  aria-label="Nombre" value="<%=nombre%>" disabled>
                                        </div>
                                    </td>

                                    <td>
                                        <!--Apellido-->
                                        <div class="col-md-6">
                                            <label for="inputApellido" class="form-label">Apellido: </label>
                                            <input name="inputApellido" type="text" class="form-control" id="inputApellido" minlength="2" aria-label="Apellido" value="<%=apellido%>" disabled>
                                        </div>
                                    </td>  
                                </tr>

                                <tr>

                                    <td>
                                        <!--teléfono-->
                                        <div class="col-md-6">
                                            <label for="inputTelefono" class="form-label">Teléfono: </label>
                                            <input name="inputTelefono" type="text" class="form-control" id="inputTelefono" placeholder="(Sin 0 ni 15)" aria-label="Teléfono" value="<%=telefono%>" disabled>
                                        </div>
                                    </td>
                                    <td>
                                        <!-- direccion -->
                                        <div class="col-md-6">
                                            <label for="inputDireccion" class="form-label">Dirección: </label>
                                            <input name="inputDireccion" type="Dirección" class="form-control" id="inputDireccion" aria-label="Dirección" value="<%=direccion%>" disabled>
                                        </div>
                                    </td>
                                </tr>

                                <tr>

                                    <td>
                                        <!-- Fecha de nacimiento-->
                                        <div class="col-md-6">
                                            <label for="inputFNacim" class="form-label">Fecha de Nacimiento</label>
                                            <input name="inputFNacim"  type="date" class="form-control" id="inputFNacim" value="<%=fNacim%>" disabled>
                                        </div>

                                    </td>
                                    <td>
                                        <!--Provincia-->
                                        <div class="col-md-6">
                                            <label for="selectProvincia" class="form-label">Provincia</label>
                                            <input type="text" name="selectProvincia" id="selectProvincia" value="<%=provincia%>" disabled>
                                        </div>
                                    </td>
                                </tr>
                                <br>
                                <tr>
                                    <td>
                                        <div class="col-md-6">
                                            <label for="selectUsuario" class="form-label">Tipo de Usuario</label>
                                            <input type="text" name="selectUsuario" id="selectUsuario" value="<%=usuario%>" disabled>
                                        </div>
                                    </td>

                                </tr>
                            </table>
                            <br>
                            <div class="col-md-6">
                                <a href="login.jsp">Volver</a>
                            </div>
                        </form>
                    </div>


                    <!-- fin de Formulario  -->


                </div>
            </div>
        </main>
    </body>
</html>





