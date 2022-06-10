using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoColegio
{
    public partial class frmLogin : System.Web.UI.Page
    {
        ColegioDataContext colegio = new ColegioDataContext();
       protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            using(ColegioDataContext cole=new ColegioDataContext())
            {
                var usuario = txtUsuario.Text.Trim();
                var clave = txtClave.Text.Trim();
                        if (usuario != "" && clave != "")
                        {
                        var usuarios = colegio.usuarios.FirstOrDefault(u => u.Usuario == usuario);//expresion lamda para buscar usuario
                        if (usuarios != null)
                        {
                        if (usuarios.Usuario == usuario && usuarios.Contrasena== clave)//compara el usuario y la contraseña
                        {
                            if (usuarios.IdTipoUsuario == 1)//verifica el tipo 1 = director 
                            {
                                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Bienvenido al Colegio mariscal Gamarra')", true);
                                Session["ID"] = usuarios.IdUsuario;//envia el ID de la persona Director 
                                var nombre = usuarios.Nombre;
                                FormsAuthentication.RedirectFromLoginPage(nombre, true);//envia el usuario para validar el ingreso 
                                Response.Redirect("DIRECTOR.aspx");//redirecciona a la lagina director 
                            }
                            else if (usuarios.IdTipoUsuario == 2)//verifica el tipo 2 = docente  
                            {
                                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Bienvenido al Colegio mariscal Gamarra')", true);
                                Session["ID"] = usuarios.IdUsuario;
                                var nombre = usuarios.Nombre;
                                FormsAuthentication.RedirectFromLoginPage(nombre, true);
                                Response.Redirect("DOCENTES.aspx");
                            }
                            else if (usuarios.IdTipoUsuario == 3)//verifica el tipo 3 = alumno 
                            {
                                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Bienvenido al Colegio mariscal Gamarra')", true);
                                Session["ID"] = usuarios.IdUsuario;
                                var nombre = usuarios.Nombre;
                                FormsAuthentication.RedirectFromLoginPage(nombre, true);
                                Response.Redirect("ESTUDIANTE.aspx");
                            }
                        }
                        else
                        {
                         ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Contraseña Incorrecta')", true);
                        }
                    }
                    else
                    {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('El usuario Ingresado No existe')", true);
                    }
                }
                else
                {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Ingrese usuario y contraseña')", true);
                }
            }
        }
    }
}