<%-- 
    Document   : Integrantes
    Created on : Oct 7, 2022, 4:46:53 PM
    Author     : tatin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Integrantes</title>
    <!-- CSS only -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
  integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous" />
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
    <header>
        <nav class="navbar fixed-top" style="background-color: #e3f2fd">
          <div class="container-fluid">
            <a class="navbar-brand" href="index.html">Inicio</a>
            <h3>Acuarela</h3>
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
              aria-controls="offcanvasNavbar">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
              <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Acuarela</h5>
                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
              </div>
              <div class="offcanvas-body">
                <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.html">Inicio</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="galeria.html">Galeria</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Materiales</a>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                      aria-expanded="false">
                      Dropdown
                    </a>
                    <ul class="dropdown-menu">
                      <li><a class="dropdown-item" href="#">Action</a></li>
                      <li>
                        <a class="dropdown-item" href="#">Another action</a>
                      </li>
                      <li>
                        <hr class="dropdown-divider" />
                      </li>
                      <li>
                        <a class="dropdown-item" href="#">Something else here</a>
                      </li>
                    </ul>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </nav>
    </header>

    <main style="margin-top: 100px;">
        <h2> Equipo Andrés</h2>
        <div class="container text-center">
            <div class="row row-cols-1 row-cols-lg-5 g-6" style="font-style: italic">
                <div class="col">
                    <div class="card">
                      <img src="img/integrantes/Andres.jpeg" class="card-img-top" alt="...">
                      <div class="card-body">
                        <h5 class="card-title">Fernando Andres Pulido</h5>
                        <p class="card-text">
                            Soy Músico violinista de orquesta, Concertino principal y solista de la Orquesta Sinfónica Juvenil de Colombia. 
              Hice parte de la Orquesta Sinfónica Nacional de Colombia, e invitado con la Filarmónica de Bogotá. 
              2 veces ganador del concurso de música del mundo de la Orquesta filarmónica de Bogotá con la agrupación de música celta Espíritu Celta y actualmente músico de un reconocido lugar de Bogotá. 
              Me gusta saber sobre todos los temas que tienen que ver con educación, tecnología, aplicaciones, juegos y desarrollo, también me gusta el deporte  y soy fanático del cine, disfruto mucho ver películas en compañía de mi familia y amigos. 
              Actualmente hago parte del proyecto de estudios de MisiónTic con la Universidad Tecnológica de Pereira en dónde estoy cursando algunos diplomados de programación.    
                        </p>
                      </div>
                    </div>
                  </div>
                  <div class="col">
                    <div class="card">
                      <img src="img/integrantes/Camilo.jpeg" class="card-img-top" alt="...">
                      <div class="card-body">
                        <h5 class="card-title">Andres Camilo Mazorra</h5>
                        <p class="card-text">
                            Soy ingeniero electrónico y tengo maestría en la enseñanza de las matemáticas. 
              He trabajado como docente de razonamiento lógico en un instituto privado y docente de matemáticas con el magisterio, siendo docente de los grados séptimo, octavo y noveno. 
              Además de la ingeniería me gusta la música, toco algo de guitarra y he estado en varias bandas, la pintura y actualmente me dedico a aprender a usar la acuarela, los videojuegos y el cine. 
              Me gusta saber de ciencia y tecnología. Además estoy certificado en B2 en inglés y actualmente trabajo como independiente, estoy cursando MisiónTic ruta 2 y hago varios cursos en línea para capacitarme como programador.    
                        </p>
                      </div>
                    </div>
                  </div>
                  <div class="col">
                    <div class="card">
                      <img src="img/integrantes/Caro.jpeg" class="card-img-top" alt="...">
                      <div class="card-body">
                        <h5 class="card-title">Sait Andre Caro</h5>
                        <p class="card-text">
                            Soy técnico en sistemas, actualmente estoy estudiando ing de software, siempre me ha interesado la ciencia y la tecnología, me gustan las artes escénicas he participado en obras para IDRD, actualmente tengo un emprendimiento de PC Gamers. 
              Estoy cursando MisionTic con el fin de aprender y profundizar un poco más en todo este campo informático.
                            
                        </p>
                      </div>
                    </div>
                  </div>
                  <div class="col">
                    <div class="card">
                      <img src="img/integrantes/Jhoan.jpeg" class="card-img-top" alt="...">
                      <div class="card-body">
                        <h5 class="card-title">Jhoan David Gomez</h5>
                        <p class="card-text">
                            
              Soy estudiante de ing de sistemas, siempre me ha interesado el mundo digital y lo que se puede hacer en el. 
              Tambien me gustan los deportes como el futbol, volleyball y tenis, aparte soy un apasianado de la calistenia es el mayor hobbie que tengo, ya que ayuda a dedarrollar aspectos como la disciplina, fuerza y control corporal. 
              Estoy cursando Mision tic para fortalecer mis competencias en desarrollo web y tecnologias que oueden aportar a mi carrera y desarrollo como profesional en este ambito
                        </p>
                      </div>
                    </div>
                  </div>
                  <div class="col">
                    <div class="card">
                      <img src="img/integrantes/sunako.jpg" class="card-img-top" alt="...">
                      <div class="card-body">
                        <h5 class="card-title">Stefania Vega</h5>
                        <p class="card-text">
                                            Soy madre cabeza de familia. 
                            En el 2014 termine ADSI en el SENA, no se me dieron las cosas para poderlo ejercer, por lo tanto me dedique a mi hijo y a mi familia durante todo este tiempo.
                            Antes de ingresar a MisiónTic, tenia un emprendimiento de Amigurumis, es una técnica muy agradable y además sirve como terapía.
                            Entre mis gustos y pasatiempos esta el anime, los videojuegos y escuchar Heavy, solo leo el manga los animes que me causan curiosidad.
                            Actualmente estoy tanto en MisiónTic Ruta 2, como en Oracle ONE.    
                        </p>
                      </div>
                    </div>
                  </div>
            </div>

        </div>
    </main>


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
      <!-- JavaScript Bundle with Popper -->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
</body>
</html>