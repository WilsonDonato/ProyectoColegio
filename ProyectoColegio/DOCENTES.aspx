<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DOCENTES.aspx.cs" Inherits="ProyectoColegio.DOCENTES" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>DOCENTE</title>
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
                                 <a class="btn" href="DOCENTES.aspx">MISION - VISIÓN</a>
                                 <a class="btn" href="Subir.aspx">REGISTRAR MATERIAL</a>
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 DOCENTE:<asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black"></asp:Label>,</asp:Label> <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Black"></asp:Label>
                               
                            <div class="ml-auto">
                           <asp:Button ID="btnSalir" class="fixed-bottom" runat="server" value="SALIR" Text="SALIR" BackColor="Yellow" BorderColor="Black" BorderStyle="Outset" BorderWidth="5px" ForeColor="Black" Font-Bold="True" Font-Italic="True" Font-Size="Medium" OnClick="btnSalir_Click" />
                                                      
                            </div>
                        </div>
                    </nav>
                
            </div>
  
        <div class="about wow fadeInUp" data-wow-delay="0.1s">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-5 col-md-10">
                            <div class="about-img">
                                <img src="img/lgos.png" width="300" alt="Image"/>
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-6">
                            <div class="section-header text-left">
                              
                                <h1>MISIÓN</h1>
                                <h2>Velar por la realización de un servicio social estudiantil, basado en la solidaridad, trabajo en equipo, responsabilidad y honradez, de preferencia dirigido hacia los sectores más pobres de nuestro país con apoyo y participación de la comunidad colegial.</h2>
                               
                            </div>
                            <div class="about-text">
                               <h1>VISIÓN</h1>
                                <h2>Ser una instancia modelo reconocida en la promoción y acompañamiento de un servicio social estudiantil que contribuya en la formación de escolares con sensibilidad social comprometidos con la construcción de una sociedad que promueva la dignidad humana.</h2>
                               
                               
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                
               
                  
       
    </form>
</body>
</html>
