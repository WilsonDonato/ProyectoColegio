using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoColegio
{
    public partial class Preview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                ColegioDataContext pedido = new ColegioDataContext();
                if (!IsPostBack)
                {

                    var id = Request.QueryString["id"];//recivir id
                    Label1.Text = id.ToString();
                    Material user = pedido.Material.Single(C => C.IdMaterial == Convert.ToInt32(id));// listar material segun al ID

                    var ids = user.Archivo.ToArray();//binario como arreglo
                    byte[] pdf = (byte[])ids;//arreglo a byte
                    //Response.ContentType = "image/JPEG";
                    Response.ContentType = "application/pdf";//muestra la interfaz como pdf 
                    Response.BinaryWrite(pdf);//convierte byte a pdf

                }
            }
            catch (Exception ex)
            {
                string mensaje = ex.Message;
            }
        }
    }
    
}