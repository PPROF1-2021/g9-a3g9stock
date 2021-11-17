<%-- 
    Document   : confRegistroUsuario
    Created on : 16 nov. 2021, 13:12:30
    Author     : Caro
--%>


<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="preconnect" href="https://fonts.gstatic.com" />
        <link
            href="https://fonts.googleapis.com/css2?family=Dosis:wght@200;500;700;800&display=swap"
            rel="stylesheet"
            />

        <link
            rel="stylesheet"
            href="https://use.fontawesome.com/releases/v5.15.1/css/all.css"
            integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp"
            crossorigin="anonymous"
            />
        <link rel="stylesheet" href="styles/main.css" />
        <link rel="stylesheet" href="styles/normalize.css" />
        <script src="js/scripts.js"></script>
        <title>Login</title>
    </head>
    <body>
        <main class="login-design">
            <div class="waves"></div>
            <div class="login">
                <div class="login-data">
                    <img src="assets/beer2.png" alt="" />
                    <h1>Inicio de Sesión</h1>
                    <section class="page-section cta">
                        <div class="container">
                            <div class="row">
                                <div class="col-xl-9 mx-auto">
                                    <div class="cta-inner bg-faded text-center rounded">
                                        <h2 class="section-heading mb-4">
                                            <!--<span class="section-heading-upper">Nueva Reserva</span>-->
                                            <span class="section-heading-lower">Alta de nuevo empleado</span>
                                        </h2>
                                        <h4 >Los datos han sido guardados correctamente:</h4>
                                        <br>
                                        <div class="table-responsive">
                                            <table class="table table-striped">
                                                <tr>
                                                    <td>Nombre:</td>
                                                    <td><%= session.getAttribute("inputNombre")%></td>
                                                </tr>

                                                <tr>
                                                    <td>Apellido:</td>
                                                    <td><%= session.getAttribute("inputApellido")%></td>
                                                </tr>

                                                <tr>
                                                    <td>Email:</td>
                                                    <td><%= session.getAttribute("inputEmail")%></td>
                                                </tr>
                                                <tr>
                                                    <td>Teléfono:</td>
                                                    <td><%= session.getAttribute("inputTelefono")%></td>
                                                </tr>
                                                <tr>
                                                    <td>Dirección:</td>
                                                    <td><%= session.getAttribute("inputDireccion")%></td>
                                                </tr>
                                                <tr>
                                                    <td>Fecha de nacimiento:</td>
                                                    <td><%= session.getAttribute("inputFNacim")%></td>
                                                </tr>
                                                <tr>
                                                    <td>Provincia:</td>
                                                    <td><%= session.getAttribute("selectProvincia")%></td>
                                                </tr>
                                                <tr>
                                                    <td>Tipo de usuario:</td>
                                                    <td><%= session.getAttribute("selectUsuario")%></td>
                                                </tr>

                                            </table>
                                            <br>
                                            <br>
                                            <p>En unos segundos será redireccionado a la pagina de logueo</p>
                                            <p>Presione <a href="login.jsp">aquí</a> si no desea esperar</p>

                                            <script>
                                                // script que redirecciona a la pagina de login
                                                var tiempo = 5000; //5 segundos de espera
                                                setTimeout(function () {
                                                    window.location = 'login.jsp';
                                                }, tiempo);
                                            </script>

                                        </div>
                                    </div>
                                </div>
                            </div>
                    </section>
                </div>
            </div>
        </main>

    </body>
</html>
