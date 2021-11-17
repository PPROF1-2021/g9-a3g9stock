<%-- 
    Document   : registroUsuarios
    Created on : 15 nov. 2021, 15:50:01
    Author     : Caro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

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


                    <!-- Formulario  -->
                    <div class="container-fluid col-12 border border-warning gx-5 p-5 border border-3 container-grey">
                        <form action="SvRegistroUsuario" method="Post" class="row g-3 was-validated text-md-left text-white" id="registroDeUsuario" onsubmit="return validarRegUsuario()">
                            <p class="h1" id="pRegistroUsuario">Registro de Usuario</p> 
                            <table class="table text-center">
                                <tr>
                                    <td> 
                                        <!--nombre-->
                                        <div class="col-md-6">
                                            <label for="inputNombre" class="form-label">Nombre: </label>
                                            <input name="inputNombre" type="text" class="form-control" id="inputNombre" minlength="2"  aria-label="Nombre">
                                        </div>
                                    </td>

                                    <td>
                                        <!--Apellido-->
                                        <div class="col-md-6">
                                            <label for="inputApellido" class="form-label">Apellido: </label>
                                            <input name="inputApellido" type="text" class="form-control" id="inputApellido" minlength="2" aria-label="Apellido">
                                        </div>
                                    </td>  
                                </tr>
                                <tr>

                                    <td>
                                        <!-- Email -->
                                        <div class="col-md-6">
                                            <label for="inputEmail" class="form-label">Email: </label>
                                            <input name="inputEmail" type="email" class="form-control" id="inputEmail"  aria-label="Email">
                                        </div>
                                    </td>
                                    <td>
                                        <!-- Contraseña -->
                                        <div class="col-md-6">
                                            <label for="inputPassword" class="form-label">Contraseña: </label>
                                            <input name="inputPassword" type="password" class="form-control" id="inputPassword" aria-label="Contrasenia">
                                        </div>
                                    </td>
                                </tr>

                                <tr>

                                    <td>
                                        <!--teléfono-->
                                        <div class="col-md-6">
                                            <label for="inputTelefono" class="form-label">Teléfono: </label>
                                            <input name="inputTelefono" type="text" class="form-control" id="inputTelefono" placeholder="(Sin 0 ni 15)" aria-label="Teléfono">
                                        </div>
                                    </td>
                                    <td>
                                        <!-- direccion -->
                                        <div class="col-md-6">
                                            <label for="inputDireccion" class="form-label">Dirección: </label>
                                            <input name="inputDireccion" type="Dirección" class="form-control" id="inputDireccion" aria-label="Dirección">
                                        </div>
                                    </td>
                                </tr>

                                <tr>

                                    <td>
                                        <!-- Fecha de nacimiento-->
                                        <div class="col-md-6">
                                            <label for="inputFNacim" class="form-label">Fecha de Nacimiento</label>
                                            <input name="inputFNacim"  type="date" class="form-control" id="inputFNacim">
                                        </div>

                                    </td>
                                    <td>
                                        <!--Provincia-->
                                        <div class="col-md-6">
                                            <label for="selectProvincia" class="form-label">Provincia</label>
                                            <select name="selectProvincia" id="selectProvincia" class="form-select">
                                                <option selected disabled value="">Seleccione Provincia</option>
                                                <option value="Córdoba">Córdoba</option>
                                                <option value="Buenos Aires">Buenos Aires</option>
                                                <option value="Capital Federal">Capital Federal</option>
                                                <option value="Catamarca">Catamarca</option>
                                                <option value="Chaco">Chaco</option>
                                                <option value="Chubut">Chubut</option>
                                                <option value="Corrientes">Corrientes</option>
                                                <option value="Entre Ríos">Entre Ríos</option>
                                                <option value="Formosa">Formosa</option>
                                                <option value="Jujuy">Jujuy</option>
                                                <option value="La Pampa">La Pampa</option>
                                                <option value="La Rioja">La Rioja</option>
                                                <option value="Mendoza">Mendoza</option>
                                                <option value="Misiones">Misiones</option>
                                                <option value="Neuquén">Neuquén</option>
                                                <option value="Río Negro">Río Negro</option>
                                                <option value="Salta">Salta</option>
                                                <option value="San Juan">San Juan</option>
                                                <option value="San Luis">San Luis</option>
                                                <option value="Santa Cruz">Santa Cruz</option>
                                                <option value="Santa Fe">Santa Fe</option>
                                                <option value="Santiago del Estero">Santiago del Estero</option>
                                                <option value="Tierra del Fuego">Tierra del Fuego</option>
                                                <option value="Tucumán">Tucumán</option>
                                            </select>

                                        </div>
                                    </td>
                                </tr>
                                <br>
                                <tr>
                                    <td>
                                        <div class="col-md-6">
                                            <label for="selectUsuario" class="form-label">Tipo de Usuario</label>
                                            <select name="selectUsuario" id="selectUsuario" class="form-select">
                                                <option selected disabled value="">Seleccione tipo...</option>
                                                <option value="Produccion">Usuario de Producción</option>
                                                <option value="Almacen">Usuario de Almacén</option>
                                            </select>
                                        </div>
                                    </td>
                                   
                                </tr>
                            </table>
                            <br>
                            <div class="col-md-6">
                                <button class="btn-login" type="submit" id="btnResumen" >Guardar</button>
                            </div>
                        </form>
                    </div>


                    <!-- fin de Formulario  -->


                </div>
            </div>
        </main>
    </body>
</html>





