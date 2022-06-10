using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoColegio
{
    public partial class VERMATERIALaspx : System.Web.UI.Page
    {
        ColegioDataContext COLE = new ColegioDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var listaPedidosClientes = from p in COLE.Material
                                           select new
                                          {
                                           p.IdMaterial,
                                           p.Nombre,
                                           p.Detalle,
                                           p.Archivo,
                                           p.Fecha,
                                           p.Tipo,
                                           p.IdCurso,
                                           p.IdUsuario
                                       };

                GridView1.DataSource = listaPedidosClientes;
                GridView1.DataBind();
                var user = from p in COLE.usuarios
                           where (p.IdTipoUsuario == 2)select p;

                DropDownList1.DataSource = user;

                DropDownList1.DataTextField = "Nombre";
                DropDownList1.DataValueField = "IdUsuario";
                DropDownList1.DataBind();
            }
           
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();
        }
        protected void GridView1_RowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
        {
            using (ColegioDataContext colegio = new ColegioDataContext())
            {

                if (e.Row.Cells[5].Text == "1")
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
                if (e.Row.Cells[3].Text == "1")
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
            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (ColegioDataContext pedido = new ColegioDataContext())
            {
                
                var user = from p in COLE.Material
                           where (p.IdUsuario == Convert.ToInt32(DropDownList1.SelectedValue))
                            select new
                            {
                                p.IdMaterial,
                                p.Nombre,
                                p.Detalle,
                                p.Archivo,
                                p.Fecha,
                                p.Tipo,
                                p.IdCurso,
                                p.IdUsuario
                            };

                GridView1.DataSource = user;
                GridView1.DataBind();


            }
        }

        protected void BTNBUSCAR_Click(object sender, EventArgs e)
        {
            using (ColegioDataContext pedido = new ColegioDataContext())
            {
                var nro = TXTBSUCAR.Text;
                var user = from p in COLE.Material
                           where (p.Nombre == nro)
                           select new
                           {
                               p.IdMaterial,
                               p.Nombre,
                               p.Detalle,
                               p.Archivo,
                               p.Fecha,
                               p.Tipo,
                               p.IdCurso,
                               p.IdUsuario
                           };

                GridView1.DataSource = user;
                GridView1.DataBind();
                if (GridView1.Rows.Count==0)
                {
                   Label3.Text="NO SE ENCONTRARON RESULTADOS";
                    
                }else 
                {
                    Label3.Text = "LISTA DE MATERIALES ENCONTRADOS";
                }

            }
        }
    }
}