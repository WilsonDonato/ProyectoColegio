<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Subir.aspx.cs" Inherits="ProyectoColegio.Subir" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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


















 

        .auto-style1 {
            margin-left: 40px;
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
                                 <a class="btn" href="DOCENTES.aspx">MISION - VISIÓN</a>
                                <a class="btn" href="Subir.aspx">REGISTRAR MATERIAL</a>
                                 
                            <div class="ml-auto">
                             <asp:Button ID="btnSalir" class="fixed-bottom" runat="server" value="SALIR" Text="SALIR" BackColor="Yellow" BorderColor="Black" BorderStyle="Outset" BorderWidth="5px" ForeColor="Black" Font-Bold="True" Font-Italic="True" Font-Size="Medium" OnClick="btnSalir_Click" />
                                                      
                            </div>
                        </div>
                    </nav>
                
            </div>
       <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="1"  >
               <asp:View ID="View1" runat="server">
                <div class="about wow fadeInUp" data-wow-delay="0.1s">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-5 col-md-10">
                            
                                <img src="img/lgos.png" width="300" alt="Image"/>
                               
                                    <br />
                                    <br />
                                    <br />
                                </h1>
                        <h1> 
                                Codigo Docente:
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                        </h1>
                        </div>
                        <div class="col-lg-7 col-md-6">
                            <div class="auto-style1">
                                <p>&nbsp;</p>
                                 <h1>AGREGAR NUEVOS MATERIALES
                                     <br />
                                <p>&nbsp;</p>

                                <p>NOMBRE MATERIAL:
                                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                                </p>
                                <p>DETALLE DEL MATERIAL:<asp:TextBox ID="txtDetalle" runat="server"></asp:TextBox>
                                </p>
                               
                                </p>
                               <p>FECHA:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox type="date" ID="txtFecha" runat="server" Width="417px"></asp:TextBox>
                                 </p>
                                
                               
                                <p>CURSO:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="dpCurso" runat="server" AutoPostBack="True" Width="438px">
                                    <asp:ListItem>CIENCIA AMBIENTE</asp:ListItem>
                                    <asp:ListItem>COMUNICACION</asp:ListItem>
                                      <asp:ListItem>MATEMATICA</asp:ListItem>
                                     <asp:ListItem>PERSONAL SOCIAL</asp:ListItem>
                                     <asp:ListItem>RELIGION</asp:ListItem>
                                </asp:DropDownList>
                                </p>
                                      <p>ARCHIVO:&nbsp;
                                     <asp:FileUpload ID="Subirpdf" runat="server" Font-Size="13pt" Height="34px" Width="400px" />
                                </p>
                                <p>
                                    <asp:Button ID="BTNagregar" runat="server" OnClick="BTNagregar_Click" Text="Agregar" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Ver Materiales" />
                                </p>
                                <p>
                                    
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
               </asp:View> 
					
               <asp:View ID="View2" runat="server">
              <h1 class="auto-style2">REGISTRO DE MATERIALES
     <asp:Label ID="Label2" runat="server"></asp:Label>
                  &nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="materiales" runat="server" Text="Agregar Nuevo" OnClick="materiales_Click" />
     </h1>
     <div class="container">
  <div class="row">
    <div class="col-md-10">
       <asp:GridView ID="GridView1" AutoGenerateColumns="False" runat="server" Font-Size="12pt" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnRowDataBound="GridView1_RowDataBound" Width="1059px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
           <Columns>

                 <asp:BoundField DataField="IdMaterial" HeaderText="ID" />
                 <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                 <asp:BoundField DataField="Detalle" HeaderText="Detalle" />
               <asp:BoundField DataField="IdUsuario" HeaderText="Docente" />
                 <asp:BoundField DataField="Fecha" DataFormatString="{0:d}" HeaderText="Fecha" />
                 
                 <asp:BoundField DataField="IdCurso" HeaderText="Curso" />
               <asp:HyperLinkField HeaderText="Url" Text="VerMaterial" DataNavigateUrlFields="Tipo" Target="_blank" >
                     
                 <ControlStyle Font-Size="12pt" />
                 </asp:HyperLinkField>
                 <asp:CommandField SelectText="Eliminar" ShowSelectButton="True">
                 <ControlStyle Font-Size="12pt" />
                 </asp:CommandField>
           </Columns>
           <EmptyDataRowStyle Font-Size="12pt" />
           <FooterStyle BackColor="White" ForeColor="#000066" />
           <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
           <RowStyle ForeColor="#000066" />
           <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
           <SortedAscendingCellStyle BackColor="#F1F1F1" />
           <SortedAscendingHeaderStyle BackColor="#007DBB" />
           <SortedDescendingCellStyle BackColor="#CAC9C9" />
           <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
    </div>
   
    <div class="col-md-2">
       <img src="img/lgos.png" width="200" alt="Image"/>
    </div>
  </div>
</div>
        
              
               </asp:View> 

               
            </asp:MultiView>
       
                
               
                  
       
    </form>

</body>
</html>

