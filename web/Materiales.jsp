<%-- 
    Document   : Materiales
    Created on : 3/10/2022, 7:01:39 p. m.
    Author     : david
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="CssMateriales.css"/>
        <style>
            .img-thumbnail{
                margin: 10px;
                width: 350px;
                height: 250px;
            }
            body{
                background-color: #FFEFCE;
                background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 2000 1500'%3E%3Cdefs%3E%3CradialGradient id='a' gradientUnits='objectBoundingBox'%3E%3Cstop offset='0' stop-color='%23E3F2FD'/%3E%3Cstop offset='1' stop-color='%23FFEFCE'/%3E%3C/radialGradient%3E%3ClinearGradient id='b' gradientUnits='userSpaceOnUse' x1='0' y1='750' x2='1550' y2='750'%3E%3Cstop offset='0' stop-color='%23f1f1e6'/%3E%3Cstop offset='1' stop-color='%23FFEFCE'/%3E%3C/linearGradient%3E%3Cpath id='s' fill='url(%23b)' d='M1549.2 51.6c-5.4 99.1-20.2 197.6-44.2 293.6c-24.1 96-57.4 189.4-99.3 278.6c-41.9 89.2-92.4 174.1-150.3 253.3c-58 79.2-123.4 152.6-195.1 219c-71.7 66.4-149.6 125.8-232.2 177.2c-82.7 51.4-170.1 94.7-260.7 129.1c-90.6 34.4-184.4 60-279.5 76.3C192.6 1495 96.1 1502 0 1500c96.1-2.1 191.8-13.3 285.4-33.6c93.6-20.2 185-49.5 272.5-87.2c87.6-37.7 171.3-83.8 249.6-137.3c78.4-53.5 151.5-114.5 217.9-181.7c66.5-67.2 126.4-140.7 178.6-218.9c52.3-78.3 96.9-161.4 133-247.9c36.1-86.5 63.8-176.2 82.6-267.6c18.8-91.4 28.6-184.4 29.6-277.4c0.3-27.6 23.2-48.7 50.8-48.4s49.5 21.8 49.2 49.5c0 0.7 0 1.3-0.1 2L1549.2 51.6z'/%3E%3Cg id='g'%3E%3Cuse href='%23s' transform='scale(0.12) rotate(60)'/%3E%3Cuse href='%23s' transform='scale(0.2) rotate(10)'/%3E%3Cuse href='%23s' transform='scale(0.25) rotate(40)'/%3E%3Cuse href='%23s' transform='scale(0.3) rotate(-20)'/%3E%3Cuse href='%23s' transform='scale(0.4) rotate(-30)'/%3E%3Cuse href='%23s' transform='scale(0.5) rotate(20)'/%3E%3Cuse href='%23s' transform='scale(0.6) rotate(60)'/%3E%3Cuse href='%23s' transform='scale(0.7) rotate(10)'/%3E%3Cuse href='%23s' transform='scale(0.835) rotate(-40)'/%3E%3Cuse href='%23s' transform='scale(0.9) rotate(40)'/%3E%3Cuse href='%23s' transform='scale(1.05) rotate(25)'/%3E%3Cuse href='%23s' transform='scale(1.2) rotate(8)'/%3E%3Cuse href='%23s' transform='scale(1.333) rotate(-60)'/%3E%3Cuse href='%23s' transform='scale(1.45) rotate(-30)'/%3E%3Cuse href='%23s' transform='scale(1.6) rotate(10)'/%3E%3C/g%3E%3C/defs%3E%3Cg %3E%3Cg transform='translate(0 75)'%3E%3Ccircle fill='url(%23a)' r='3000'/%3E%3Cg opacity='0.5'%3E%3Ccircle fill='url(%23a)' r='2000'/%3E%3Ccircle fill='url(%23a)' r='1800'/%3E%3Ccircle fill='url(%23a)' r='1700'/%3E%3Ccircle fill='url(%23a)' r='1651'/%3E%3Ccircle fill='url(%23a)' r='1450'/%3E%3Ccircle fill='url(%23a)' r='1250'/%3E%3Ccircle fill='url(%23a)' r='1175'/%3E%3Ccircle fill='url(%23a)' r='900'/%3E%3Ccircle fill='url(%23a)' r='750'/%3E%3Ccircle fill='url(%23a)' r='500'/%3E%3Ccircle fill='url(%23a)' r='380'/%3E%3Ccircle fill='url(%23a)' r='250'/%3E%3C/g%3E%3Cg%3E%3Cuse href='%23g' transform='rotate(10)'/%3E%3Cuse href='%23g' transform='rotate(120)'/%3E%3Cuse href='%23g' transform='rotate(240)'/%3E%3C/g%3E%3Ccircle fill-opacity='0' fill='url(%23a)' r='3000'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E");
                background-attachment: fixed;
                background-size: cover;
            }
        </style>

    </head>
