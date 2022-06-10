using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoColegio
{
    public partial class Usuarios : System.Web.UI.Page
    {
        ColegioDataContext COLEGIO = new ColegioDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            var consulta = from C in COLEGIO.usuarios
                           select C;
            GridView1.DataSource = consulta;
            GridView1.DataBind();
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtNombre.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Inserte un Nombre')", true);
            }
            else if (txtApellido.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Inserte un apellido')", true);
            }
            else if (txtDireccion.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Inserte una direccion')", true);
            }
            else if (txtCorreo.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Inserte un Correo')", true);
            }
            else if (dptEstado.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Inserte Estado')", true);
            }
            else if (txtUsuario.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Inserte un Usuario')", true);
            }
            else if (txtClave.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Inserte Contraseña')", true);
            }
            else if (dbotipo.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Inserte Tipo')", true);
            }
            else if (txtCelular.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Inserte Celular')", true);
            }
            else
            {
                using (ColegioDataContext colegio = new ColegioDataContext())
                {
                    var consultas = colegio.usuarios.Where(u => u.Nombre == txtNombre.Text).FirstOrDefault();
                    if (consultas != null)//expresion lambda que compara ususario agregado
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('El Usuario ya Existe')", true);
                    }
                    else
                    {
                        usuarios User = new usuarios();//lINQ
                        User.Nombre = txtNombre.Text.Trim();
                        User.Apellido = txtApellido.Text.Trim();
                        User.Direccion = txtDireccion.Text.Trim();
                        User.Celular = int.Parse(txtCelular.Text.Trim());
                        User.Correo = txtCorreo.Text.Trim();
                        User.Contrasena = txtClave.Text.Trim();
                        User.Activo = dptEstado.SelectedValue;
                        User.Direccion = txtDireccion.Text.Trim();
                        User.Usuario = txtUsuario.Text.Trim();
                        User.IdTipoUsuario = Convert.ToInt32(dbotipo.Text.Trim());
                        colegio.usuarios.InsertOnSubmit(User);//guarda el usuario

                        try
                        {
                            colegio.SubmitChanges();//guarda el usuario en la bd
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Se registro USUARIO')", true);
                            var consulta = from C in colegio.usuarios
                                           select C;//Expresion para listar usuarios(proyeccion)
                            GridView1.DataSource = consulta;
                            GridView1.DataBind();
                        }
                        catch (Exception ex)
                        {
                            Response.Write(ex.Message);
                        }
                    }
                }

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
            if (lblID.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Seleccione Un Dato de la Lista')", true);
            }
            else
            {
                using (ColegioDataContext colegio = new ColegioDataContext())
                {
                    {
                        usuarios User = colegio.usuarios.Single(C => C.IdUsuario == int.Parse(lblID.Text.Trim()));//compara ID segun al Id 
                    
                        User.Nombre = txtNombre.Text.Trim();
                        User.Apellido = txtApellido.Text.Trim();
                        User.Direccion = txtDireccion.Text.Trim();
                        User.Celular = int.Parse(txtCelular.Text.Trim());
                        User.Correo = txtCorreo.Text.Trim();
                        User.Contrasena = txtClave.Text.Trim();
                        User.Activo = dptEstado.SelectedValue;
                        User.Direccion = txtDireccion.Text.Trim();
                        User.Usuario = txtUsuario.Text.Trim();
                        User.IdTipoUsuario = Convert.ToInt32(dbotipo.Text.Trim());
                        

                        try
                        {
                            colegio.SubmitChanges();
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Se Modifico USUARIO')", true);
                            var consulta = from C in colegio.usuarios
                                           select C;
                            GridView1.DataSource = consulta;
                            GridView1.DataBind();
                        }
                        catch (Exception ex)
                        {
                            Response.Write(ex.Message);
                        }
                    }
                }

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (lblID.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Seleccione un valor a eliminar')", true);
            }
            else
            {
                var codigo = (from C in COLEGIO.usuarios// consulta a la persona (proyeccion)
                              where C.Nombre.Contains(txtNombre.Text.Trim())
                              select C).First();
                COLEGIO.usuarios.DeleteOnSubmit(codigo);
                try
                {
                    COLEGIO.SubmitChanges();
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('USUARIO Eliminado')", true);
                    var consulta = from C in COLEGIO.usuarios
                                   select C;
                    GridView1.DataSource = consulta;
                    GridView1.DataBind();

                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)//seleccionar y listar un usuario
        {
            lblID.Text = this.GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
            txtUsuario.Text = this.GridView1.Rows[GridView1.SelectedIndex].Cells[2].Text;  
            txtNombre.Text = this.GridView1.Rows[GridView1.SelectedIndex].Cells[3].Text;
            txtApellido.Text = this.GridView1.Rows[GridView1.SelectedIndex].Cells[4].Text;
            txtCorreo.Text = this.GridView1.Rows[GridView1.SelectedIndex].Cells[5].Text;
            txtCelular.Text = this.GridView1.Rows[GridView1.SelectedIndex].Cells[6].Text;
            txtClave.Text = this.GridView1.Rows[GridView1.SelectedIndex].Cells[7].Text;
            dptEstado.SelectedValue = this.GridView1.Rows[GridView1.SelectedIndex].Cells[8].Text;
            txtDireccion.Text = this.GridView1.Rows[GridView1.SelectedIndex].Cells[9].Text;
            dbotipo.SelectedValue = this.GridView1.Rows[GridView1.SelectedIndex].Cells[10].Text;

            
        }

        protected void btnListar_Click(object sender, EventArgs e)
        {
            lblID.Text = "";
            lbl1.Text = "";
            txtUsuario.Text = "";
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtCorreo.Text = "";
            txtCelular.Text = "";
            txtClave.Text = "";
            dptEstado.SelectedValue = "";
            txtDireccion.Text = "";
            dbotipo.SelectedValue = "";
            var consulta = from C in COLEGIO.usuarios
                           select C;
            GridView1.DataSource = consulta;
            GridView1.DataBind();
        }

     

        protected void Button8_Click(object sender, EventArgs e)//vista para ver cursos
        {
            var consulta = from C in COLEGIO.Curso
                           select C;
            GridView3.DataSource = consulta;
            GridView3.DataBind();
            MultiView1.ActiveViewIndex = 1;//vista cursos segun al multiview = 1
        }

        protected void Button4_Click(object sender, EventArgs e)//agregar curso
        {
            if (TXTCURSO.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Inserte un curso')", true);
                MultiView1.ActiveViewIndex = 1;
            }
            else if (TXTDETALLE.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Inserte DETALLE')", true);
                MultiView1.ActiveViewIndex = 1;
            }
            else
            {
                using (ColegioDataContext colegio = new ColegioDataContext())
                {
                    var consultas = colegio.Curso.Where(u => u.Nombre == TXTCURSO.Text).FirstOrDefault();
                    if (consultas != null)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('El CURSO ya Existe')", true);
                        MultiView1.ActiveViewIndex = 1;
                    }
                    else
                    {
                        Curso curso = new Curso();
                        curso.Nombre = TXTCURSO.Text.Trim();
                        curso.Detalle = TXTDETALLE.Text.Trim();
                       
                        colegio.Curso.InsertOnSubmit(curso);

                        try
                        {
                            colegio.SubmitChanges();
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Se registro El curso')", true);
                            var consulta = from C in colegio.Curso
                                           select C;
                            GridView3.DataSource = consulta;
                            GridView3.DataBind();
                            MultiView1.ActiveViewIndex = 1;
                        }
                        catch (Exception ex)
                        {
                            Response.Write(ex.Message);
                        }
                    }
                }

            }
        }

        protected void Button5_Click(object sender, EventArgs e)//modificar curso
        {
            if (lbl1.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Seleccione Un Dato de la Lista')", true);
                MultiView1.ActiveViewIndex = 1;
            }
            else
            {
                using (ColegioDataContext colegio = new ColegioDataContext())
                {
                    {
                        Curso User = colegio.Curso.Single(C => C.IdCurso == int.Parse(lbl1.Text.Trim()));
                        User.Nombre = TXTCURSO.Text.Trim();
                        User.Detalle = TXTDETALLE.Text.Trim();


                        try
                        {
                            colegio.SubmitChanges();
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Se Modifico EL CURSO')", true);
                            var consulta = from C in colegio.Curso
                                           select C;
                            GridView3.DataSource = consulta;
                            GridView3.DataBind();
                            MultiView1.ActiveViewIndex = 1;
                        }
                        catch (Exception ex)
                        {
                            Response.Write(ex.Message);
                        }
                    }
                }

            }
        }

        protected void Button6_Click(object sender, EventArgs e)//eliminar curso
        {
            if (lbl1.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Seleccione un valor a eliminar')", true);
                MultiView1.ActiveViewIndex = 1;
            }
            else
            {
                var codigo = (from C in COLEGIO.Curso
                              where C.Nombre.Contains(TXTCURSO.Text.Trim())
                              select C).First();
                COLEGIO.Curso.DeleteOnSubmit(codigo);
                try
                {
                    COLEGIO.SubmitChanges();
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('CURSO Eliminado')", true);
                    var consulta = from C in COLEGIO.Curso
                                   select C;
                    GridView3.DataSource = consulta;
                    GridView3.DataBind();
                    MultiView1.ActiveViewIndex = 1;
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)//seleccionar curso y listar 
        {
            lbl1.Text = this.GridView3.Rows[GridView3.SelectedIndex].Cells[1].Text;
            TXTCURSO.Text = this.GridView3.Rows[GridView3.SelectedIndex].Cells[2].Text;
            TXTDETALLE.Text = this.GridView3.Rows[GridView3.SelectedIndex].Cells[3].Text;
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            lbl1.Text = "";
            TXTCURSO.Text = "";
            TXTDETALLE.Text = "";
            var consulta = from C in COLEGIO.Curso
                           select C;
            GridView3.DataSource = consulta;
            GridView3.DataBind();
            MultiView1.ActiveViewIndex = 1;
        }

       
    }
}