using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP7___PROGRA_3
{
	public partial class SucursalesSeleccionadas : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

			if (!IsPostBack)
			{
                List<Sucursal> listaSucursales = Session["ListaSucursales"] as List<Sucursal> ?? new List<Sucursal>();

				if (listaSucursales != null && listaSucursales.Count != 0)
				{


					GridEmpresas.DataSource = listaSucursales;

					GridEmpresas.DataBind();
				}
				else
				{
					Label1.Text = "No hay empresas Seleccionadas";
				}

            }


        }
	}
}