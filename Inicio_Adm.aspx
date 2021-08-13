<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Inicio_Adm.aspx.vb" Inherits="ProyectoFinal.Inicio_Adm" %>

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
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            height: 29px;
        }
        .auto-style4 {
            font-family: 'Itim', cursive;
            font-size: 20px;
            text-align: center;
        }
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
        }

    </script>

<body class="bodyA" onload="nobackbutton();">
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
    <h1 class="h1A">Bienvenido Administrador</h1>
        <asp:Label ID="Label1" class="labelA" runat="server" Text="Label"></asp:Label>
         <br />
        <asp:Button ID="Button1" class="b1A" runat="server" Text="Cerrrar sesión" style="height: 29px" />
        <br /><br />
        
        <table class="tablaAdm">
            <tr>
                <td colspan="2">
                    <h2 class="auto-style4">Ingrese Los Datos</h2>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Descripción"></asp:Label>:
                 </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                     <br /> <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Categorías:</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Enlatados</asp:ListItem>
                        <asp:ListItem>Origen animal</asp:ListItem>
                        <asp:ListItem>Harinas</asp:ListItem>
                        <asp:ListItem>Bebidas</asp:ListItem>
                        <asp:ListItem>Higiene</asp:ListItem>
                        <asp:ListItem>Frutas y verduras</asp:ListItem>
                    </asp:DropDownList>
                     <br /> <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Precio"></asp:Label>
                    :</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <br /> <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="Cantidad"></asp:Label>
                    :</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                     <br /> <br />
                </td>
            </tr>
            <tr>
                <td>Foto:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="304px" />
                    <br /> <br />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button2" class="b2A" runat="server" Text="Guardar" />
                </td>

            </tr>
            </table>
        <div class="contenedorA">
         <br />

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:bd_AbarroteConnectionString %>" SelectCommand="SELECT DISTINCT categoria FROM productos"></asp:SqlDataSource>
        <br />
        <i class="fa fa-search" aria-hidden="true"></i> &nbsp;
        <asp:Label ID="Label6" class="textoIc" runat="server" Text=" Filtro de productos: "></asp:Label> &nbsp; 
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="categoria" DataValueField="categoria">
        </asp:DropDownList>
        <br />
        <br />
        <asp:GridView ID="GridView2" class="tablaA" runat="server" AutoGenerateColumns="False" DataKeyNames="id_producto" DataSourceID="SqlDataSource3">
            <Columns>
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:bd_AbarroteConnectionString %>" SelectCommand="SELECT * FROM [productos] WHERE ([categoria] = @categoria)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="categoria" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <i class="fa fa-search" aria-hidden="true"></i> &nbsp;
        <asp:Label ID="Label5" runat="server" class="textoIa" Text="Elija nombre a consultar:"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="descripcion" DataValueField="descripcion">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="Button3" class="b2A" runat="server" Text="Consultar" />
        <br />
        <br />
        <asp:GridView ID="GridView3" class="tablaA" runat="server">
        </asp:GridView>
        <br />
        <br />
        <asp:Label ID="Label7" class="textoIc" runat="server" Text=" Inventario: "></asp:Label> <br /><br />
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bd_AbarroteConnectionString %>" SelectCommand="SELECT * FROM [productos]" DeleteCommand="DELETE FROM [productos] WHERE [id_producto] = @id_producto" InsertCommand="INSERT INTO [productos] ([descripcion], [categoria], [precio], [foto], [cantidad]) VALUES (@descripcion, @categoria, @precio, @foto, @cantidad)" UpdateCommand="UPDATE [productos] SET [descripcion] = @descripcion, [categoria] = @categoria, [precio] = @precio, [foto] = @foto, [cantidad] = @cantidad WHERE [id_producto] = @id_producto">
            <DeleteParameters>
                <asp:Parameter Name="id_producto" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="descripcion" Type="String" />
                <asp:Parameter Name="categoria" Type="String" />
                <asp:Parameter Name="precio" Type="Decimal" />
                <asp:Parameter Name="foto" Type="String" />
                <asp:Parameter Name="cantidad" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="descripcion" Type="String" />
                <asp:Parameter Name="categoria" Type="String" />
                <asp:Parameter Name="precio" Type="Decimal" />
                <asp:Parameter Name="foto" Type="String" />
                <asp:Parameter Name="cantidad" Type="Int32" />
                <asp:Parameter Name="id_producto" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <br />
        <asp:GridView ID="GridView1" class="tablaA" runat="server" AutoGenerateColumns="False" DataKeyNames="id_producto" DataSourceID="SqlDataSource1" Width="404px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
        </div>
        <br />
        <br />
    </div>
    </form>

     <footer class="foot">©2021 Abarrotes El Cisne S.A. de C.V. Todos los derechos reservados.</footer>
</body>
</html>
