<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Registro_Cliente.aspx.vb" Inherits="ProyectoFinal.Registro_Cliente" %>

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
    <style type="text/css">

      
    </style>
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
<body class="bodyR" onload="nobackbutton();">
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
   <div class="container"> 
    <form id="form1" runat="server">
     <div class="row">
            <div class="col-6">
    <table class="tablaR">
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label1" class="tituloR" runat="server" Text="Registro de un cliente"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Nombre:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" EnableClientScript="False" ErrorMessage="Campo requerido" ForeColor="Red" ValidationGroup="grupo1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Apellido Paterno:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" EnableClientScript="False" ErrorMessage="Campo requerido" ForeColor="Red" ValidationGroup="grupo1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Apellido Materno:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td >&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Dirección"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox4" EnableClientScript="False" ErrorMessage="Campo requerido" ForeColor="Red" ValidationGroup="grupo1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Teléfono"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" placeholder="999-999-99-99"></asp:TextBox>
                </td>
                <td >
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" EnableClientScript="False" ErrorMessage="Utilizar el formato 999-999-99-99" ForeColor="Red" ValidationExpression="\d{3}-\d{3}-\d{2}-\d{2}" ValidationGroup="grupo1"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:Label ID="Label7" runat="server" Text="Edad"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td >
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox6" EnableClientScript="False" ErrorMessage="Debes tener entre 18 y 90 años" ForeColor="Red" MaximumValue="90" MinimumValue="18" Type="Integer" ValidationGroup="grupo1"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:Label ID="Label8" runat="server" Text="Tipo de compra: "></asp:Label>
                </td>
                <td >
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>para el hogar</asp:ListItem>
                        <asp:ListItem>para el trabajo</asp:ListItem>
                        <asp:ListItem>para negocio</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td >&nbsp;</td>
            </tr>
            <tr>
                <td >
                    <asp:Label ID="Label9" runat="server" Text="Correo"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
                <td >
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox7" EnableClientScript="False" ErrorMessage="Correo no válido" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="grupo1"></asp:RegularExpressionValidator>
                </td>
            </tr>         
            <tr>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Usuario:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
                <td >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox9" EnableClientScript="False" ErrorMessage="Campo requerido" ForeColor="Red" ValidationGroup="grupo1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:Label ID="Label13" runat="server" Text="Password:"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="TextBox10" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox10" EnableClientScript="False" ErrorMessage="Campo requerido" ForeColor="Red" ValidationGroup="grupo1"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox10" EnableClientScript="False" ErrorMessage="Entre 6 y 8 dígitos" ForeColor="Red" ValidationGroup="grupo1"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label14" runat="server" Text="Confirmar password:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox11" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox11" ControlToValidate="TextBox10" EnableClientScript="False" ErrorMessage="Las contraseñas no coinciden" ForeColor="Red" ValidationGroup="grupo1"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label15" runat="server" ForeColor="#33CC33" style="font-weight: 700" Text="Antes de Guardar los datos... dá click en el botón de Validar formulario"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <br />
                    <asp:Button ID="Button1" class="bR" runat="server" style="text-align: center" Text="Guardar" />
                    <br />
                </td>
                <td class="auto-style5">
                    <br />
                    <asp:Button ID="Button2" class="bR" runat="server" Text="Validar Formulario" ValidationGroup="grupo1" />
                    <br />
                </td>
            </tr>
        </table>
         </div>
            <div class="col-6">  
                <img class="imgR" src="Imagenes/re.png" />
                &nbsp;</div> 
    </div>
    </form>
    </div>
    <footer class="foot">©2021 Abarrotes El Cisne S.A. de C.V. Todos los derechos reservados.</footer>
</body>
</html>
