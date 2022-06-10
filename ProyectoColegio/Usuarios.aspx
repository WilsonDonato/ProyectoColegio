<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="ProyectoColegio.Usuarios" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>DIRECTOR</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
</head>
    <style>
        
   @import url(https://fonts.googleapis.com/css?family=Audiowide);

::-moz-selection {
    background: #830202;
    text-shadow: none;
}

::selection {
    background: #cc0000;
    text-shadow: none;
}






h1{
  margin: 0;
   font-family: Audiowide;
  padding: 10px 0;
  text-align: center;
  font-weight: 900;
  font-size: 100px;
  color: hsla(0,0%,100%,0);
}
body {
  background: #000000;
  color:#ffffff;
  font-family: "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
  font-size: 30px;
  line-height: 1;
  text-align: center;
}







.inset {
  border-top: 1px solid #19191a;
  padding: 20px;
}
a {
  font-family: 'Audiowide';
  border-bottom: 1px solid hsla(0,0%,100%,0.1);
  font-size: 60px;
  padding: 30px 0;
  position: relative;
  text-align: center;
  text-shadow: 0 1px 0 #000;
}
h1 {
  font-family: 'Audiowide';
  border-bottom: 1px solid #000;
  font-size: 30px;
  padding: 30px 0;
  position: relative;
  text-align: center;
  text-shadow: 0 1px 0 #000;
}

 h1 {
  color: #FFbb00;
  font-family: Audiowide;
  font-weight: normal;
}

 h1.poweron {
  color: #ffffff;
  transition: all 0.5s;
  animation: flicker 1s ease-in-out 1 alternate, neon 1.5s ease-in-out infinite alternate;
  animation-delay: 0s, 1s;
}

h1:after {
  position: absolute;
  width: 250px;
  height: 180px;
  content: "";
  display: block;
  pointer-events: none;
  top: 0;
  margin-left: 138px;
  transform-style: flat;
  transform: skew(20deg);

  background: -moz-linear-gradient(top, hsla(0,0%,100%,0.1) 0%, hsla(0,0%,100%,0) 100%);
  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,hsla(0,0%,100%,0.2)), color-stop(100%,hsla(0,0%,100%,0)));
  background: -webkit-linear-gradient(top, hsla(0,0%,100%,0.1) 0%,hsla(0,0%,100%,0) 100%);
  background: -o-linear-gradient(top, hsla(0,0%,100%,0.1) 0%,hsla(0,0%,100%,0) 100%);
  background: -ms-linear-gradient(top, hsla(0,0%,100%,0.1) 0%,hsla(0,0%,100%,0) 100%);
  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#42ffffff', endColorstr='#00ffffff',GradientType=0 );
  background: linear-gradient(to bottom, hsla(0,0%,100%,0.1) 0%,hsla(0,0%,100%,0) 100%);

}


















 

        </style>
<body>
     <form id="form1" runat="server">
    <div class="nav-bar">
               
                    <nav class="navbar navbar-expand-lg bg-warning navbar-warning">
                        <img src="img/lgos.png" width="50" alt="Carousel Image"/><a href="#" class="navbar-brand"> MARISCAL GAMARRA</a>
                        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                            <div class="navbar-nav mr-auto">
                                 <a class="btn" href="DIRECTOR.aspx">MISION - VISIÓN</a>
                                 <a class="btn" href="Usuarios.aspx">REGISTRO USUARIOS</a>
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 DIRECTOR  
                                
                               
                            &nbsp;<div class="ml-auto">
                           <asp:Button ID="btnSalir" class="fixed-bottom" runat="server" value="SALIR" Text="SALIR" BackColor="Yellow" BorderColor="Black" BorderStyle="Outset" BorderWidth="5px" ForeColor="Black" Font-Bold="True" Font-Italic="True" Font-Size="Medium" OnClick="btnSalir_Click" />
                                                      
                            </div>
                        </div>
                    </nav>
                
            </div>
   
         <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="1"  >
               <asp:View ID="View1" runat="server">
                  <h3> &nbsp;</h3>
                  <div class="contact wow fadeInUp">
                <div class="container">
                     
                       
                  
                  <div class="about wow fadeInUp" data-wow-delay="0.1s">
                <div class="container">
                    <div class="row align-items-center">
                         <h1>
                             <asp:Label ID="lblID" runat="server"></asp:Label>
                             Registros para Usuarios&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Cursos" />
                             <br />
                             <br />
                             <div class="container">
                              <div class="row">
                                <div class="col-md-3">
                                <asp:Label ID="Label3" runat="server" Text="Nombre: "></asp:Label>
                                <asp:TextBox ID="txtNombre" runat="server" Width="229px" Font-Size="12pt"></asp:TextBox>
                                <asp:Label ID="Label2" runat="server" Text="Apellido: "></asp:Label>
                                <asp:TextBox ID="txtApellido" runat="server" Width="229px" Font-Size="12pt"></asp:TextBox>
                                &nbsp;Direccion:<asp:TextBox ID="txtDireccion" runat="server" Width="229px" Font-Size="12pt"></asp:TextBox>
                                &nbsp;Correo:
                                <asp:TextBox ID="txtCorreo" runat="server" Width="228px" Font-Size="12pt"></asp:TextBox>
                                </div>
                                <div class="col-md-2">
                                    Activo:
                                    <asp:DropDownList ID="dptEstado" runat="server" AutoPostBack="True" Font-Size="12pt">
                                        <asp:ListItem Value="1">ACTIVO</asp:ListItem>
                                        <asp:ListItem Value="0">INACTIVO</asp:ListItem>
                                    </asp:DropDownList>
                                    Usuario:<asp:TextBox ID="txtUsuario" runat="server" Width="229px" Font-Size="12pt"></asp:TextBox>
                                    Contraseña:<asp:TextBox ID="txtClave" runat="server" Width="229px" Font-Size="12pt"></asp:TextBox>
