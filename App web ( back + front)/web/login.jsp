<%-- 
    Document   : login
    Created on : 15 nov. 2021, 10:47:20
    Author     : Caro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <title>Login</title>
  </head>
  <body>
    <main class="login-design">
      <div class="waves"></div>
      <div class="login">
        <div class="login-data">
          <img src="assets/beer2.png" alt="" />
          <h1>Inicio de Sesión</h1>
          <form name="formlogin" action="SvLogin" method="POST" class="login-form">
            <div class="input-group">
              <label class="input-fill">
                <input type="email" name="email" id="email" required />
                <span class="input-label">Correo Electrónico</span>
                <i class="fas fa-envelope"></i>
              </label>
            </div>
            <div class="input-group">
              <label class="input-fill">
                <input type="password" name="password" id="password" required />
                <span class="input-label">Contraseña</span>
                <i class="fas fa-lock"></i>
              </label>
            </div>
            <a href="#">¿Necesitas una Cuenta?</a>
            <input type="submit" value="Iniciar Sesión" class="btn-login" />
          </form>
        </div>
      </div>
    </main>
  </body>
</html>
