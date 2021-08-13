<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Inicio.aspx.vb" Inherits="ProyectoFinal.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Abarrotes El Cisne</title>
    <!-- Font CSS -->
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet"/>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Itim&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- CSS -->
    <link rel="stylesheet" href="/css/Estilos.css">
    <!-- Script Bootstrap CSS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>  
    <!-- Script font awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
<!-- Script inhabilitar flechas del navegador -->
     <script src="assets/js/custom.js"></script>

</head>
    
    <script type="text/javascript">
        //función inhabilitar flechas del navegador
        function nobackbutton() {
            window.location.hash = "no-back-button";
            window.location.hash = "Again-No-back-button" //chrome	
            window.onhashchange = function () { window.location.hash = "no-back-button"; }
        }

    </script>
<body onload="nobackbutton();">

    <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #FF5555;" id="menu"> 
      <i  class="fa fa-shopping-cart" aria-hidden="true"style="color: snow;" id="icono"></i>
      
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">

          <li class="nav-item active">
            <a class="nav-link" href="/Inicio.aspx">Inicio <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="/Login_Clientes.aspx">Clientes</a>
          </li>
            <li class="nav-item active">
            <a class="nav-link" href="/Contacto.aspx">Contacto</a>
          </li>
        </ul>
      </div>
    </nav>

    <div class="fondo">
    <form id="form1" runat="server">
    <br/>

      <p align="center"><img src="Imagenes/Carrito.png" height="150px" width="150px" class="animate__animated animate__pulse animate__infinite"/></p>

    <div >
        <h1 class="h1Inicio">¡ Bienvenido(a) a la página de Abarrotes el Cisne !<br/><br/></h1>
        <p class="texto">Aquí encontraras todo lo que necesites para tu hogar, desde la canasta básica hasta todo tipo productos para todo el hogar, te invitamos a que te 
            registres en nuestro portal para tener acceso a todos nuestros productos y hagas tu orden desde la comodidad de tu casa, recuerda que Abarrotes 
            el Cisne cuenta con productos de la mejor calidad y los más frescos posibles ¡ Los esperamos en nuestra tienda !</p>
    </div>

    <div class="map">

            <br/>
            <img src="Imagenes/Mapa.png"height="150px" width="150px" class="animate__animated animate__bounce animate__infinite"/>
            <br/>
            <p>Te compartimos nuestra ubicación para que también puedas visitarnos en la tienda de 8:00 am a 8:00 pm.</p>
            <p align="center"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d420.444456026579!2d-117.0568971!3d32.5380128!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80d94972dbcba363%3A0x63f0cee62a663974!2sMice%20y%20abarrotes%20el%20sisne!5e0!3m2!1ses-419!2smx!4v1621214122780!5m2!1ses-419!2smx" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe></p>

    </div>
    </form>
    <br/>
  </div>

    <footer class="foot">©2021 Abarrotes El Cisne S.A. de C.V. Todos los derechos reservados.</footer>
</body>
</html>