</head>
<body>
        <!-- nav -->
        <nav class="navbar fixed-top" style="background-color: #e3f2fd">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Acuarela</a>
                <a class="nav-link" href="Controlador?accion=Carrito"><img src="img/shoping-car.ico" alt="40" height="40">(<label style="color: orangered">${contador}</label>)</i> Carrito</a>
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

    <div class="container imagenes mt-4 pt-5 ">

        <img src="img/Acuarelas07.jpg" class="img-thumbnail " alt="" style=" float:left;">

        <div><strong>Acuarelas:</strong> 
            <br>
            Son un tipo de pinturas que se componen de un pigmento, un aglutinante (goma arábica), y para darle viscosidad glicerina o miel. La relación entre estos elementos determina en alguna medida el tipo de la acuarela y su precio, no siendo esta relación la única determinante.
            Comúnmente los colores de la acuarela son transparentes, a diferencia de otro tipo de pinturas como el oleo o el gouache (tempera) y para su aplicación se usan “capas” logrando así una transparencia y vivacidad reconocidas. En esta aplicación se reconocen básicamente tres técnicas: Alla prima (mojado sobre mojado) que consiste en humedecer primero el papel y luego aplicar la acuarela, o sobre una capa de acuarela y sin que esta se seque completamente aplicar una segunda capa; esta técnica es muy usada cuando se hace Plein air (pintar al aire libre, o in situ), húmedo sobre seco que consiste en aplicar una capa con el pincel húmedo sobre el papel seco, y por último, pincel seco sobre papel; en este caso el pincel viene cargado de acuarela con muy poca agua o ninguna y se aplica sobre el papel seco.
            Las acuarelas se consiguen en la actualidad en dos formatos: en tubos o en cubos (pans), los tubos tienen la acuarela de forma natural aguada y para aplicarla se puede agregar o no agua, dependiendo de los efectos que se deseen lograr, mientras que los cubitos traen la acuarela ya seca y hay dos presentaciones, unos mas grandes que otros (pan y half pan, en inglés) y para ser aplicada se le debe agregar agua a los cubos.
            Entre las marcas más conocidas de acuarela se encuentran Daniel Smith, Koi, Windsor & Newton, Rembrandt, Schmincke, y se consiguen de dos tipos, estudiantil y artísticas, siendo  las ultimas de mayor costo, debido a que se usan pigmentos mas puros y la relación con respecto a aglutinante es distinta.
        </div>
    </div>
    <div class="container imagenes mt-4 pt-5">
        <img src="img/Papeles05.jpg" class="img-thumbnail" alt=""  style=" float:right;">
        <p>
            <strong>Papel: </strong>
            <br>
            El papel para acuarela puede estar hecho de distintos materiales, sin embargo, el papel optimo esta hecho a base de algodón, y su proporción puede ir desde un porcentaje bajo hasta el 100%, siendo este ultimo el que mejor comportamiento tiene con respecto a la acuarela y mejor preservación de la misma, y también el más costoso. En el mercado se consiguen papeles mas baratos a base de pulpa, aunque por su grado de acidez no son ideales. 
            Entre los papeles para la acuarela se encuentran tres tipos distintos: liso (prensado en caliente), semi-rugoso (prensado en frio) y rugoso (no prensado), cada uno de ellos se usa para distintos estilos de pintura, siendo el liso usado comúnmente para pinturas de corte natural (animales, flores), el semi-rugoso ideal para principiantes, aunque no esta restringido solo a estos, y rugoso usado ampliamente por muchos acuarelistas por su capacidad para generar texturas usando las distintas técnicas de aplicación de la acuarela. Entre las marcas mas conocidas de papel se encuentran Arches, Windsor & Newton, Fabianno y Saunders. Los papeles se pueden conseguir desde el formato de pliego hasta formatos más pequeños como un octavo de pliego y se pueden conseguir blocks y pads (nombre en ingles) que son usualmente 20 hojas pegadas en los bordes y que se pueden despegar de forma individual y son ideales para hacer Plein air, por lo que son usados de forma extensiva por muchos acuarelistas profesionales.
        </p>
    </div>

    <div class="container imagenes mt-4 pt-5">

        <img src="img/Pinceles01.jpg" class="img-thumbnail" alt="" style="float:left;">

        <div class="container-fluid">
            <strong>Pinceles:</strong>
            <br>
            Para la acuarela se necesitan a diferencia de otras técnicas de pintura pinceles que recojan mucha agua, por lo tanto, los pinceles para acuarela son especializados. Se encuentran en el mercado tres tipos de pinceles, los de pelo natural, los semisintéticos y los sintéticos.; los primeros son los más costosos y los que mejor se comportan, los segundos traen los mejor de los dos mundos, lo natural y lo sintético, mientras que los últimos se han desarrollado en los últimos anos debido a los avances de la tecnología y el volcamiento de las personas a optar por pinceles que no dañen a los animales, sin embargo, su rendimiento no es comparable con los dos anteriores. Entre los pinceles para acuarela se encuentran los mop brush (nombre en inglés) que son pinceles que tienen una parte gorda en su medio y tienen puntas finas, estos pinceles son los que mas agua recogen y son ideales para las primeras capas que tienden a ser más para cubrir el papel y generar fondos, los redondos que son más pequeños y recogen menos agua y más acuarela y se usan para segundas capas y detalles. Sin embargo, estos no son los únicos pinceles que se encuentran en el mercado, pero si los más usados por su versatilidad. Entre las marcas mas conocidas de pinceles se encuentran Escoda y Davinci.
        </div>
    </div>

    <div class="container imagenes mt-4 pt-5">

        <img src="img/Otros materiales 01.jpg" class="img-thumbnail tamaño" alt="" style=" float:right;">

        <div class="container mt-4 pt-5">
            <strong>Otros materiales</strong>
            <br>
            Además de los materiales antes expuestos, para realizar pinturas en acuarela se usan lápices para realizar bocetos antes de aplicar la pintura, cinta de enmascarar para sujetar el papel a la superficie para que este no se doble durante la aplicación de las capas, el líquido enmascarador que se usa para dejar lugares sin pintar y luego de aplicar las capas de acuarela puede retirarse del papel, entre otros.
        </div>
    </div>

    <footer class="text-center text-white mt-4"  style="background-color: #FFEFCE;">
        <!-- Grid container -->
        <div class="container pt-4">
            <!-- Section: Social media -->
            <section class="mb-4">
                <!-- Facebook -->
                <img src="img/logo/facebook.svg" class="ms-4" alt="facebook">
    
                <!-- Twitter -->
                <img src="img/logo/twitter.svg" class="ms-4" alt="twitter">
    
                <!-- Instagram -->
                <img src="img/logo/instagram.svg"class="ms-4" alt="instagram">
    
                <!-- Linkedin -->
                <img src="img/logo/linkedin.svg" class="ms-4"alt="linkedin">
                
                <!-- Github -->
                <img src="img/logo/github.svg" class="ms-4" alt="">
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