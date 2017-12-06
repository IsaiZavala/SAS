using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SAS
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            string straName = txtName.Value;

            cusErrorIniciarSesion.ErrorMessage = "No se pudo iniciar sesion";
            cusErrorIniciarSesion.IsValid = false;

            Response.Redirect("~/WEB/Forms/Inicio.aspx", false);
        }
    }
}