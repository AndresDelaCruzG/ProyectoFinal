<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Inicio_Clientes.aspx.vb" Inherits="ProyectoFinal.Inicio_Clientes" %>

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
    <!-- Add meta tags for mobile and IE -->
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
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
        
        function setAcum(sub) {
            var curretAcum = getAcum();

            sessionStorage.setItem("total", sub + curretAcum);
        }
        function getAcum() {
            var curretAcum = sessionStorage.getItem("total") || 0;
            return parseFloat(curretAcum);
        }

        function cantidadA() {
            var nombre = document.getElementById('<%= TextBox1.ClientID%>').value;
            var precio = document.getElementById('<%= TextBox3.ClientID %>').value;
            var cantidad = document.getElementById('<%= TextBox5.ClientID%>').value;
            var disponible = document.getElementById('<%= TextBox4.ClientID%>').value;
            precio = parseFloat(precio);
            cantidad = parseInt(cantidad);
            disponible = parseInt(disponible);

            if (cantidad < 1) {
                alert("Debe ingresar la cantidad que desea para poderlo agregar al carrito");
                document.getElementById('<%= TextBox5.ClientID%>').value = "";

            } else if (cantidad < disponible) {

                sub = precio * cantidad;
                console.log(sub)

                setAcum(sub);
                alert(getAcum());

            } else {
                alert("Recuerde que la cantidad que desea debe de ser menor a la disponible en el inventario");
                document.getElementById('<%= TextBox5.ClientID%>').value = "";
            }

        }

</script>


<body class="bodyC" onload="nobackbutton();">
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
    <div>
    <h1 class="h1C">¡Bienvenido!</h1>
        <asp:Label class="labelC" ID="Label1" runat="server" Text="Label"></asp:Label> 
        <asp:Button ID="Button1" class="b1C" runat="server" Text="Cerrrar sesión" style="height: 29px" />
        <br />
        <br />
        <div class="contenedorC">
                <asp:Label ID="Label2" class="textoIc" runat="server" Text="Ha seleccionado: "></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Text="vacío" ReadOnly="TRUE" ></asp:TextBox>
&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Text="vacío" ReadOnly="TRUE" ></asp:TextBox>
&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Text="vacío"  ReadOnly="TRUE" ></asp:TextBox>
<br /> <br />
        <asp:Label ID="Label6" class="textoIc" runat="server" Text="Disponible: "></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Text="vacío" ReadOnly="TRUE" ></asp:TextBox>
<br /><br />
        <asp:Label ID="Label8" class="textoIc" runat="server" Text="¿Cuántos desea comprar? : "></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox5" class=" Us" type="number" runat="server" Text="vacío" placeholder="Cantidad" ></asp:TextBox>
<br /><br />
        
        <asp:Button ID="btnEntrar" class="b2C" runat="server" Text="Entrar" OnClientClick="return cantidadA();" />


        <br />
        <br />
        <i class="fa fa-search" aria-hidden="true"></i> &nbsp;
        <asp:Label ID="Label9" class="textoIc" runat="server" Text=" Filtro de productos: "></asp:Label> &nbsp;       
        <asp:DropDownList ID="DropDownList1" class="Pa" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="categoria" DataValueField="categoria"></asp:DropDownList>
        <br />

        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:bd_AbarroteConnectionString %>" SelectCommand="SELECT DISTINCT categoria from productos"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:bd_AbarroteConnectionString %>" SelectCommand="SELECT * FROM [productos] WHERE ([categoria] = @categoria)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="categoria" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" class="tablaC" runat="server" AutoGenerateColumns="False" DataKeyNames="id_producto" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="id_producto" HeaderText="id_producto" InsertVisible="False" ReadOnly="True" SortExpression="id_producto" />
                <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                <asp:BoundField DataField="categoria" HeaderText="categoria" SortExpression="categoria" />
                <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" />
                <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
                <asp:ImageField DataImageUrlField="foto" HeaderText="Foto">
                    <ControlStyle Height="200px" Width="170px" />
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <br />
        <br />
            </div>

    </div>
        
    </form>
     <!-- Set up a container element for the button -->
    <div class="paypal" id="paypal-button-container"></div>

    <!-- Include the PayPal JavaScript SDK -->
    <script src="https://www.paypal.com/sdk/js?client-id=test&currency=USD"></script>

    <script>
        // Render the PayPal button into #paypal-button-container
        paypal.Buttons({

            // Set up the transaction
            createOrder: function (data, actions) {
                return actions.order.create({
                    purchase_units: [{
                        amount: {
                            value: getAcum()
                        }
                    }]
                });
            },

            // Finalize the transaction
            onApprove: function (data, actions) {
                return actions.order.capture().then(function (details) {
                    // Show a success message to the buyer
                    alert('Transaction completed by ' + details.payer.name.given_name + '!');
                });
            }
        }).render('#paypal-button-container');
    </script>
    
 <footer class="foot">©2021 Abarrotes El Cisne S.A. de C.V. Todos los derechos reservados.</footer>
</body>
</html>
