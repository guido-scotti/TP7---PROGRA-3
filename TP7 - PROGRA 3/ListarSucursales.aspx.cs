using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP7___PROGRA_3
{
	public partial class WebForm1 : System.Web.UI.Page
	{
        ManejarSucursales manejarSucursales;

        protected void Page_Load(object sender, EventArgs e)
        {
            manejarSucursales = new ManejarSucursales(this, SqlDataSourceSucursales, lblMensaje, txtBusqueda);
        }

        protected void btnSeleccionar_Command(object sender, CommandEventArgs e)
        {
            manejarSucursales.SeleccionarSucursal(sender, e);
        }

        protected void btnBusqueda_Click(object sender, EventArgs e)
        {
            manejarSucursales.BuscarSucursal();
        }

        protected void Btn_Provincias_Command(object sender, CommandEventArgs e)
        {
            manejarSucursales.FiltrarPorProvincia(sender, e);
        }

    }
}