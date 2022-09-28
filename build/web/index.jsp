<%-- 
    Document   : index
    Created on : Sep 22, 2022, 6:04:02 PM
    Author     : tatin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    </head>
    <body> 
            <nav class="navbar" style="background-color: #e3f2fd;">
            <div class="container-fluid">
              <a class="navbar-brand" href="#">Acuarela</a>
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
                    <a class="nav-link disabled">Carrito</a>
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
                                <img src="ControladorIMG?id=${o.getId()}" width="220" height="200">
                            </div>
                            <div class="card-footer text-center">
                                <label>${o.getDescripcion()}</label>
                                <div>
                                    <a href="" class="btn btn-outline-warning">Agregar a carrito</a>
                                    <a href="" class="btn btn-outline-info">Pagar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>    
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
    </body>
</html>
