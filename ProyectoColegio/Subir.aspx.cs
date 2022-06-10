using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoColegio
{
    public partial class Subir : System.Web.UI.Page
    {
        ColegioDataContext COLE = new ColegioDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
                var id = Session["ID"];//resivir ID del login
                    int uno = Convert.ToInt32(id);
                Label1.Text = Convert.ToString(uno);
                var user = from p in COLE.Curso
                           select p;

                dpCurso.DataSource = user;

                dpCurso.DataTextField = "Nombre";
                dpCurso.DataValueField = "IdCurso";
                dpCurso.DataBind();
            }
        }
        protected void btnSalir_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();
        }

        protected void BTNagregar_Click(object sender, EventArgs e)
        {
            if (txtNombre.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Inserte un Nombre')", true);
            }
            else if (txtDetalle.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Inserte un detalle')", true);
            }
            else if (Subirpdf.PostedFile.FileName == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Inserte un pdf')", true);
            }
            else if (txtFecha.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Inserte una fecha')", true);
            }
            else if (dpCurso.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Inserte un curso')", true);
            }
            else
            {
                using (ColegioDataContext colegio = new ColegioDataContext())
                {
                    var consultas = colegio.Material.Where(u => u.Nombre == txtNombre.Text).FirstOrDefault();
                    if (consultas != null)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('El Material ya Existe')", true);
                    }
                    else
                    {
                        Material material = new Material();
                        material.Nombre = txtNombre.Text.Trim();
                        material.Detalle = txtDetalle.Text.Trim();
                        material.Archivo = Subirpdf.FileBytes;
                        material.Fecha = Convert.ToDateTime(txtFecha.Text.Trim());
                        material.IdCurso = int.Parse(dpCurso.Text.Trim());
                        material.IdUsuario = int.Parse(Label1.Text.Trim());// se guardo todos los datos del archivo
                       
                        colegio.Material.InsertOnSubmit(material);

                        try
                        {
                            colegio.SubmitChanges();

                            var IdMaterial = COLE.Material.Max(x => x.IdMaterial);//encontrar el ultimo ID agregado
                            Material User = colegio.Material.Single(C => C.IdMaterial == IdMaterial);

                            User.Tipo = "Preview.aspx?id=" + IdMaterial;//Lo guarda con el ID del material 
                           
                            colegio.SubmitChanges();//se gaurda el amterial
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Se registro MATERIAL')", true);
                           
                        }
                        catch (Exception ex)
                        {
                            Response.Write(ex.Message);
                        }
                    }
                }

            }
        }
  
       
        protected void GridView1_RowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
        {
            using (ColegioDataContext colegio = new ColegioDataContext())
            {

                if (e.Row.Cells[5].Text == "1")//transfotrma el ID Curso a su nombre real 
                {
                    Curso curso = colegio.Curso.Single(C => C.IdCurso == 1);
                    e.Row.Cells[5].Text = curso.Nombre;
                }
                else if (e.Row.Cells[5].Text == "2")
                {
                    Curso curso = colegio.Curso.Single(C => C.IdCurso == 2);
                    e.Row.Cells[5].Text = curso.Nombre;
                }
                else if (e.Row.Cells[5].Text == "3")
                {
                    Curso curso = colegio.Curso.Single(C => C.IdCurso == 3);
                    e.Row.Cells[5].Text = curso.Nombre;
                }
                else if (e.Row.Cells[5].Text == "4")
                {
                    Curso curso = colegio.Curso.Single(C => C.IdCurso == 4);
                    e.Row.Cells[5].Text = curso.Nombre;
                }
                else if (e.Row.Cells[5].Text == "5")
                {
                    Curso curso = colegio.Curso.Single(C => C.IdCurso == 5);
                    e.Row.Cells[5].Text = curso.Nombre;
                }
                else if (e.Row.Cells[5].Text == "6")
                {
                    Curso curso = colegio.Curso.Single(C => C.IdCurso == 6);
                    e.Row.Cells[5].Text = curso.Nombre;
                }
                else if (e.Row.Cells[5].Text == "7")
                {
                    Curso curso = colegio.Curso.Single(C => C.IdCurso == 7);
                    e.Row.Cells[5].Text = curso.Nombre;
                }
                else if (e.Row.Cells[5].Text == "8")
                {
                    Curso curso = colegio.Curso.Single(C => C.IdCurso == 8);
                    e.Row.Cells[5].Text = curso.Nombre;
                }
                else if (e.Row.Cells[5].Text == "9")
                {
                    Curso curso = colegio.Curso.Single(C => C.IdCurso == 9);
                    e.Row.Cells[5].Text = curso.Nombre;
                }
                else if (e.Row.Cells[5].Text == "10")
                {
                    Curso curso = colegio.Curso.Single(C => C.IdCurso == 10);
                    e.Row.Cells[5].Text = curso.Nombre;
                }
                else if (e.Row.Cells[5].Text == "11")
                {
                    Curso curso = colegio.Curso.Single(C => C.IdCurso == 11);
                    e.Row.Cells[5].Text = curso.Nombre;
                }
                else if (e.Row.Cells[5].Text == "12")
                {
                    Curso curso = colegio.Curso.Single(C => C.IdCurso == 12);
                    e.Row.Cells[5].Text = curso.Nombre;
                }
                else if (e.Row.Cells[5].Text == "13")
                {
                    Curso curso = colegio.Curso.Single(C => C.IdCurso == 13);
                    e.Row.Cells[5].Text = curso.Nombre;
                }
                else if (e.Row.Cells[5].Text == "14")
                {
                    Curso curso = colegio.Curso.Single(C => C.IdCurso == 14);
                    e.Row.Cells[5].Text = curso.Nombre;
                }
                else if (e.Row.Cells[5].Text == "15")
                {
                    Curso curso = colegio.Curso.Single(C => C.IdCurso == 15);
                    e.Row.Cells[5].Text = curso.Nombre;
                }
                    else if (e.Row.Cells[5].Text == "16")
                    {
                        Curso curso = colegio.Curso.Single(C => C.IdCurso == 16);
                        e.Row.Cells[5].Text = curso.Nombre;
                    }
                    else if (e.Row.Cells[5].Text == "17")
                    {
                        Curso curso = colegio.Curso.Single(C => C.IdCurso == 17);
                        e.Row.Cells[5].Text = curso.Nombre;
                    }
                
                if (e.Row.Cells[3].Text == "1")//transforma el ID nombre al nombre real
                {
                    usuarios user = colegio.usuarios.Single(C => C.IdUsuario == 1);
                    e.Row.Cells[3].Text = user.Nombre;
                }
                else if (e.Row.Cells[3].Text == "2")
                {
                    usuarios user = colegio.usuarios.Single(C => C.IdUsuario == 2);
                    e.Row.Cells[3].Text = user.Nombre;
                }
                else if (e.Row.Cells[3].Text == "3")
                {
                    usuarios user = colegio.usuarios.Single(C => C.IdUsuario == 3);
                    e.Row.Cells[3].Text = user.Nombre;
                }
                else if (e.Row.Cells[3].Text == "4")
                {
                    usuarios user = colegio.usuarios.Single(C => C.IdUsuario == 4);
                    e.Row.Cells[3].Text = user.Nombre;
                }
                else if (e.Row.Cells[3].Text == "5")
                {
                    usuarios user = colegio.usuarios.Single(C => C.IdUsuario == 5);
                    e.Row.Cells[3].Text = user.Nombre;
                }
                else if (e.Row.Cells[3].Text == "6")
                {
                    usuarios user = colegio.usuarios.Single(C => C.IdUsuario == 6);
                    e.Row.Cells[3].Text = user.Nombre;
                }
                else if (e.Row.Cells[3].Text == "7")
                {
                    usuarios user = colegio.usuarios.Single(C => C.IdUsuario == 7);
                    e.Row.Cells[3].Text = user.Nombre;
                }
                else if (e.Row.Cells[3].Text == "8")
                {
                    usuarios user = colegio.usuarios.Single(C => C.IdUsuario == 8);
                    e.Row.Cells[3].Text = user.Nombre;
                }
                else if (e.Row.Cells[3].Text == "9")
                {
                    usuarios user = colegio.usuarios.Single(C => C.IdUsuario == 9);
                    e.Row.Cells[3].Text = user.Nombre;
                }
                else if (e.Row.Cells[3].Text == "10")
                {
                    usuarios user = colegio.usuarios.Single(C => C.IdUsuario == 10);
                    e.Row.Cells[3].Text = user.Nombre;
                }
                else if (e.Row.Cells[3].Text == "11")
                {
                    usuarios user = colegio.usuarios.Single(C => C.IdUsuario == 11);
                    e.Row.Cells[3].Text = user.Nombre;
                }
                else if (e.Row.Cells[3].Text == "12")
                {
                    usuarios user = colegio.usuarios.Single(C => C.IdUsuario == 12);
                    e.Row.Cells[3].Text = user.Nombre;
                }
                else if (e.Row.Cells[3].Text == "13")
                {
                    usuarios user = colegio.usuarios.Single(C => C.IdUsuario == 13);
                    e.Row.Cells[3].Text = user.Nombre;
                }
                else if (e.Row.Cells[3].Text == "14")
                {
                    usuarios user = colegio.usuarios.Single(C => C.IdUsuario == 14);
                    e.Row.Cells[3].Text = user.Nombre;
                }/////20
            }

        }

        protected void Button2_Click(object sender, EventArgs e)// listar todos los materiales de un docente 
        {
            var id = Session["ID"];
            int uno = Convert.ToInt32(id);

            var listaPedidosClientes = from p in COLE.Material
                                       where (p.IdUsuario == uno)
                                   // Filtro: ID del DETALLE == ID del PRODUCTO
                                       select new
                                       {
                                           p.IdMaterial,
                                           p.Nombre,
                                           p.Detalle,
                                           p.Archivo,
                                           p.Fecha,
                                           p.Tipo,
                                           p.IdCurso,
                                           p.IdUsuario,
                                       };
           
            GridView1.DataSource = listaPedidosClientes;
            GridView1.DataBind();
            MultiView1.ActiveViewIndex = 1;
        }

        protected void materiales_Click(object sender, EventArgs e)// para buscar por nombre del docente 
        {
            MultiView1.ActiveViewIndex = 0;
            var id = Session["ID"];
            int uno = Convert.ToInt32(id);
            Label1.Text = Convert.ToString(uno);
            var user = from p in COLE.Curso
                       select p;

            dpCurso.DataSource = user;

            dpCurso.DataTextField = "Nombre";
            dpCurso.DataValueField = "IdCurso";
            dpCurso.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)// eliminar el material
        {

         
          var seleccion  = this.GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
            var codigo = (from C in COLE.Material
                              where C.Nombre.Contains(seleccion)
                              select C).First();
                COLE.Material.DeleteOnSubmit(codigo);
                try
                {
                    COLE.SubmitChanges();
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('MATERIAL " + seleccion + " Eliminado ')", true);
                var id = Session["ID"];
                int uno = Convert.ToInt32(id);

                var listaPedidosClientes = from p in COLE.Material
                                           where (p.IdUsuario == uno)
                                           // Filtro: ID del DETALLE == ID del PRODUCTO
                                           select new
                                           {
                                               p.IdMaterial,
                                               p.Nombre,
                                               p.Detalle,
                                               p.Archivo,
                                               p.Fecha,
                                               p.Tipo,
                                               p.IdCurso,
                                               p.IdUsuario,
                                           };

                GridView1.DataSource = listaPedidosClientes;
                GridView1.DataBind();
                MultiView1.ActiveViewIndex = 1;

            }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            
        }
    }
    
}