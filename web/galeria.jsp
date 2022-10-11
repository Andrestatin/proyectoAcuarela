<%-- 
    Document   : galeria
    Created on : Oct 7, 2022, 4:24:38 PM
    Author     : tatin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Galeria</title>
    <script src="https://kit.fontawesome.com/6f5ad18ead.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous" />
    <link href="css/modal.css" rel="stylesheet" type="text/css"/>
    <!--Font Lobster-->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Lobster+Two:ital@1&display=swap" rel="stylesheet">

    <style>
      h3 {
        padding: 5px 0 0;
        text-align: center;
        font-weight: bold;
      }
        h2, h5{
        margin-bottom: 30px;
        font-family: 'Lobster Two', cursive;
        text-align: center;
        }
  
      body {
        background-color: #FFEFCE;
        background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 2000 1500'%3E%3Cdefs%3E%3CradialGradient id='a' gradientUnits='objectBoundingBox'%3E%3Cstop offset='0' stop-color='%23E3F2FD'/%3E%3Cstop offset='1' stop-color='%23FFEFCE'/%3E%3C/radialGradient%3E%3ClinearGradient id='b' gradientUnits='userSpaceOnUse' x1='0' y1='750' x2='1550' y2='750'%3E%3Cstop offset='0' stop-color='%23f1f1e6'/%3E%3Cstop offset='1' stop-color='%23FFEFCE'/%3E%3C/linearGradient%3E%3Cpath id='s' fill='url(%23b)' d='M1549.2 51.6c-5.4 99.1-20.2 197.6-44.2 293.6c-24.1 96-57.4 189.4-99.3 278.6c-41.9 89.2-92.4 174.1-150.3 253.3c-58 79.2-123.4 152.6-195.1 219c-71.7 66.4-149.6 125.8-232.2 177.2c-82.7 51.4-170.1 94.7-260.7 129.1c-90.6 34.4-184.4 60-279.5 76.3C192.6 1495 96.1 1502 0 1500c96.1-2.1 191.8-13.3 285.4-33.6c93.6-20.2 185-49.5 272.5-87.2c87.6-37.7 171.3-83.8 249.6-137.3c78.4-53.5 151.5-114.5 217.9-181.7c66.5-67.2 126.4-140.7 178.6-218.9c52.3-78.3 96.9-161.4 133-247.9c36.1-86.5 63.8-176.2 82.6-267.6c18.8-91.4 28.6-184.4 29.6-277.4c0.3-27.6 23.2-48.7 50.8-48.4s49.5 21.8 49.2 49.5c0 0.7 0 1.3-0.1 2L1549.2 51.6z'/%3E%3Cg id='g'%3E%3Cuse href='%23s' transform='scale(0.12) rotate(60)'/%3E%3Cuse href='%23s' transform='scale(0.2) rotate(10)'/%3E%3Cuse href='%23s' transform='scale(0.25) rotate(40)'/%3E%3Cuse href='%23s' transform='scale(0.3) rotate(-20)'/%3E%3Cuse href='%23s' transform='scale(0.4) rotate(-30)'/%3E%3Cuse href='%23s' transform='scale(0.5) rotate(20)'/%3E%3Cuse href='%23s' transform='scale(0.6) rotate(60)'/%3E%3Cuse href='%23s' transform='scale(0.7) rotate(10)'/%3E%3Cuse href='%23s' transform='scale(0.835) rotate(-40)'/%3E%3Cuse href='%23s' transform='scale(0.9) rotate(40)'/%3E%3Cuse href='%23s' transform='scale(1.05) rotate(25)'/%3E%3Cuse href='%23s' transform='scale(1.2) rotate(8)'/%3E%3Cuse href='%23s' transform='scale(1.333) rotate(-60)'/%3E%3Cuse href='%23s' transform='scale(1.45) rotate(-30)'/%3E%3Cuse href='%23s' transform='scale(1.6) rotate(10)'/%3E%3C/g%3E%3C/defs%3E%3Cg %3E%3Cg transform='translate(0 75)'%3E%3Ccircle fill='url(%23a)' r='3000'/%3E%3Cg opacity='0.5'%3E%3Ccircle fill='url(%23a)' r='2000'/%3E%3Ccircle fill='url(%23a)' r='1800'/%3E%3Ccircle fill='url(%23a)' r='1700'/%3E%3Ccircle fill='url(%23a)' r='1651'/%3E%3Ccircle fill='url(%23a)' r='1450'/%3E%3Ccircle fill='url(%23a)' r='1250'/%3E%3Ccircle fill='url(%23a)' r='1175'/%3E%3Ccircle fill='url(%23a)' r='900'/%3E%3Ccircle fill='url(%23a)' r='750'/%3E%3Ccircle fill='url(%23a)' r='500'/%3E%3Ccircle fill='url(%23a)' r='380'/%3E%3Ccircle fill='url(%23a)' r='250'/%3E%3C/g%3E%3Cg%3E%3Cuse href='%23g' transform='rotate(10)'/%3E%3Cuse href='%23g' transform='rotate(120)'/%3E%3Cuse href='%23g' transform='rotate(240)'/%3E%3C/g%3E%3Ccircle fill-opacity='0' fill='url(%23a)' r='3000'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E");
        background-attachment: fixed;
        background-size: cover;
      }
    </style>
