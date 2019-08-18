using CAD;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GYM.Web
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void nuevoButton_Click(object sender, EventArgs e)
        {
            if (!validarCampos()) return;
            decimal precio = decimal.Parse(PrecioTextBox.Text);
            float stock = float.Parse(stockTextBox.Text);
            CADProducto.InsertProducto(descripcionTextBox.Text, precio,stock);
            productosGridView.DataBind();
            mensajeLabel.Text = "Producto creado con exito";

            descripcionTextBox.Text = string.Empty;
            PrecioTextBox.Text = string.Empty;
            stockTextBox.Text = string.Empty;
            descripcionTextBox.Focus();
        }

        private bool validarCampos()
        {
            if (descripcionTextBox.Text == string.Empty)
            {
                mensajeLabel.Text = "Debes escribir una descripion del producto";
                descripcionTextBox.Focus();
                return false;
            }

            if (PrecioTextBox.Text == string.Empty)
            {
                mensajeLabel.Text = "Debes ingresar un precio";
                PrecioTextBox.Focus();
                return false;
            }

            decimal precio = 0;
            if (!decimal.TryParse(PrecioTextBox.Text,out precio))
            {
                mensajeLabel.Text = "Debes ingresar un precio numerico";
                PrecioTextBox.Focus();
                return false;
            }

            if (precio <= 0)
            {
                mensajeLabel.Text = "Debes ingresar un precio..";
                PrecioTextBox.Focus();
                return false;
            }

            if (stockTextBox.Text == string.Empty)
            {
                mensajeLabel.Text = "Debes ingresar un stock";
                stockTextBox.Focus();
                return false;
            }  


            float stock = 0;
            if (!float.TryParse(stockTextBox.Text,out stock))
            {
                mensajeLabel.Text = "Debes ingresar un formato numerico";
                stockTextBox.Focus();
                return false;
            }

            if (stock < 0)
            {
                mensajeLabel.Text = "Debes ingresar un stock positico";
                stockTextBox.Focus();
                return false;
            }
            return true;
        }
    }
}