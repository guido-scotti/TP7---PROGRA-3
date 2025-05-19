<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarSucursales.aspx.cs" Inherits="TP7___PROGRA_3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 33px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {            margin-left: 40px;
        }
        .auto-style7 {
            height: 28px;
        }
        .auto-style11 {
            height: 25px;
        }
        .auto-style15 {
            height: 28px;
            width: 1%;
        }
        .auto-style16 {
            height: 25px;
            width: 1%;
        }
        .auto-style19 {
            height: 28px;
            width: 30%;
        }
        .auto-style20 {
            height: 25px;
            width: 30%;
        }
        .auto-style21 {
            height: 33px;
            width: 1%;
        }
        .auto-style22 {
            margin-left: 40px;
            width: 30%;
        }
        .auto-style23 {
            width: 57%;
        }
        .auto-style24 {
            width: 1%;
        }
        .auto-style25 {
            height: 23px;
            width: 30%;
        }
        .auto-style26 {
            height: 23px;
            width: 57%;
        }
        .auto-style27 {
            height: 23px;
            width: 1%;
        }
        .auto-style28 {
            height: 28px;
            width: 57%;
        }
        .auto-style29 {
            height: 25px;
            width: 57%;
        }
        .auto-style30 {
            width: 8px;
        }
        .auto-style31 {
            height: 23px;
            width: 8px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:HyperLink ID="hypListadoSucursales" runat="server" NavigateURL = "~/ListarSucursales.aspx" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" Font-Underline="True" ForeColor="#0066FF">&lt; Listado de sucursales &gt;</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="hypSucursalesSeleccionadas" runat="server" NavigateURL = "~/SucursalesSeleccionadas.aspx" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" Font-Underline="True" ForeColor="#0066FF">&lt; Mostrar sucursales seleccionadas &gt;</asp:HyperLink>
                    </td>
                    <td class="auto-style21"></td>
                    <td class="auto-style2" colspan="4"></td>
                    <td class="auto-style21"></td>
                    <td class="auto-style21"></td>
                    <td class="auto-style21"></td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="4">&nbsp;</td>
                    <td class="auto-style21">&nbsp;</td>
                    <td class="auto-style2" colspan="4">&nbsp;</td>
                    <td class="auto-style21">&nbsp;</td>
                    <td class="auto-style21">&nbsp;</td>
                    <td class="auto-style21">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblListadoSucursales" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" Font-Underline="True" Text="LISTADO DE SUCURSALES"></asp:Label>
                    </td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblBusqueda" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" ForeColor="Gray" Text="Búsqueda por nombre de sucursal:  "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtBusqueda" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" ForeColor="#333333" Width="288px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnBusqueda" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Small" ForeColor="Black" Text="Buscar" OnClick="btnBusqueda_Click" />
                    </td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25"></td>
                    <td class="auto-style26"></td>
                    <td class="auto-style31"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style27"></td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2">
                        <asp:Label ID="lblMensaje" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" ForeColor="#00CC00"></asp:Label>
                        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" >
                            <ItemTemplate>
    <asp:Button ID="Btn_Provincias" runat="server" 
        Text='<%# Eval("DescripcionProvincia") %>' 
        CommandArgument='<%# Eval("Id_Provincia") %>' 
        CommandName="SelectProvincia"
        OnCommand="Btn_Provincias_Command" />
</ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BDSucursalesConnectionString3 %>" SelectCommand="SELECT [Id_Provincia], [DescripcionProvincia] FROM [Provincia]"></asp:SqlDataSource>
                       <td class="auto-style30">&nbsp;</td>

<td>&nbsp;</td>
<td class="auto-style24">&nbsp;</td>
                        </tr>
                        </table>
            <div style="margin-bottom: 8px">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style31"></td>
                </tr>
                <tr>
                    <td class="auto-style30">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style30">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style31"></td>
                </tr>
                <tr>
                       <td class="auto-style30">&nbsp;</td>

                        </tr>
            </table>
                        
                        <asp:ListView ID="ListViewSucursales" runat="server" style="display: table; margin: auto;" DataSourceID="SqlDataSourceSucursales" GroupItemCount="3"  >
                            <EditItemTemplate>
                                <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">NombreSucursal:
                                    <asp:TextBox ID="NombreSucursalTextBox" runat="server" Text='<%# Bind("NombreSucursal") %>' />
                                    <br />DescripcionSucursal:
                                    <asp:TextBox ID="DescripcionSucursalTextBox" runat="server" Text='<%# Bind("DescripcionSucursal") %>' />
                                    <br />URL_Imagen_Sucursal:
                                    <asp:TextBox ID="URL_Imagen_SucursalTextBox" runat="server" Text='<%# Bind("URL_Imagen_Sucursal") %>' />
                                    <br />
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                                    <br />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                                    <br /></td>
                            </EditItemTemplate>
                            <EmptyDataTemplate>
                                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                    <tr>
                                        <td>No se han devuelto datos.</td>
                                    </tr>
                                </table>
                            </EmptyDataTemplate>
                            <EmptyItemTemplate>
<td runat="server" />
                            </EmptyItemTemplate>
                            <GroupTemplate>
                                <tr id="itemPlaceholderContainer" runat="server">
                                    <td id="itemPlaceholder" runat="server"></td>
                                </tr>
                            </GroupTemplate>
                            <InsertItemTemplate>
                                <td runat="server" style="">NombreSucursal:
                                    <asp:TextBox ID="NombreSucursalTextBox" runat="server" Text='<%# Bind("NombreSucursal") %>' />
                                    <br />DescripcionSucursal:
                                    <asp:TextBox ID="DescripcionSucursalTextBox" runat="server" Text='<%# Bind("DescripcionSucursal") %>' />
                                    <br />URL_Imagen_Sucursal:
                                    <asp:TextBox ID="URL_Imagen_SucursalTextBox" runat="server" Text='<%# Bind("URL_Imagen_Sucursal") %>' />
                                    <br />
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                                    <br />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                                    <br /></td>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <td runat="server" style="background-color:#DCDCDC;color: #000000; text-align: center; vertical-align: top; height: 350px; width: 300px;" class="auto-style12">
                                    <asp:Label ID="NombreSucursalLabel" runat="server" Text='<%# Eval("NombreSucursal") %>' Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" Font-Underline="True" />
                                        <br />
                                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("URL_Imagen_Sucursal") %>' ImageAlign="Middle" />
                                        <br />
                                        <br />

                                            <div style="height: 60px; overflow: hidden; padding: 0 10px;">
                                                <asp:Label ID="DescripcionSucursalLabel" runat="server" Text='<%# Eval("DescripcionSucursal") %>' 
                                                    Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" />
                                            </div>
                                        <br />
                                        <br />
                                    <br />
                                        <asp:Button ID="btnSeleccionar" runat="server" CommandArgument='<%# Eval("NombreSucursal") %>' CommandName="eventoSeleccionar" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Small" ForeColor="#0066FF" OnCommand="btnSeleccionar_Command" Text="Seleccionar" />
                                    <br />

                                    <br />
                                    <asp:HiddenField ID="Id_Sucursal" runat="server" Value='<%# Bind("Id_Sucursal") %>' />
                                </td>  
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server" style="margin: 0 auto;">
                                    <tr runat="server">
                                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;" class="auto-style9">
                                            <asp:DataPager ID="DataPager1" runat="server" PageSize="6">
                                                <Fields>
                                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                    <asp:NumericPagerField />
                                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                </Fields>
                                            </asp:DataPager>
                                        </td>
                                    </tr>
                                    <tr runat="server">
                                        <td runat="server" class="auto-style10">
                                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                <tr id="groupPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                            <SelectedItemTemplate>
                                <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">NombreSucursal:
                                    <asp:Label ID="NombreSucursalLabel" runat="server" Text='<%# Eval("NombreSucursal") %>' />
                                    <br />DescripcionSucursal:
                                    <asp:Label ID="DescripcionSucursalLabel" runat="server" Text='<%# Eval("DescripcionSucursal") %>' />
                                    <br />URL_Imagen_Sucursal:
                                    <asp:Label ID="URL_Imagen_SucursalLabel" runat="server" Text='<%# Eval("URL_Imagen_Sucursal") %>' />
                                    <br /></td>
                            </SelectedItemTemplate>
                        </asp:ListView>
            </div>
            <table class="auto-style1">
                        <tr style="margin-left: 40px">                        
                        
                        &nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style23">
                        <asp:SqlDataSource ID="SqlDataSourceSucursales" runat="server" ConnectionString="<%$ ConnectionStrings:BDSucursalesConnectionString2 %>" SelectCommand="SELECT [NombreSucursal], [DescripcionSucursal], [URL_Imagen_Sucursal], [Id_Sucursal] FROM [Sucursal]" ProviderName="<%$ ConnectionStrings:BDSucursalesConnectionString2.ProviderName %>"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19"></td>
                    <td class="auto-style28">
                        &nbsp;</td>
                    <td class="auto-style7"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style20"></td>
                    <td class="auto-style29"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style16"></td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25"></td>
                    <td class="auto-style26"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style27"></td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
