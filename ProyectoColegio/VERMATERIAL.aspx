<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VERMATERIAL.aspx.cs" Inherits="ProyectoColegio.VERMATERIALaspx" %>

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


















 

        </style>
<body>
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
                                 <a class="btn" href="ESTUDIANTE.aspx">MISION - VISIÓN</a>
                                <a class="btn" href="VERMATERIAL.aspx">VER MATERIALES SUBIDOS DEL COLEGIO</a>
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                
                            <div class="ml-auto">
                              <asp:Button ID="btnSalir" class="fixed-bottom" runat="server" value="SALIR" Text="SALIR" BackColor="Yellow" BorderColor="Black" BorderStyle="Outset" BorderWidth="5px" ForeColor="Black" Font-Bold="True" Font-Italic="True" Font-Size="Medium" OnClick="btnSalir_Click" />
                                                      
                            </div>
                                 </div>
                        </div>
                    </nav>
                
            </div>
   
        <div>
        </div>

</body>
</html>
  <h1 class="auto-style2" style="font-size: 30px">REGISTRO DE MATERIALES
      REGISTRADOS POR DOCENTES
                  &nbsp;&nbsp;&nbsp;<br />
      <br />
      BUSCAR TAREA:&nbsp;
      <asp:TextBox ID="TXTBSUCAR" runat="server" Font-Size="12pt" Width="170px"></asp:TextBox>
&nbsp;
      <asp:Button ID="BTNBUSCAR" runat="server" OnClick="BTNBUSCAR_Click" Text="BUSCAR" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BUSCAR DOCENTE:&nbsp;&nbsp;
      <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
      </asp:DropDownList>
      <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  </h1>
     <div class="container">
  <div class="row">
    <div class="col-md-10">
       <asp:GridView ID="GridView1" AutoGenerateColumns="False" runat="server" Font-Size="12pt" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnRowDataBound="GridView1_RowDataBound" Width="1059px" >
           <Columns>

                 <asp:BoundField DataField="IdMaterial" HeaderText="ID" />
                 <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                 <asp:BoundField DataField="Detalle" HeaderText="Detalle" />
               <asp:BoundField DataField="IdUsuario" HeaderText="Docente" />
                 <asp:BoundField DataField="Fecha" DataFormatString="{0:d}" HeaderText="Fecha" />
                 
                 <asp:BoundField DataField="IdCurso" HeaderText="Curso" />
               <asp:HyperLinkField HeaderText="Url" Text="Ver" DataNavigateUrlFields="Tipo" Target="_blank" >
                     
                 <ControlStyle Font-Size="12pt" />
                 </asp:HyperLinkField>
                
                
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
        <br />
        <asp:Label ID="Label3" runat="server" ForeColor="White"></asp:Label>
&nbsp;&nbsp;&nbsp;
    </div>
   
    <div class="col-md-2">
        
       <img src="img/lgos.png" width="200" alt="Image"/>
    </div>
  </div>
</div>
                  
                  
       
    </form>

</body>
</html> 