&nbsp;Tipo:<asp:DropDownList ID="dbotipo" runat="server" AutoPostBack="True" Font-Size="12pt">
                                         <asp:ListItem Value="2">DOCENTE</asp:ListItem>
                                        <asp:ListItem Value="1">DIRECTOR</asp:ListItem>
                                        <asp:ListItem Value="3">ESTUDIANTE</asp:ListItem>
                                    </asp:DropDownList>
                                   
                                   
                                </div>
                               <div class="col-md-4">
                                    
                                   
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Agregar" Width="255px" />
                                   <asp:Button ID="Button2" runat="server" Text="Modificar" Width="255px" OnClick="Button2_Click" />
                                   <asp:Button ID="Button3" runat="server" Text="Eliminar" Width="255px" OnClick="Button3_Click" />
                                   <asp:Button ID="btnListar" runat="server" OnClick="btnListar_Click" Text="Listar" Width="260px" />
                                   <br />
                                    Celular:<asp:TextBox type="number" ID="txtCelular" runat="server" Width="280px" Font-Size="12pt"></asp:TextBox>
                                   
                                </div>
                                  <div class="col-md-2">
                                    
                                   <img src="img/lgos.png" width="250" alt="Carousel Image"/></div>
                              
                                  <h1></h1>
                                  <div class="row mt-3">
                                      <div class="col-sm-12">
                                          <asp:GridView ID="GridView1" runat="server" BackColor="Black" BorderColor="White" BorderStyle="Dashed" BorderWidth="2px" CellPadding="2" CellSpacing="2" ClientIDMode="Predictable" Font-Size="11pt" Height="101px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="5" Width="1213px">
                                              <AlternatingRowStyle BackColor="Black" BorderColor="White" BorderWidth="2px" />
                                              <Columns>
                                                  <asp:CommandField ShowSelectButton="True">
                                                  <ControlStyle Font-Size="12pt" />
                                                  </asp:CommandField>
                                              </Columns>
                                              <EmptyDataRowStyle Font-Size="10pt" />
                                          </asp:GridView>
                                      </div>
                                  </div>
                                  <h1></h1>
                                  <h1></h1>
                                  <h1></h1>
                                  <h1></h1>
                                  <h1></h1>
                                  <h1></h1>
                              
                           </h1>
                        </div>
                    </div>
                </div>
            </div>
                
               </asp:View> 
					
               <asp:View ID="View2" runat="server">
              <div class="about wow fadeInUp" data-wow-delay="0.1s">
                <div class="container">
                    <div class="row align-items-center">
                         <h1>
                             &nbsp;<asp:Button ID="Button9" runat="server" Text="Usuarios"  />
                             <asp:Label ID="lbl1" runat="server"></asp:Label>
                             &nbsp;Registro para Cursos&nbsp;
                             <br />
                             <br />
                             <div class="container">
                              <div class="row">
                            
                                <div class="col-md-4">
                                    CURSO:
                                   <asp:TextBox ID="TXTCURSO" runat="server" Width="279px"></asp:TextBox>
                                    DETALLE:
                                   <asp:TextBox ID="TXTDETALLE" runat="server" Width="279px"></asp:TextBox>

                                </div>
                               <div class="col-md-4">
                                    
                                   
                               
                                   <asp:Button ID="Button4" runat="server"  Text="Agregar" Width="255px" OnClick="Button4_Click" />
                                   <asp:Button ID="Button5" runat="server" Text="Modificar" Width="255px" OnClick="Button5_Click"  />
                                   <asp:Button ID="Button6" runat="server" Text="Eliminar" Width="255px" OnClick="Button6_Click"  />
                                   <asp:Button ID="Button7" runat="server"  Text="Listar" Width="260px" OnClick="Button7_Click" />
                                   <br />
                                 
                                   
                                </div>
                                  <div class="col-md-2">
                                    
                                   <img src="img/lgos.png" width="200" alt="Carousel Image"/></div>
                              </div>
                           <h1/>
                            
                             <div class="row mt-3">
                                 <div class="col-sm-12">
                                     <asp:GridView ID="GridView3" runat="server" BackColor="Black" BorderColor="White" BorderStyle="Dashed" BorderWidth="2px" CellPadding="2" CellSpacing="2" ClientIDMode="Predictable" Font-Size="11pt" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" PageSize="5" Width="1213px">
                                         <AlternatingRowStyle BackColor="Black" BorderColor="White" BorderWidth="2px" />
                                         <Columns>
                                             <asp:CommandField ShowSelectButton="True">
                                             <ControlStyle Font-Size="12pt" />
                                             </asp:CommandField>
                                         </Columns>
                                         <EmptyDataRowStyle Font-Size="10pt" />
                                     </asp:GridView>
                                 </div>
                             </div>
                             
                            
                            
                        </div>
                    </div>
                </div>
            </div>
                
              
               </asp:View> 

               
            </asp:MultiView>
       
               
                  
       
    </form>
</body>
</html>

