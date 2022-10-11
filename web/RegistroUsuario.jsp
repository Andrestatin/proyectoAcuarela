<%-- 
    Document   : RegistroUsuario
    Created on : Oct 6, 2022, 1:30:17 PM
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
    </head>
    <body>
        <!-- nav -->
        <nav class="navbar fixed-top" style="background-color: #e3f2fd">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Acuarela</a>
                <a class="nav-link" href="Controlador?accion=Carrito">Sigue Decorando</a>
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
<!-- Iniciar Sesion -->
<div class="modal fade" id="inicModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable">
      <div class="modal-content">
        <div class="modal-header text-center">
            <div class="text-center">
          <h1 class="modal-title fs-5" id="staticBackdropLabel">Inicia tu Sesión</h1>
            </div>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
          <div class="text-center mt-2">
              <img src="img/persona.png" alt="80" height="80"/>
          </div>           
        <div class="modal-body">
            <form action="Controlador">  
                            <div class="form-group">
                                <label>Correo Electrónico</label>
                                <input type="email" name="txtemail" class="form-control" required placeholder="email@example.com">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" name="txtpass" class="form-control" pattern="[A-Za-z][A-Za-z0-9]*[0-9][A-Za-z0-9]*" title="Debe contener Mayúsculas y minúsculas, al menos un dígito" required placeholder="Ejemplo:Acuarela49">
                            </div>                                  
                            <button type="submit" data-toggle="modal" data-target="#inicModal" name="accion" value="Validar" class="btn btn-danger btn-block mt-4">Iniciar</button>
                        </form>
                    </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#regModal">Registrarse</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>                  
                </div>
            </div>
     </div>
 </div>
<!-- Registrar -->
<div class="modal fade" id="regModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable">
      <div class="modal-content">
        <div class="modal-header text-center">
            <div class="text-center">
          <h1 class="modal-title fs-5" id="staticBackdropLabel">Si vas a comprar Registrate!</h1>
            </div>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
          <div class="text-center mt-2">
              <img src="img/persona.png" alt="80" height="80"/>
          </div>           
        <div class="modal-body">
            <form action="Controlador">                               
                            <div class="form-group">
                                <label>primer Nombre</label>
                                <input type="text" name="txtnom" class="form-control" required placeholder="Ejemplo: Andrés">
                            </div>
                            <div class="form-group">
                                <label>Segundo Nombre</label>
                                <input type="text" name="txtnom2" class="form-control" placeholder="Ejemplo: Sait">
                            </div>
                            <div class="form-group">
                                <label>primer Apellido</label>
                                <input type="text" name="txtapell" class="form-control" required placeholder="Ejemplo: Vega">
                            </div>
                            <div class="form-group">
                                <label>Segundo Apellido</label>
                                <input type="text" name="txtapell2" class="form-control" placeholder="Ejemplo: Gómez">
                            </div>
                            <div class="form-group">
                                <label>Edad</label>
                                <input type="number" name="age" class="form-control" min="18" max="90" required placeholder="+18">
                            </div>
                            <div class="form-group">
                                <label>Dirección</label>
                                <input type="text" name="txtdire" class="form-control" required placeholder="Ejemplo: cra 49 #186-26">
                                <label>
                                    Número de Bloque, Casa y/o Apartamento
                                </label>
                                <input type="text" name="txtdiredet" class="form-control" placeholder="Ejemplo: torre 8 Apto 302">
                            </div>
                            <div class="form-group">
                                <label>Ciudad</label>
                                <input type="text" name="txtciu" class="form-control" placeholder="Ejemplo: Leticia">
                            </div>
                            <div class="form-group">
                                <label>Departamento</label>
                                <input type="text" name="txtdep" class="form-control" placeholder="Ejemplo: Amazonas">
                            </div>
                            <div class="form-group">
                                <p>Tipo de Documento</p>
                                <select class="form-control" id="dropdown" name="role" required>
                                    <option value="">(Seleccione su tipo de Documento)</option>
                                    <option class="ub">Cédula de Ciudadania</option>         
                                    <option class="ub">Pasaporte tarjeta de extranjeria</option>
                                    <option class="ub">Cedula de extranjeria</option>
                                    <option class="ub">Pasaporte</option>
                                    <option class="ub">Documento de identificacion extranjero</option>
                                </select>
                                <label>No</label>
                                <input type="text" name="txtcc" class="form-control" required placeholder="Ejemplo: 27245362">
                            </div>
                            <div class="form-group">
                                <label>Correo Electrónico</label>
                                <input type="email" name="txtemail" class="form-control" required placeholder="email@example.com">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" name="txtpass" class="form-control" pattern="[A-Za-z][A-Za-z0-9]*[0-9][A-Za-z0-9]*" title="Debe contener Mayúsculas y minúsculas, al menos un dígito" required placeholder="Ejemplo:Acuarela49">
                            </div>                                  
                            <button type="submit" name="accion" value="Registrar" class="btn btn-danger btn-block mt-4">Crear Cuenta</button>
                        </form>
                    </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#inicModal">Iniciar Sesión</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
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