using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoColegio
{
    public partial class DIRECTOR : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ColegioDataContext pedido = new ColegioDataContext();
            if (!IsPostBack)
            {
              
                var id = Session["ID"];
                int uno = Convert.ToInt32(id);
                var colegio = pedido.usuarios.Where(u => u.IdUsuario == uno).FirstOrDefault();
                Label1.Text = colegio.Nombre;
                Label2.Text = colegio.Apellido;
            }
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();
        }
    }
}