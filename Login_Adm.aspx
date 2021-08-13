<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login_Adm.aspx.vb" Inherits="ProyectoFinal.Adm" %>

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
        }</script>
<body class="bodyAdm" onload="nobackbutton();">
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

    <form id="form1" runat="server">
        <section class="LoginA">
             <div class="adm">
                <h1>Inicia sesión como Adm.</h1>
                <table class="AdmT">
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" class="Us" runat="server" placeholder="Usuario"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                     <asp:TextBox ID="TextBox2" class="Pa" runat="server" placeholder="Password" TextMode="Password" ></asp:TextBox>
                     <br />
                     <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" class="bo1" runat="server" Text="Ingresar" /> 
                     <br />
                     <br />
                </td>
                       
            </tr>
             <tr>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login_Clientes.aspx" Text="Regresar"></asp:HyperLink>
                    <br />
                    <br />

                </td>
                   
            </tr>
            </table>
    </div>
     </section>
    </form>
    <footer class="foot">©2021 Abarrotes El Cisne S.A. de C.V. Todos los derechos reservados.</footer>
</body>
</html>