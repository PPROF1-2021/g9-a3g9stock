<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="preconnect" href="https://fonts.gstatic.com" />
        <link href="https://fonts.googleapis.com/css2?family=Dosis:wght@200;500;700;800&display=swap" rel="stylesheet" />
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous"/>
        <link rel="stylesheet" href="styles/main.css" />
        <link rel="stylesheet" href="styles/normalize.css" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Login</title>
    </head>
    <body>
        <main class="login-design">
            <div class="waves"></div>
            <div class="login">
                <div class="login-data">
                    <img src="assets/beer2.png" alt="" />
                    <h1>Inicio de Sesión</h1>
                    <form name="" action="" method="POST" class="login-form">
                        <% // traigo los datos de la sesion para cargarlos en los input
                            HttpSession misesion = request.getSession();
                            String email = (String) misesion.getAttribute("usuario");

                        %>
                        <p class="h5">El email <%=email%> no se encuentra registrado o la contraseña ingresada es incorrecta</p>

                        <div class="container">
                             <br>
                            <div class="row">
                                <div class="col-12">
                                    <input type="button" value="Iniciar Sesión" class="btn-login" onclick="window.location.href='login.jsp'" />
                                </div>
                            </div>
                             <br>
                             <div class="row">
                                <div class="col-12 ">
                                    <input type="button" value="Registrarse" class="btn-login" onclick="window.location.href='registroUsuarios.jsp'"/>
                                </div>
                        </div>
                         </div>
                    </form>
                </div>
            </div>
        </main>
    </body>
</html>
