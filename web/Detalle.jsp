<%-- 
    Document   : Detalle
    Created on : Sep 22, 2022, 6:35:42 PM
    Author     : tatin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Acuarela</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/6f5ad18ead.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
          <!--Font Lobster-->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Lobster+Two:ital@1&display=swap" rel="stylesheet">
        <style>
    body {
        background-color: #FFEFCE;
        background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 2000 1500'%3E%3Cdefs%3E%3CradialGradient id='a' gradientUnits='objectBoundingBox'%3E%3Cstop offset='0' stop-color='%23E3F2FD'/%3E%3Cstop offset='1' stop-color='%23FFEFCE'/%3E%3C/radialGradient%3E%3ClinearGradient id='b' gradientUnits='userSpaceOnUse' x1='0' y1='750' x2='1550' y2='750'%3E%3Cstop offset='0' stop-color='%23f1f1e6'/%3E%3Cstop offset='1' stop-color='%23FFEFCE'/%3E%3C/linearGradient%3E%3Cpath id='s' fill='url(%23b)' d='M1549.2 51.6c-5.4 99.1-20.2 197.6-44.2 293.6c-24.1 96-57.4 189.4-99.3 278.6c-41.9 89.2-92.4 174.1-150.3 253.3c-58 79.2-123.4 152.6-195.1 219c-71.7 66.4-149.6 125.8-232.2 177.2c-82.7 51.4-170.1 94.7-260.7 129.1c-90.6 34.4-184.4 60-279.5 76.3C192.6 1495 96.1 1502 0 1500c96.1-2.1 191.8-13.3 285.4-33.6c93.6-20.2 185-49.5 272.5-87.2c87.6-37.7 171.3-83.8 249.6-137.3c78.4-53.5 151.5-114.5 217.9-181.7c66.5-67.2 126.4-140.7 178.6-218.9c52.3-78.3 96.9-161.4 133-247.9c36.1-86.5 63.8-176.2 82.6-267.6c18.8-91.4 28.6-184.4 29.6-277.4c0.3-27.6 23.2-48.7 50.8-48.4s49.5 21.8 49.2 49.5c0 0.7 0 1.3-0.1 2L1549.2 51.6z'/%3E%3Cg id='g'%3E%3Cuse href='%23s' transform='scale(0.12) rotate(60)'/%3E%3Cuse href='%23s' transform='scale(0.2) rotate(10)'/%3E%3Cuse href='%23s' transform='scale(0.25) rotate(40)'/%3E%3Cuse href='%23s' transform='scale(0.3) rotate(-20)'/%3E%3Cuse href='%23s' transform='scale(0.4) rotate(-30)'/%3E%3Cuse href='%23s' transform='scale(0.5) rotate(20)'/%3E%3Cuse href='%23s' transform='scale(0.6) rotate(60)'/%3E%3Cuse href='%23s' transform='scale(0.7) rotate(10)'/%3E%3Cuse href='%23s' transform='scale(0.835) rotate(-40)'/%3E%3Cuse href='%23s' transform='scale(0.9) rotate(40)'/%3E%3Cuse href='%23s' transform='scale(1.05) rotate(25)'/%3E%3Cuse href='%23s' transform='scale(1.2) rotate(8)'/%3E%3Cuse href='%23s' transform='scale(1.333) rotate(-60)'/%3E%3Cuse href='%23s' transform='scale(1.45) rotate(-30)'/%3E%3Cuse href='%23s' transform='scale(1.6) rotate(10)'/%3E%3C/g%3E%3C/defs%3E%3Cg %3E%3Cg transform='translate(0 75)'%3E%3Ccircle fill='url(%23a)' r='3000'/%3E%3Cg opacity='0.5'%3E%3Ccircle fill='url(%23a)' r='2000'/%3E%3Ccircle fill='url(%23a)' r='1800'/%3E%3Ccircle fill='url(%23a)' r='1700'/%3E%3Ccircle fill='url(%23a)' r='1651'/%3E%3Ccircle fill='url(%23a)' r='1450'/%3E%3Ccircle fill='url(%23a)' r='1250'/%3E%3Ccircle fill='url(%23a)' r='1175'/%3E%3Ccircle fill='url(%23a)' r='900'/%3E%3Ccircle fill='url(%23a)' r='750'/%3E%3Ccircle fill='url(%23a)' r='500'/%3E%3Ccircle fill='url(%23a)' r='380'/%3E%3Ccircle fill='url(%23a)' r='250'/%3E%3C/g%3E%3Cg%3E%3Cuse href='%23g' transform='rotate(10)'/%3E%3Cuse href='%23g' transform='rotate(120)'/%3E%3Cuse href='%23g' transform='rotate(240)'/%3E%3C/g%3E%3Ccircle fill-opacity='0' fill='url(%23a)' r='3000'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E");
        background-attachment: fixed;
        background-size: cover;
    }
    
    main img{
        width: auto;
        height: 200px;
    }
    h2, h5{
        margin-bottom: 30px;
        font-family: 'Lobster Two', cursive;
        text-align: center;
    }
    p{
        text-align: justify;
    }
    </style>
    </head>