</head>
<body>
    <header>
             <!-- nav -->
            <nav class="navbar fixed-top" style="background-color: #e3f2fd">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">Acuarela</a>
                    <a class="nav-link" href="Controlador?accion=home"><h3>Arte</h3></a>
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
                                    <a class="nav-link active" aria-current="page" href="./Controlador?accion=Nuevo">Tienda<span class="sr-only"></span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="Integrantes.jsp">Integrantes</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
      </header>
    <!----------->
      <main style="margin-top: 100px" >
        <div class="container text-center mostarModal"  >
          <div class="row row-cols-1 row-cols-lg-4 g-5" style="font-style: italic">
            <div class="col" id="mostarModal" >
              <div class="card card1">
                <a href="#modal">
                  <img src="img/Ayacucho.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Ayacucho</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal1" >
              <div class="card">
                <a href="#modal1" >
                  <img src="img/Barcos.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Barcos</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal2" >
              <div class="card">
                <a href="#modal2" >
                  <img src="img/Bicicleta y mujer.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Bicicleta y mujer</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal3" >
              <div class="card">
                <a href="#modal3" >
                  <img src="img/Bote 01.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Bote</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal4" >
              <div class="card">
                <a href="#modal4">
                  <img src="img/Cantante.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Cantante</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal5" >
              <div class="card">
                <a href="#modal5">
                  <img src="img/Carolina.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Carolina</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal6" >
              <div class="card">
                <a href="#modal6">
                  <img src="img/Casa museo el castillo.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Casa museo el Castillo</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal7" >
              <div class="card">
                <a href="#modal7">
                  <img src="img/Claustro.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Claustro</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal8" >
              <div class="card">
                <a href="#modal8">
                  <img src="img/Cosette.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Cosette</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal9" >
              <div class="card">
                <a href="#modal9">
                  <img src="img/Costa y cielo.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Costa y cielo</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal10" >
              <div class="card">
                <a href="#modal10">
                  <img src="img/Costas y mar.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Costa y mar</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal11" >
              <div class="card">
                <a href="#modal11">
                  <img src="img/Daniela se va.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Daniela se va</h5>
                </div>
              </div>
            </div>
    
            <div class="col" id="mostarModal12" >
              <div class="card card1">
                <a href="#modal12">
                  <img src="img/Daniela_ un recuerdo.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Daniela un recuerdo</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal13" >
              <div class="card">
                <a href="#modal13">
                  <img src="img/DC.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">DC</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal14" >
              <div class="card">
                <a href="#modal14">
                  <img src="img/Desconocidas.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Desconocidas</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal15" >
              <div class="card">
                <a href="#modal15">
                  <img src="img/Dj.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Dj</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal16" >
              <div class="card">
                <a href="#modal16">
                  <img src="img/El pescador_.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">El pescador</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal17" >
              <div class="card">
                <a href="#modal17">
                  <img src="img/Elefante.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Elefante</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal18" >
              <div class="card">
                <a href="#modal18">
                  <img src="img/Europa.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Europa</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal19" >
              <div class="card">
                <a href="#modal19">
                  <img src="img/Fotos.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Fotos</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal20" >
              <div class="card">
                <a href="#modal20">
                  <img src="img/Francia oh Francia_.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Francia oh Francia</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal21" >
              <div class="card">
                <a href="#modal21">
                  <img src="img/Fuente.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Fuente</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal22" >
              <div class="card">
                <a href="#modal22">
                  <img src="img/Jaguar.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Jaguar</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal23" >
              <div class="card">
                <a href="#modal23">
                  <img src="img/Jardín botánico_.jpg" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Jardín Botánico</h5>
                </div>
              </div>
            </div>
            <!------------------------++++++++++-->
            <div class="col" id="mostarModal24" >
              <div class="card card1">
                <a href="#modal24">
                  <img src="img/Junin.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Junin</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal25" >
              <div class="card">
                <a href="#modal25">
                  <img src="img/Leona.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Leona</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal26" >
              <div class="card">
                <a href="#modal26">
                  <img src="img/Lugares.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Lugares</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal27" >
              <div class="card">
                <a href="#modal27">
                  <img src="img/Mirando al horizonte.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Mirando al horizonte</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal28" >
              <div class="card">
                <a href="#modal28">
                  <img src="img/Monjes.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Monjes</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal29" >
              <div class="card">
                <a href="#modal29">
                  <img src="img/Mujer oriental.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Mujer oriental</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal30" >
              <div class="card">
                <a href="#modal30">
                  <img src="img/Oh Francia_.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Oh Francia</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal31" >
              <div class="card">
                <a href="#modal31">
                  <img src="img/Otraparte.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Otra parte</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal32" >
              <div class="card">
                <a href="#modal32">
                  <img src="img/Palacio egipcio_.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Pacio egipcio</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal33" >
              <div class="card">
                <a href="#modal33">
                  <img src="img/Parque Bolívar_.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Parque Bolivar</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal34" >
              <div class="card">
                <a href="#modal34">
                  <img src="img/Parque de las luces_.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Parque de las luces</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal35" >
              <div class="card">
                <a href="#modal35">
                  <img src="img/Prado.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Prado</h5>
                </div>
              </div>
            </div>
    
            <div class="col" id="mostarModal36" >
              <div class="card card1">
                <a href="#modal36">
                  <img src="img/Rafael Uribe Uribe_.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Rafael Uribe Uribe</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal37" >
              <div class="card">
                <a href="#modal7">
                  <img src="img/RGIII 01.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">RGIII 01</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal38" >
              <div class="card">
                <a href="#modal38">
                  <img src="img/RGIII 02.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">RGIII 02</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal39" >
              <div class="card">
                <a href="#modal39">
                  <img src="img/Rusia.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Rusia</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal40" >
              <div class="card">
                <a href="#modal40">
                  <img src="img/San Juan_.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">San Juan</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal41" >
              <div class="card">
                <a href="#modal41">
                  <img src="img/Santa Marta y sus muelles.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Santa Marta y sus muelles</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal42" >
              <div class="card">
                <a href="#modal42">
                  <img src="img/Sasha.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Sasha</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal43" >
              <div class="card">
                <a href="#modal43">
                  <img src="img/Verdes y aguas.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Verdes y aguas</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal44" >
              <div class="card">
                <a href="#modal44">
                  <img src="img/Vías nostálgicas_.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Vías nostálgicas</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal45" >
              <div class="card">
                <a href="#modal45">
                  <img src="img/Wilmar 01.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Wilmar 01</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal46" >
              <div class="card">
                <a href="#modal46">
                  <img src="img/Wilmar 02.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Wilmar 02</h5>
                </div>
              </div>
            </div>
            <div class="col" id="mostarModal47" >
              <div class="card">
                <a href="#modal47">
                  <img src="img/Zarpando al mar.jpg" height="200px" class="card-img-top" alt="..." />
                </a>
                <div class="card-body">
                  <h5 class="card-title">Zarpando al mar</h5>
                </div>
              </div>
            </div>
          </div>
        </div>
      </main>

      <!-------------------------------------->
      <section id="modal" class="modal">
        <div class="modal__container1">
            <a href="#mostarModal" class="cerrar-modal">
              <img src="img/Ayacucho.jpg" class="modal__img" alt="">
            </a> 
        </div>
      </section>
      <section id="modal1" class="modal">
        <div class="modal__container2">
            <a href="#mostarModal1" class="cerrar-modal">
              <img src="img/Barcos.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>
      <section id="modal2" class="modal">
        <div class="modal__container1">
            <a href="#mostarModal2" class="cerrar-modal">
              <img src="img/Bicicleta y mujer.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>
      <section id="modal3" class="modal">
        <div class="modal__container2">
            <a href="#mostarModal3" class="cerrar-modal">
              <img src="img/Bote 01.jpg" class="modal__img" alt="">
            </a> 
        </div>
      </section>
      <section id="modal4" class="modal">
        <div class="modal__container2">
            <a href="#mostarModal4" class="cerrar-modal">
              <img src="img/Cantante.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>
      <section id="modal5" class="modal">
        <div class="modal__container2">
            <a href="#mostarModal5" class="cerrar-modal">
              <img src="img/Carolina.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>
      <section id="modal6" class="modal">
        <div class="modal__container1">
            <a href="#mostarModal6" class="cerrar-modal">
              <img src="img/Casa museo el castillo.jpg" class="modal__img" alt="">
            </a> 
        </div>
      </section>
      <section id="modal7" class="modal">
        <div class="modal__container2">
            <a href="#mostarModal7" class="cerrar-modal">
              <img src="img/Claustro.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>
      <section id="modal8" class="modal">
        <div class="modal__container1">
            <a href="#mostarModal8" class="cerrar-modal">
              <img src="img/Cosette.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>
      <section id="modal9" class="modal">
        <div class="modal__container2">
            <a href="#mostarModal9" class="cerrar-modal">
              <img src="img/Costa y cielo.jpg" class="modal__img" alt="">
            </a> 
        </div>
      </section>
      <section id="modal10" class="modal">
        <div class="modal__container1">
            <a href="#mostarModal10" class="cerrar-modal">
              <img src="img/Costas y mar.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>
      <section id="modal11" class="modal">
        <div class="modal__container1">
            <a href="#mostarModal11" class="cerrar-modal">
              <img src="img/Daniela se va.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>
      <section id="modal12" class="modal">
        <div class="modal__container1">
            <a href="#mostarModal12" class="cerrar-modal">
              <img src="img/Daniela_ un recuerdo.jpg" class="modal__img" alt="">
            </a> 
        </div>
      </section>
      <section id="modal13" class="modal">
        <div class="modal__container1">
            <a href="#mostarModal13" class="cerrar-modal">
              <img src="img/DC.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>
      <section id="modal14" class="modal">
        <div class="modal__container1">
            <a href="#mostarModal14" class="cerrar-modal">
              <img src="img/Desconocidas.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>
      <section id="modal15" class="modal">
        <div class="modal__container1">
            <a href="#mostarModal15" class="cerrar-modal">
              <img src="img/Dj.jpg" class="modal__img" alt="">
            </a> 
        </div>
      </section>
      <section id="modal16" class="modal">
        <div class="modal__container2">
            <a href="#mostarModal16" class="cerrar-modal">
              <img src="img/El pescador_.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>
      <section id="modal17" class="modal">
        <div class="modal__container1">
            <a href="#mostarModal17" class="cerrar-modal">
              <img src="img/Elefante.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>
      <section id="modal18" class="modal">
        <div class="modal__container2">
            <a href="#mostarModal18" class="cerrar-modal">
              <img src="img/Europa.jpg" class="modal__img" alt="">
            </a> 
        </div>
      </section>
      <section id="modal19" class="modal">
        <div class="modal__container1">
            <a href="#mostarModal19" class="cerrar-modal">
              <img src="img/Fotos.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>
      <section id="modal20" class="modal">
        <div class="modal__container1">
            <a href="#mostarModal20" class="cerrar-modal">
              <img src="img/Francia oh Francia_.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>
      <section id="modal21" class="modal">
        <div class="modal__container2">
            <a href="#mostarModal21" class="cerrar-modal">
              <img src="img/Fuente.jpg" class="modal__img" alt="">
            </a> 
        </div>
      </section>
      <section id="modal22" class="modal">
        <div class="modal__container1">
            <a href="#mostarModal22" class="cerrar-modal">
              <img src="img/Jaguar.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>
      <section id="modal23" class="modal">
        <div class="modal__container1">
            <a href="#mostarModal23" class="cerrar-modal">
              <img src="img/Jardín botánico_.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>
      <section id="modal24" class="modal">
        <div class="modal__container1">
            <a href="#mostarModal24" class="cerrar-modal">
              <img src="img/Junin.jpg" class="modal__img" alt="">
            </a> 
        </div>
      </section>
      <section id="modal25" class="modal">
        <div class="modal__container1">
            <a href="#mostarModal25" class="cerrar-modal">
              <img src="img/Leona.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>
      <section id="modal26" class="modal">
        <div class="modal__container2">
            <a href="#mostarModal26" class="cerrar-modal">
              <img src="img/Lugares.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>
      <section id="modal27" class="modal">
        <div class="modal__container2">
            <a href="#mostarModal27" class="cerrar-modal">
              <img src="img/Mirando al horizonte.jpg" class="modal__img" alt="">
            </a> 
        </div>
      </section>

      <section id="modal28" class="modal">
        <div class="modal__container1">
            <a href="#mostarModal28" class="cerrar-modal">
              <img src="img/Monjes.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>
      <section id="modal29" class="modal">
        <div class="modal__container2">
            <a href="#mostarModal29" class="cerrar-modal">
              <img src="img/Mujer oriental.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>
      <section id="modal30" class="modal">
        <div class="modal__container2">
            <a href="#mostarModal30" class="cerrar-modal">
              <img src="img/Oh Francia_.jpg" class="modal__img" alt="">
            </a> 
        </div>
      </section>
      <section id="modal31" class="modal">
        <div class="modal__container1">
            <a href="#mostarModal31" class="cerrar-modal">
              <img src="img/Otraparte.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>

      <section id="modal32" class="modal">
        <div class="modal__container2">
            <a href="#mostarModal32" class="cerrar-modal">
              <img src="img/Palacio egipcio_.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>
      <section id="modal33" class="modal">
        <div class="modal__container1">
            <a href="#mostarModal33" class="cerrar-modal">
              <img src="img/Parque Bolívar_.jpg" class="modal__img" alt="">
            </a> 
        </div>
      </section>
      <section id="modal34" class="modal">
        <div class="modal__container1">
            <a href="#mostarModal34" class="cerrar-modal">
              <img src="img/Parque de las luces_.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>

      <section id="modal35" class="modal">
        <div class="modal__container1">
            <a href="#mostarModal35" class="cerrar-modal">
              <img src="img/Prado.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>
      <section id="modal36" class="modal">
        <div class="modal__container1">
            <a href="#mostarModal36" class="cerrar-modal">
              <img src="img/Rafael Uribe Uribe_.jpg" class="modal__img" alt="">
            </a> 
        </div>
      </section>
      <section id="modal37" class="modal">
        <div class="modal__container2">
            <a href="#mostarModal37" class="cerrar-modal">
              <img src="img/RGIII 01.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>
      <section id="modal38" class="modal">
        <div class="modal__container1">
            <a href="#mostarModal38" class="cerrar-modal">
              <img src="img/RGIII 02.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>
      <section id="modal39" class="modal">
        <div class="modal__container2">
            <a href="#mostarModal39" class="cerrar-modal">
              <img src="img/Rusia.jpg" class="modal__img" alt="">
            </a> 
        </div>
      </section>

      <section id="modal40" class="modal">
        <div class="modal__container1">
            <a href="#mostarModal40" class="cerrar-modal">
              <img src="img/San Juan_.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>
      <section id="modal41" class="modal">
        <div class="modal__container1">
            <a href="#mostarModal41" class="cerrar-modal">
              <img src="img/Santa Marta y sus muelles.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>
      <section id="modal42" class="modal">
        <div class="modal__container1">
            <a href="#mostarModal42" class="cerrar-modal">
              <img src="img/Sasha.jpg" class="modal__img" alt="">
            </a> 
        </div>
      </section>
      <section id="modal43" class="modal">
        <div class="modal__container1">
            <a href="#mostarModal43" class="cerrar-modal">
              <img src="img/Verdes y aguas.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>
      <section id="modal44" class="modal">
        <div class="modal__container1">
            <a href="#mostarModal44" class="cerrar-modal">
              <img src="img/Vías nostálgicas_.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>
      <section id="modal45" class="modal">
        <div class="modal__container2">
            <a href="#mostarModal45" class="cerrar-modal">
              <img src="img/Wilmar 01.jpg" class="modal__img" alt="">
            </a> 
        </div>
      </section>
      <section id="modal46" class="modal">
        <div class="modal__container1">
            <a href="#mostarModal46" class="cerrar-modal">
              <img src="img/Wilmar 02.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>
      <section id="modal47" class="modal">
        <div class="modal__container2">
            <a href="#mostarModal47" class="cerrar-modal">
              <img src="img/Zarpando al mar.jpg" class="modal__img" alt="">
            </a>
        </div>
      </section>
      

    <!------------->
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
            <a class="text-dark" href="integrantes.html">Made by: Andres & Co.</a>
        </div>
        <!-- Copyright -->
    </footer>
      <!-- JavaScript Bundle with Popper -->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
    
</body>
</html>