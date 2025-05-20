using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using TP7___PROGRA_3;

public class ManejarSucursales
{
    private Page _page;
    private SqlDataSource _sqlDataSource;
    private Label _lblMensaje;
    private TextBox _txtBusqueda;

    public ManejarSucursales(Page page, SqlDataSource sqlDataSource, Label lblMensaje, TextBox txtBusqueda)
    {
        _page = page;
        _sqlDataSource = sqlDataSource;
        _lblMensaje = lblMensaje;
        _txtBusqueda = txtBusqueda;
    }

    public void SeleccionarSucursal(object sender, CommandEventArgs e)
    {
        if (e.CommandName == "eventoSeleccionar")
        {
            string nombreSucursal = e.CommandArgument.ToString();
            ListViewDataItem item = (ListViewDataItem)((Control)sender).NamingContainer;

            HiddenField idSucursal = (HiddenField)item.FindControl("Id_Sucursal");
            Label txtDescripcion = (Label)item.FindControl("DescripcionSucursalLabel");

            string id = idSucursal.Value;
            string descripcion = txtDescripcion.Text;

            List<Sucursal> listaSucursales = _page.Session["ListaSucursales"] as List<Sucursal> ?? new List<Sucursal>();

            Sucursal sucursal = new Sucursal
            {
                Id = id,
                Nombre = nombreSucursal,
                Descripcion = descripcion
            };

            if (!listaSucursales.Any(s => s.Id == sucursal.Id))
            {
                listaSucursales.Add(sucursal);
            }

            _page.Session["ListaSucursales"] = listaSucursales;
            _lblMensaje.Text = $"Sucursal '{nombreSucursal}' agregada a la sesión.";
        }
    }

    public void BuscarSucursal()
    {
        string busqueda = _txtBusqueda.Text.Trim();

        if (!string.IsNullOrEmpty(busqueda))
        {
            _sqlDataSource.SelectCommand =
                "SELECT [NombreSucursal], [DescripcionSucursal], [URL_Imagen_Sucursal], [Id_Sucursal] " +
                "FROM [Sucursal] WHERE [NombreSucursal] LIKE @busqueda";

            _sqlDataSource.SelectParameters.Clear();
            _sqlDataSource.SelectParameters.Add("busqueda", "%" + busqueda + "%");
        }
        else
        {
            _sqlDataSource.SelectCommand =
                "SELECT [NombreSucursal], [DescripcionSucursal], [URL_Imagen_Sucursal], [Id_Sucursal] FROM [Sucursal]";
        }
    }

    public void FiltrarPorProvincia(object sender, CommandEventArgs e)
    {
        if (e.CommandName == "SelectProvincia")
        {
            int idProvincia = Convert.ToInt32(e.CommandArgument);
            FiltrarSucursalesPorProvincia(idProvincia);
        }
    }

    private void FiltrarSucursalesPorProvincia(int idProvincia)
    {
        _sqlDataSource.SelectCommand =
            "SELECT [NombreSucursal], [DescripcionSucursal], [URL_Imagen_Sucursal], [Id_Sucursal] " +
            "FROM [Sucursal] WHERE Id_ProvinciaSucursal = @IdProvincia";

        _sqlDataSource.SelectParameters.Clear();
        _sqlDataSource.SelectParameters.Add("IdProvincia", idProvincia.ToString());
    }
}