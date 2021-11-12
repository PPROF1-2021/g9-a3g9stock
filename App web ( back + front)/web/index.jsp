<%-- 
    Document   : index
    Created on : 11 nov. 2021, 20:16:45
    Author     : Caro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="icon" type="image/x-icon" href="assets/cup-straw.svg" />
    <!--Bootstrap-->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="charts.js/chart-bar"/>
    <!--Font Awesome-->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    />
    <link rel="stylesheet" href="styles/styles.css" />
    <script src="js/scripts.js"></script>
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta
      name="author"
      content="Aula 3, Grupo 9 - Araya, Battistoni, Bima, Gentilini y Moyano "
    />
    <meta name="description" content="Página de inicio" />
    <title>Beer Friends Stock Sistem</title>
  </head>

  <body>
    <!-- Menú -->
    <div class="d-flex" id="wrapper">
      <div class="bg-black" id="sidebar-wrapper">
        <div
          class="
            sidebar-heading
            text-center
            py-4
            primary-text
            fs-4
            fw-bold
            text-uppercase
            border-bottom
          "
        >
          <i class="fas fa-beer me-2"></i>BEER STOCK
        </div>
        <div class="list-group list-group-flush my-3">
          <a
            href="index.html"
            class="
              list-group-item list-group-item-action
              bg-transparent
              second-text
              fw-bold
            "
          >
            <i class="fas fa-project-diagram me-2"></i>Inicio</a
          >

          <!--submenu cervezas -->
          <ul class="navbar-nav ms-4">
            <li class="nav-item dropdown align-items-center">
              <a
                class="
                  nav-link
                  dropdown-toggle
                  second-text
                  fw-bold
                  list-group-item list-group-item-action
                  bg-transparent
                  second-text
                  fw-bold
                "
                href="#"
                id="navbarDropdown"
                role="button"
                data-bs-toggle="dropdown"
                aria-expanded="false"
              >
                <i class="fas fa-wine-bottle me-2"></i>Cervezas
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li>
                  <a class="dropdown-item " href="stockCerveza.html"
                    >Stock de Cerveza</a
                  >
                </li>
                <li>
                  <a class="dropdown-item" href="recetas.html">Recetas</a>
                </li>
                <li>
                  <a class="dropdown-item" href="coccion.html">Cocción</a>
                </li>
                <li>
                  <a class="dropdown-item" href="pedidosClientes.html"
                    >Pedidos de Clientes</a
                  >
                </li>
              </ul>
            </li>
          </ul>

          <!--submenu materias primas -->
          <ul class="navbar-nav ms-4">
            <li class="nav-item dropdown align-items-center">
              <a
                class="
                  nav-link
                  dropdown-toggle
                  second-text
                  fw-bold
                  list-group-item list-group-item-action
                  bg-transparent
                  second-text
                  fw-bold
                "
                href="#"
                id="navbarDropdown"
                role="button"
                data-bs-toggle="dropdown"
                aria-expanded="false"
              >
                <i class="fas fa-boxes me-2"></i>Materias Primas
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li>
                  <a class="dropdown-item" href="Stockmateriaprima.html"
                    >Stock</a
                  >
                </li>
                <li>
                  <a class="dropdown-item" href="AltadeStockmateriaprima.html"
                    >Alta de M.P.</a
                  >
                </li>
                <li>
                  <a class="dropdown-item" href="proveedores.html"
                    >Proveedores</a
                  >
                </li>
              </ul>
            </li>
          </ul>

          <!--submenu contacto  -->
          <a
            href="contacto.html"
            class="
              list-group-item list-group-item-action
              bg-transparent
              second-text
              fw-bold
            "
          >
            <i class="fas fa-address-book me-2"></i>Contacto</a
          >
          <!--submenu Panel de control -->
          <ul class="navbar-nav ms-4">
            <li class="nav-item dropdown align-items-center">
              <a
                class="
                  nav-link
                  dropdown-toggle
                  second-text
                  fw-bold
                  list-group-item list-group-item-action
                  bg-transparent
                  second-text
                  fw-bold
                  active
                "
                href="#"
                id="navbarDropdown"
                role="button"
                data-bs-toggle="dropdown"
                aria-expanded="false"
              >
                <i class="fas fa-tachometer-alt me-2"></i>Panel de Control
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li>
                  <a class="dropdown-item" href="registroUsuarios.html"
                    >Registro de Usuario</a
                  >
                </li>
                <li>
                  <a class="dropdown-item disabled" href="#"
                    >Administración de Usuarios</a
                  >
                </li>
              </ul>
            </li>
          </ul>

          <!--submenu Logout -->
          <a
            href="#"
            class="
              list-group-item list-group-item-action
              bg-transparent
              text-danger
              fw-bold
            "
          >
            <i class="fas fa-power-off me-2"></i>Logout</a
          >
        </div>
      </div>

      <!-- Menú y nombre de usuario de margen superior -->
      <div id="page-content-wrapper">
        <nav
          class="navbar navbar-expand-lg navbar-light bg-transparent py-4 px-4"
        >
          <div class="d-flex align-items-center">
            <i
              class="fas fa-align-left primary-text fs-4 me-3"
              id="menu-toggle"
            ></i>
            <h2 class="fs-2 m-0">Dashboard</h2>
          </div>

          <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
              <li class="nav-item dropdown">
                <a
                  class="
                    nav-link
                    dropdown-toggle
                    second-text
                    fw-bold
                    text-warning
                  "
                  href="#"
                  id="navbarDropdown"
                  role="button"
                  data-bs-toggle="dropdown"
                  aria-expanded="false"
                >
                  <i class="fas fa-user me-2"></i>Ana Perez
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li><a class="dropdown-item disabled" href="#">Perfil</a></li>
                  <li>
                    <a class="dropdown-item disabled" href="#">Configuración</a>
                  </li>
                  <li><a class="dropdown-item" href="login.html">Salir</a></li>
                </ul>
              </li>
            </ul>
          </div>
        </nav>
        
        <!-- /#cierre menú -->

        <!-- Contenido de la página -->
        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
              <h1 class="h3 mb-0 text-white">Panel de Control</h1>
              <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-warning shadow-sm"><i
                      class="fas fa-download fa-sm text-dark-50"> </i> Reporte Generado</a>
          </div>
         <!-- Content Row -->
         <div class="row">
            <!-- ganancias Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="bg-light border-start border-warning border-5  Default shadow  h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-warning fw-bold text-uppercase mb-2">
                        Ganancias (Mensuales)</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">$40,000</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-hand-holding-usd  text-warning fa-2x  "></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- Stock materias primas Card Example -->
      <div class="col-xl-3 col-md-6 mb-4">
        <div class="bg-light border-start border-info border-5  Default shadow  h-100 py-2">
          <div class="card-body">
            <div class="row no-gutters align-items-center">
              <div class="col mr-2">
                <div class="text-xs font-weight-bold text-info fw-bold text-uppercase mb-1">Stock Mat.Primas
                </div>
                <div class="row no-gutters align-items-center">
                  <div class="col-auto">
                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">30%</div>
                  </div>
                  <div class="col">
                    <div class="progress progress-sm mr-2">
                      <div class="progress-bar bg-info" role="progressbar" style="width: 30%" aria-valuenow="50"
                        aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-auto">
                <i class="fas fa-boxes text-info fa-2x"></i>
              </div>
            </div>
          </div>
        </div>
      </div>
      
      <!-- TAREAS Card Example -->
      <div class="col-xl-3 col-md-6 mb-4">
        <div class="bg-light border-start border-danger border-5  Default shadow  h-100 py-2">
          <div class="card-body">
            <div class="row no-gutters align-items-center">
              <div class="col mr-2">
                <div class="text-xs font-weight-bold text-danger fw-bold text-uppercase mb-1">Tareas
                </div>
                <div class="row no-gutters align-items-center">
                  <div class="col-auto">
                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
                  </div>
                  <div class="col">
                    <div class="progress progress-sm mr-2">
                      <div class="progress-bar bg-danger" role="progressbar" style="width: 50%" aria-valuenow="50"
                        aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-auto">
                <i class="fas fa-clipboard-list text-danger fa-2x"></i>
              </div>
            </div>
          </div>
        </div>
      </div>
      
      <!-- pedidos Card Example -->
      <div class="col-xl-3 col-md-6 mb-4">
        <div class="bg-light border-start border-success border-5  Default shadow  h-100 py-2">
          <div class="card-body">
            <div class="row no-gutters align-items-center">
              <div class="col mr-2">
                <div class="text-xs font-weight-bold text-success fw-bold text-uppercase mb-1">
                  Pedidos</div>
                <div class="h5 mb-0 font-weight-bold text-gray-800">18</div>
              </div>
              <div class="col-auto">
                <i class="fas fa-dolly text-success fa-2x"></i>
              </div>
            </div>
          </div>
        </div>
      </div>
      </div>
               <!-- Content Row -->

               <div class="row">

            <!-- Content Row -->


                <!-- Content Column -->
                <div class="col-6 ">

                    <!-- Project Card Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Projects</h6>
                        </div>
                        <div class="card-body">
                            <h4 class="small font-weight-bold">Server Migration <span
                                    class="float-right">20%</span></h4>
                            <div class="progress mb-4">
                                <div class="progress-bar bg-danger" role="progressbar" style="width: 20%"
                                    aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                            <h4 class="small font-weight-bold">Sales Tracking <span
                                    class="float-right">40%</span></h4>
                            <div class="progress mb-4">
                                <div class="progress-bar bg-warning" role="progressbar" style="width: 40%"
                                    aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                            <h4 class="small font-weight-bold">Customer Database <span
                                    class="float-right">60%</span></h4>
                            <div class="progress mb-4">
                                <div class="progress-bar" role="progressbar" style="width: 60%"
                                    aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                            <h4 class="small font-weight-bold">Payout Details <span
                                    class="float-right">80%</span></h4>
                            <div class="progress mb-4">
                                <div class="progress-bar bg-info" role="progressbar" style="width: 80%"
                                    aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                            <h4 class="small font-weight-bold">Account Setup <span
                                    class="float-right">Complete!</span></h4>
                            <div class="progress">
                                <div class="progress-bar bg-success" role="progressbar" style="width: 100%"
                                    aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">

                    
                    <div class="col-6"></div> 
                    </div> 
                    <!-- Illustrations -->
                      
                      <div class="card shadow mb-4 pt-4 pb-2 ">
                        <div class="card-header py-3 ">
                            <h6 class="m-0 font-weight-bold text-primary">Illustrations</h6>
                        </div>
                        <div class="card-body">
                            <div class="text-center">
                                <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 25rem;"
                                    src="img/undraw_posting_photo.svg" alt="...">
                            </div>
                            <p>Add some quality, svg illustrations to your project courtesy of <a
                                    target="_blank" rel="nofollow">unDraw</a>, a
                                constantly updated collection of beautiful svg images that you can use
                                completely free and without attribution!</p>
                            <a target="_blank" rel="nofollow" href="https://undraw.co/">Browse Illustrations on
                                unDraw &rarr;</a>
                        </div>
                    </div>

                    

          <div class="row my-5">
            <h3 class="fs-4 mb-3 text-white">Ultimos Pedidos</h3>
            <div class="col">
              <table class="table bg-white rounded shadow-sm table-hover">
                <thead>
                  <tr>
                    <th scope="col" width="50">#</th>
                    <th scope="col">Producto</th>
                    <th scope="col">Cliente</th>
                    <th scope="col">Precio</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>J Ipa</td>
                    <td>Marcelo Perez</td>
                    <td>$1200</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>J Roja</td>
                    <td>Gastón Juarez</td>
                    <td>$750</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>J Roja</td>
                    <td>Alejandra Migueñuses</td>
                    <td>$600</td>
                  </tr>
                  <tr>
                    <th scope="row">4</th>
                    <td>Honey</td>
                    <td>Gastón Juarez</td>
                    <td>$3000</td>
                  </tr>
                  <tr>
                    <th scope="row">5</th>
                    <td>J Bock</td>
                    <td>Maricel Carrillo</td>
                    <td>$1200</td>
                  </tr>
                  <tr>
                    <th scope="row">6</th>
                    <td>Gold</td>
                    <td>David Bowie</td>
                    <td>$1800</td>
                  </tr>
                  <tr>
                    <th scope="row">7</th>
                    <td>Pilsen</td>
                    <td>Ernesto Cortazar</td>
                    <td>$750</td>
                  </tr>
                  <tr>
                    <th scope="row">8</th>
                    <td>J Bock</td>
                    <td>Maricel Carrillo</td>
                    <td>$3600</td>
                  </tr>
                  <tr>
                    <th scope="row">9</th>
                    <td>J APA</td>
                    <td>Anibal Casares</td>
                    <td>$2550</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- /#cierre contenido pagina -->

    <!-- Comienzo del footer-->

    <footer class="bg-dark text-white pt-2 pb-0 container-fluid">
      <div class="container">
        <div class="row text-start text-md-left">
          <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
            <h5
              class="
                text-uppercase
                mb-3
                font-weight-bold
                text-warning
                titulo-pie
              "
            >
              Beer Friends Stock System
            </h5>
            <p class="pie">
              Nuestro Software maneja la gestión de tu cervecería: Clientes,
              Insumos, Stock, Ventas y mucho más..
            </p>
          </div>

          <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3 text">
            <h5
              class="
                text-uppercase
                mb-3
                font-weight-bold
                text-warning
                titulo-pie
              "
            >
              Inicio
            </h5>
            <p class="mb-2 mt-2">
              <a href="#" class="text-white pie"> Cervezas</a>
            </p>
            <p class="mb-2">
              <a href="#" class="text-white pie"> Materias Primas</a>
            </p>
            <p class="mb-2">
              <a href="#" class="text-white pie"> Clientes</a>
            </p>
          </div>

          <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
            <h5
              class="
                text-uppercase
                mb-3
                font-weight-bold
                text-warning
                titulo-pie
              "
            >
              Links
            </h5>
            <p class="mb-2">
              <a href="#" class="text-white pie"> Cuenta</a>
            </p>
            <p class="mb-2">
              <a href="#" class="text-white pie"> Registrarte</a>
            </p>
            <p class="mb-2">
              <a href="#" class="text-white pie">Ayuda</a>
            </p>
          </div>

          <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
            <h5
              class="
                text-uppercase
                mb-3
                font-weight-bold
                text-warning
                titulo-pie
              "
            >
              Contacto
            </h5>
            <p class="mb-3 pie">
              <i class="fas fa-home mr-3 pie"></i> Alberdi, Cordoba, Argentina
            </p>
            <p class="mb-2 pie">
              <i class="fas fa-envelope mr-3 pie"></i> bfstocksystem@gmail.com
            </p>
            <p></p>
            <p class="mb-2 pie">
              <i class="fas fa-phone mr-3 pie"></i> +543518073265
            </p>
          </div>
        </div>

        <hr class="mb-2 mt-0" />

        <div class="row align-items-center">
          <div class="col-md-7 col-lg-8">
            <p class="pie">
              Copyright ©2021 All rights reserved by:
              <a href="#" style="text-decoration: none">
                <strong class="text-warning"> BEER FRIENDS STOCK SYSTEM</strong>
              </a>
            </p>
          </div>

          <div class="col-md-5 col-lg-4">
            <div class="text-center text-md-right">
              <ul class="list-unstyled list-inline">
                <li class="list-inline-item">
                  <a
                    href="#"
                    class="btn-floating btn-sm text-white"
                    style="font-size: 20px"
                    ><i class="fab fa-facebook"></i
                  ></a>
                </li>
                <li class="list-inline-item">
                  <a
                    href="#"
                    class="btn-floating btn-sm text-white"
                    style="font-size: 20px"
                    ><i class="fab fa-twitter"></i
                  ></a>
                </li>
                <li class="list-inline-item">
                  <a
                    href="#"
                    class="btn-floating btn-sm text-white"
                    style="font-size: 20px"
                    ><i class="fab fa-google-plus"></i
                  ></a>
                </li>
                <li class="list-inline-item">
                  <a
                    href="#"
                    class="btn-floating btn-sm text-white"
                    style="font-size: 20px"
                    ><i class="fab fa-linkedin-in"></i
                  ></a>
                </li>
                <li class="list-inline-item">
                  <a
                    href="#"
                    class="btn-floating btn-sm text-white"
                    style="font-size: 20px"
                    ><i class="fab fa-youtube"></i
                  ></a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
      var el = document.getElementById('wrapper');
      var toggleButton = document.getElementById('menu-toggle');

      toggleButton.onclick = function () {
        el.classList.toggle('toggled');
      };
    </script>
  </body>
</html>
