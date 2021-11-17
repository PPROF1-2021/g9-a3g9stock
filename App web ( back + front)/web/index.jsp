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
        <%
            HttpSession misesion = request.getSession();
            String usuario = (String) misesion.getAttribute("usuario");
            

            if (usuario == null) {
                response.sendRedirect("login.jsp");
            } else {
            String nombre = (String) misesion.getAttribute("nombreUsu");
            System.out.println("llega al jsp con" + nombre);

        %>
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
                    <form action="SvCerrarSesion" method="GET">
                        <a href="SvCerrarSesion" class="list-group-item list-group-item-action bg-transparent text-danger fw-bold">
                            <i class="fas fa-power-off me-2"></i>Logout
                        </a>
                    </form>
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
                                    <i class="fas fa-user me-2"></i><%= nombre%>
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

                <!-- /cierre menú -->

                <!-- Contenido de la página -->
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-white">Dashboard</h1>
                        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-warning shadow-sm"><i
                                class="fas fa-download fa-sm text-dark-50"> </i> Reporte Generado</a>
                    </div>
                    <!-- Content Row -->
                    <div class="row">
                        <!-- ganancias Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4" onmouseover="this.title = 'Ganancias obtenidas desde el dia 1ro del mes en curso'">
                            <div class="bg-light border-start border-warning border-5  Default shadow  h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-warning fw-bold text-uppercase mb-2" >
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
                        <div class="col-xl-3 col-md-6 mb-4" onmouseover="this.title = 'Porcentaje de materias primas que quedan aún en stock'">
                            <div class="bg-light border-start border-info border-5  Default shadow  h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-info fw-bold text-uppercase mb-1" >Stock Mat.Primas
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
                        <div class="col-xl-3 col-md-6 mb-4" onmouseover="this.title = 'Tareas pendientes del día'">
                            <div class="bg-light border-start border-danger border-5  Default shadow  h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-danger fw-bold text-uppercase mb-1" >Tareas
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
                        <div class="col-xl-3 col-md-6 mb-4" onmouseover="this.title = 'Pedidos pendientes de armar'">
                            <div class="bg-light border-start border-success border-5  Default shadow  h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success fw-bold text-uppercase mb-1">
                                                Pedidos</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800" >18</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-dolly text-success fa-2x"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--BALANCE-INFO-ESTADISTICAS-->
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-6 col-sm-3 " onmouseover="this.title = 'Permite ver el balance de la empresa'">
                                <div class="bg-light border-end border-warning border-5  Default shadow  h-100 py-2">
                                    <div class="card-body">
                                        <div class="text-xs font-weight-bold text-warning fw-bold text-uppercase mb-1" >Balance
                                        </div>
                                        <img class="img-fluid rounded mx-auto d-block" style="width: 5rem;" src="assets/scale.png" alt="...">
                                        <br>

                                        <div class="d-grid">
                                            <button type="button" class="btn btn-warning btn-block fw-bold">Ver Balance</button>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="col-6 col-sm-6"  onmouseover="this.title = 'Pedidos recibidos y entregados en el año. Stock de barriles y envases en uso'">
                                <div class="bg-light border-end border-info border-5  Default shadow  h-100 py-2">
                                    <div class="card-body">
                                        <div class="text-xs font-weight-bold text-info fw-bold text-uppercase mb-1"> Información
                                        </div>
                                        <div class="progress-card">
                                            <div class="d-flex justify-content-between mb-1">
                                                <span class="text-muted">Pedidos</span>
                                                <span class="text-muted fw-bold"> 215 </span>
                                            </div>
                                            <div class="progress mb-2" style="height: 7px;">
                                                <div class="progress-bar bg-success" role="progressbar" style="width: 78%" aria-valuenow="78"
                                                     aria-valuemin="0" aria-valuemax="100" data-toggle="tooltip" data-placement="top" title="78%">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="progress-card">
                                            <div class="d-flex justify-content-between mb-1">
                                                <span class="text-muted">Pedidos Entregados</span>
                                                <span class="text-muted fw-bold"> 576</span>
                                            </div>
                                            <div class="progress mb-2" style="height: 7px;">
                                                <div class="progress-bar bg-info" role="progressbar" style="width: 65%" aria-valuenow="60"
                                                     aria-valuemin="0" aria-valuemax="100" data-toggle="tooltip" data-placement="top" title="65%">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="progress-card">
                                            <div class="d-flex justify-content-between mb-1">
                                                <span class="text-muted">Stock Barrilles </span>
                                                <span class="text-muted fw-bold"> 80%</span>
                                            </div>
                                            <div class="progress mb-2" style="height: 7px;">
                                                <div class="progress-bar bg-danger" role="progressbar" style="width: 80%" aria-valuenow="70"
                                                     aria-valuemin="0" aria-valuemax="100" data-toggle="tooltip" data-placement="top" title="70%">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="progress-card">
                                            <div class="d-flex justify-content-between mb-1">
                                                <span class="text-muted">Stock Envases </span>
                                                <span class="text-muted fw-bold"> 40%</span>
                                            </div>
                                            <div class="progress mb-2" style="height: 7px;">
                                                <div class="progress-bar bg-warning" role="progressbar" style="width: 40%" aria-valuenow="70"
                                                     aria-valuemin="0" aria-valuemax="100" data-toggle="tooltip" data-placement="top" title="70%">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Evolución de ventas-->
                            <div class="col-6 col-sm-3"  onmouseover="this.title = 'Informe de las ventas por períodos de tiempo a seleccionar'">
                                <div class="bg-light border-end border-danger border-5  Default shadow  h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-xs font-weight-bold text-danger fw-bold text-uppercase mb-1"> Evolución de ventas
                                                </div>

                                            </div>
                                            <div class="col-mr-">
                                                <div class="col-auto">
                                                    <img class="img-fluid rounded mx-auto d-block" style="width: 5rem;" src="assets/business.png"
                                                         alt="...">
                                                    <br>
                                                    <div class="d-grid">
                                                        <button type="button" class="btn btn-danger btn-block fw-bold">Informe</button>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <!--tablas contenido -->
                <div class="row">
                    <div class="col-xl-6 col-md-6 mb-4" onmouseover="this.title = 'Información de ventas desde el día 1ro del mes en curso, expresado en litros y variedad de mayor salida'">
                        <div class="bg-light border-top border-warning border-5  Default shadow  h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-warning fw-bold text-uppercase mb-1" > Tabla de Vendedores
                                        </div>
                                        <div class="card-body">
                                            <table class="table table-head-bg-success table-striped table-hover">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">#</th>
                                                        <th scope="col">Cliente</th>
                                                        <th scope="col">Cantidad</th>
                                                        <th scope="col">Variedad</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>1</td>
                                                        <td>Angie</td>
                                                        <td>250</td>
                                                        <td>Rubia Dorada</td>
                                                    </tr>
                                                    <tr>
                                                        <td>2</td>
                                                        <td>Jesica</td>
                                                        <td>220</td>
                                                        <td>Colorada</td>
                                                    </tr>
                                                    <tr>
                                                        <td>3</td>
                                                        <td>Domingo</td>
                                                        <td>190</td>
                                                        <td>Colorada</td>
                                                    </tr>
                                                    <tr>
                                                        <td>4</td>
                                                        <td>Carolina</td>
                                                        <td>187</td>
                                                        <td>Porter Outmeal</td>
                                                    </tr>
                                                    <tr>
                                                        <td>5</td>
                                                        <td>Alejandra</td>
                                                        <td>150</td>
                                                        <td>Rubia Dorada</td>
                                                    </tr>

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-6 col-md-6 mb-4" onmouseover="this.title = 'Tareas pendientes del día'">  
                        <div class="bg-light border-top border-info border-5  Default shadow  h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-info fw-bold text-uppercase mb-1"> Pendientes
                                        </div>
                                    </div>

                                    <div class="table-full-width">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input class="form-check-input  select-all-checkbox" type="checkbox"
                                                                       data-select="checkbox" data-target=".task-select">
                                                                <span class="form-check-sign"></span>
                                                            </label>
                                                        </div>
                                                    </th>
                                                    <th>Tareas</th>
                                                    <th>Acción</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input class="form-check-input task-select" type="checkbox">
                                                                <span class="form-check-sign"></span>
                                                            </label>
                                                        </div>
                                                    </td>
                                                    <td>Comprar más barriles</td>
                                                    <td class="td-actions text-right">
                                                        <div class="form-button-action">
                                                            <button type="button" data-toggle="tooltip" title="Edit Task"
                                                                    class="btn btn-link btn-simple-primary">
                                                                <i class="la la-edit"></i>
                                                            </button>
                                                            <button type="button" data-toggle="tooltip" title="Remove"
                                                                    class="btn btn-link btn-simple-danger">
                                                                <i class="la la-times"></i>
                                                            </button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input class="form-check-input task-select" type="checkbox">
                                                                <span class="form-check-sign"></span>
                                                            </label>
                                                        </div>
                                                    </td>
                                                    <td>Llamar a proveedores de Bs.As.</td>
                                                    <td class="td-actions text-right">
                                                        <div class="form-button-action">
                                                            <button type="button" data-toggle="tooltip" title="Edit Task"
                                                                    class="btn btn-link btn-simple-primary">
                                                                <i class="la la-edit"></i>
                                                            </button>
                                                            <button type="button" data-toggle="tooltip" title="Remove"
                                                                    class="btn btn-link btn-simple-danger">
                                                                <i class="la la-times"></i>
                                                            </button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input class="form-check-input task-select" type="checkbox">
                                                                <span class="form-check-sign"></span>
                                                            </label>
                                                        </div>
                                                    </td>
                                                    <td>Controlar receta nueva
                                                    </td>
                                                    <td class="td-actions text-right">
                                                        <div class="form-button-action">
                                                            <button type="button" data-toggle="tooltip" title="Edit Task"
                                                                    class="btn btn-link btn-simple-primary">
                                                                <i class="la la-edit"></i>
                                                            </button>
                                                            <button type="button" data-toggle="tooltip" title="Remove"
                                                                    class="btn btn-link btn-simple-danger">
                                                                <i class="la la-times"></i>
                                                            </button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input class="form-check-input task-select" type="checkbox">
                                                                <span class="form-check-sign"></span>
                                                            </label>
                                                        </div>
                                                    </td>
                                                    <td>Realizar compra de envases</td>
                                                    <td class="td-actions text-right">
                                                        <div class="form-button-action">
                                                            <button type="button" data-toggle="tooltip" title="Edit Task"
                                                                    class="btn btn-link btn-simple-primary">
                                                                <i class="la la-edit"></i>
                                                            </button>
                                                            <button type="button" data-toggle="tooltip" title="Remove"
                                                                    class="btn btn-link btn-simple-danger">
                                                                <i class="la la-times"></i>
                                                            </button>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="card-footer ">
                                    <div class="stats">
                                        <i class="now-ui-icons loader_refresh spin"></i> Actualizado hace 3 minutos
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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
                <h5 class="
                    text-uppercase
                    mb-3
                    font-weight-bold
                    text-warning
                    titulo-pie
                    ">
                    Beer Friends Stock System
                </h5>
                <p class="pie">
                    Nuestro Software maneja la gestión de tu cervecería: Clientes,
                    Insumos, Stock, Ventas y mucho más..
                </p>
            </div>

            <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3 text">
                <h5 class="
                    text-uppercase
                    mb-3
                    font-weight-bold
                    text-warning
                    titulo-pie
                    ">
                    Inicio
                </h5>
                <p class="mb-2 mt-2">
                    <a href="stockCerveza.html" class="text-white pie"> Cervezas</a>
                </p>
                <p class="mb-2">
                    <a href="Stockmateriaprima.html" class="text-white pie"> Materias Primas</a>
                </p>
                <p class="mb-2">
                    <a href="pedidosClientes.html" class="text-white pie"> Clientes</a>
                </p>
            </div>

            <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
                <h5 class="
                    text-uppercase
                    mb-3
                    font-weight-bold
                    text-warning
                    titulo-pie
                    ">
                    Links
                </h5>
                <p class="mb-2">
                    <a href="login.html" class="text-white pie"> Cuenta</a>
                </p>
                <p class="mb-2">
                    <a href="registroUsuarios.html" class="text-white pie"> Registrarte</a>
                </p>
                <p class="mb-2">
                    <a href="index.html" class="text-white pie">Ayuda</a>
                </p>
            </div>

            <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
                <h5 class="
                    text-uppercase
                    mb-3
                    font-weight-bold
                    text-warning
                    titulo-pie
                    ">
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
                            <a href="#" class="btn-floating btn-sm text-white" style="font-size: 20px"><i
                                    class="fab fa-facebook"></i></a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#" class="btn-floating btn-sm text-white" style="font-size: 20px"><i
                                    class="fab fa-twitter"></i></a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#" class="btn-floating btn-sm text-white" style="font-size: 20px"><i
                                    class="fab fa-google-plus"></i></a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#" class="btn-floating btn-sm text-white" style="font-size: 20px"><i
                                    class="fab fa-linkedin-in"></i></a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#" class="btn-floating btn-sm text-white" style="font-size: 20px"><i
                                    class="fab fa-youtube"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- fin del footer-->


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
<script>
                        var el = document.getElementById('wrapper');
                        var toggleButton = document.getElementById('menu-toggle');

                        toggleButton.onclick = function () {
                            el.classList.toggle('toggled');
                        };
</script>
<%         }
%>  
</body>
</html>
