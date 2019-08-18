using CAD;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GYM.Web
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void nuevoButton_Click(object sender, EventArgs e)
        {
            if (!validarCampos()) return;
            CADTipoDocumento.InsertTipoDocumento(descripcionTextBox.Text);
            tiposDocumentosGridView.DataBind();
            mensajeLabel.Text = "Ingresado con exito";

            descripcionTextBox.Text = string.Empty;
            descripcionTextBox.Focus();
        }

        private bool validarCampos()
        {
            if (descripcionTextBox.Text == string.Empty)
            {
                mensajeLabel.Text = "Debes Escribir una descripcion";
                mensajeLabel.Focus();
                return false;
            }
            return true;
        }
    }
}