<body>
        <!-- nav -->
        <nav class="navbar fixed-top" style="background-color: #e3f2fd">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Acuarela</a>
                <a class="nav-link" href="Controlador?accion=Detalle"><h5>Detalle</h5></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="offcanvas offcanvas-end" tabindex="1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
    <div class="offcanvas-header">
                        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Acuarela</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                            <li class="nav-item">
                                <a class="nav-link" href="Inicio.jsp">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="galeria.jsp">Arte</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Materiales.jsp">Materiales</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="./Controlador?accion=Nuevo">Home<span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Integrantes.jsp">Integrantes</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a style="color: darkgray" class="nav-link dropdown-bs-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="fas fa-user"></i> ${logging}</a>
                                <ul class="dropdown-menu text-center">
                                    <li>
                                        <a class="dropdown-item" href="#"><img src="img/persona.png" alt="80" height="80"/></a>
                                        <a class="dropdown-item" href="#">${persona}</a>
                                        <a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#inicModal">${correo}</a>
                                    </li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="Controlador?accion=MisCompras">Mis Compras</a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="Controlador?accion=Salir">Cerrar Sesion</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        <div class="container mt-2">
            <div class="row">
                <c:forEach var="o" items="${obras}">
                    <div class="col-sm-4">
                        <div class="card">
                            <div class="card-header">
                                <label>${o.getTitulo()}<label> 
                            </div>
                            <div class="card-body">
                                <i>$.${o.getPrecio()}</i>
                                <img src="ControladorIMG?id=${o.getId()}" width="140" height="170">
                            </div>
                            <div class="card-footer text-center">
                                <label>${o.getDescripcion()}</label>
                                <div>
                                    <a href="Controlador?accion=AgregarCarrito&id=${o.getId()}" class="btn btn-outline-warning">Agregar a carrito</a>
                                    <a href="Controlador?accion=Pagar&id=${o.getId()}" class="btn btn-outline-info">Pagar</a>
                                </div>
                             </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
          <footer class="text-center text-white mt-4"  style="background-color: #FFEFCE;">
        <!-- Grid container -->
        <div class="container pt-4">
            <!-- Section: Social media -->
            <section class="mb-4">
                <!-- Facebook -->
                <img src="img/logos/facebook.svg" class="ms-4" alt="facebook">
    
                <!-- Twitter -->
                <img src="img/logos/twitter.svg" class="ms-4" alt="twitter">
    
                <!-- Instagram -->
                <img src="img/logos/instagram.svg"class="ms-4" alt="instagram">
    
                <!-- Linkedin -->
                <img src="img/logos/linkedin.svg" class="ms-4"alt="linkedin">
                
                <!-- Github -->
                <img src="img/logos/github.svg" class="ms-4" alt="">
                <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!" role="button"
                    data-mdb-ripple-color="dark"><i class="fab fa-github"></i></a>
            </section>
            <!-- Section: Social media -->
        </div>
        <!-- Grid container -->
    
        <!-- Copyright -->
        <div class="text-center text-dark p-3" style="background-color: #e3f2fd;">
            © 2022 Copyright:
            <a class="text-dark" href="integrantes.jsp">Made by: Andres & Co.</a>
        </div>
        <!-- Copyright -->
    </footer>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
    </body>
</html>
