<%-- 
    Document   : Carrito
    Created on : Sep 22, 2022, 6:35:31 PM
    Author     : tatin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Acuarela</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/6f5ad18ead.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
    <nav class="navbar" style="background-color: #e3f2fd;">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Acuarela</a>
            <h4><a class="nav-link" href="Controlador?accion=home">Sigue Decorando</a></h4>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="Controlador?accion=home">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Arte</a>
                    </li>
                    <li class="nav-item">

                    </li>
                </ul>
                <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
                <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Iniciar Sesion
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Registrarse</a></li>
                            <li><a class="dropdown-item" href="#">iniciar sesion</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="#">Cerrar sesion</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container mt-4">
        <h3>Carrito</h3>
        <br>
        <div class="row">
            <div class="col-sm-8">
                <table class="table table-hover">
                    <thead>
                        <tr class="table-info">
                            <th>ITEM</th>
                            <th>TITULO</th>
                            <th>DESCRIPCION</th>
                            <th>PRECIO</th>
                            <th>CANTIDAD</th>
                            <th>SUBTOTAL</th>
                            <th>ACCION</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="carr" items="${carrito}">
                            <tr>
                                <td>${carr.getItem()}</td>
                                <td>${carr.getTitulo()}</td>
                                <td>
                                    <img src="ControladorIMG?id=${carr.getId_obra()}" width="100" height="100">
                                    <br>
                                    ${carr.getDescripcion()}
                                </td>
                                <td>${carr.getPrecioCompra()}</td>
                                <td>
                                    <input type="hidden" id="idobr" value="${carr.getId_obra()}">
                                    <input type="number"  id="Cantidad" value="${carr.getCantidad()}"  class="form-control text-center" min="1">

                                </td>
                                <td>${carr.getSubtotal()}</td>
                                <td class="text-center">
                                    <input type="hidden" id="ido" value="${carr.getItem()}">
                                    <a href="#" id="btnDelete" class="btn"><i class="fa fa-trash"></i></a>
                                </td>
                            </tr>   
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="col-sm-4">
                <div class="card">
                    <div class="card-header">
                        <h3>Generar Compra</h3> 
                    </div>
                    <div class="card-body">
                        <label>Subtotal:</label>
                        <input type="text" value="$${totalPagar}0 Col." readonly="" class="form-control">
                        <label>Descuento:</label>
                        <input type="text" value="$0.00 Col." readonly="" class="form-control">
                        <label>Total Pagar:</label>
                        <input type="text" value="$${totalPagar}0 Col." readonly="" class="form-control">
                    </div>
                    <div class="card-footer d-grid gap-2">
                        <a href="#" class="btn btn-outline-warning">Realizar Pago</a>
                        <a href="Controlador?accion=GenerarCompra" class="btn btn-outline-danger">Generar Compra</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.11.6/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="js/funciones.js" type="text/javascript"></script>
</body>
</html>
