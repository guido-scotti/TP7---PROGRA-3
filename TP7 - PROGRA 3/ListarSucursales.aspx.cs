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
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        

        protected void btnSeleccionar_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "eventoSeleccionar")
            {
                // Obtener el nombre desde CommandArgument
                string nombreSucursal = e.CommandArgument.ToString();

                // Obtener el ListViewItem donde se hizo clic
                ListViewDataItem item = (ListViewDataItem)((Control)sender).NamingContainer;

                // Buscar los otros controles (asegúrate de que tengan estos IDs en tu ListView)
                HiddenField idSucursal = (HiddenField)item.FindControl("Id_Sucursal");
                string id = idSucursal.Value;
                Label txtDescripcion = (Label)item.FindControl("DescripcionSucursalLabel");

                // Obtener la lista de sesión o crear una nueva
                List<Sucursal> listaSucursales = Session["ListaSucursales"] as List<Sucursal> ?? new List<Sucursal>();

                
                Sucursal sucursal = new Sucursal
                {
                    Id = id,
                    Nombre = nombreSucursal,
                    Descripcion = txtDescripcion.Text
                };

                if (!listaSucursales.Any(s => s.Id == sucursal.Id)) { 
                // Agregar a la lista
                listaSucursales.Add(sucursal);
                }

                // Guardar en la sesión
                Session["ListaSucursales"] = listaSucursales;

                // Mostrar mensaje
                lblMensaje.Text = $"Sucursal '{nombreSucursal}' agregada a la sesión.";
            }
        }

        protected void btnBusqueda_Click(object sender, EventArgs e)
        {
            string busqueda = txtBusqueda.Text.Trim();
            if (busqueda.Length > 0)
            {
                SqlDataSourceSucursales.SelectCommand =
                    "SELECT [NombreSucursal], [DescripcionSucursal], [URL_Imagen_Sucursal], [Id_Sucursal] " +
                    "FROM [Sucursal] " +
                    "WHERE [NombreSucursal] LIKE @busqueda";

                SqlDataSourceSucursales.SelectParameters.Clear(); // Limpia si ya había parámetros antes
                SqlDataSourceSucursales.SelectParameters.Add("busqueda", "%" + busqueda + "%");
            }
            else
            {
                SqlDataSourceSucursales.SelectCommand =
                    "SELECT [NombreSucursal], [DescripcionSucursal], [URL_Imagen_Sucursal], [Id_Sucursal] " +
                    "FROM [Sucursal] ";
            }

        }

        protected void Btn_Provincias_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "SelectProvincia")
            {
                // Obtener el IdProvincia del botón clickeado
                int idProvincia = Convert.ToInt32(e.CommandArgument);

                // Filtrar el DataList de sucursales
                FiltrarSucursalesPorProvincia(idProvincia);
            }


        }



        protected void FiltrarSucursalesPorProvincia(int idProvincia)
        {
            SqlDataSourceSucursales.SelectCommand = "SELECT [NombreSucursal], [DescripcionSucursal], [URL_Imagen_Sucursal], [Id_Sucursal] " +
        "FROM [Sucursal] WHERE Id_ProvinciaSucursal = @IdProvincia";

            SqlDataSourceSucursales.SelectParameters.Clear();

            
            SqlDataSourceSucursales.SelectParameters.Add("IdProvincia", idProvincia.ToString());

            


        }

        

        
    }
}