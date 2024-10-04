<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="practica_sql.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Peru Tours</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 29px;
            text-align: center;
            font-size: 18px;
        }
        .auto-style4 {
            height: 28px;
            width: 119px;
        }
        .auto-style5 {
            width: 119px;
        }
        .auto-style6 {
            width: 119px;
            height: 23px;
        }
        .auto-style12 {
            height: 28px;
            width: 408px;
        }
        .auto-style13 {
            width: 408px;
        }
        .auto-style14 {
            height: 23px;
            width: 408px;
        }
        .auto-style15 {
            height: 28px;
            width: 730px;
        }
        .auto-style16 {
            width: 730px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="3">Peru Tours</td>
                </tr>
                <tr>
                    <td class="auto-style4">Código de Boleto</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtCod" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style15">
                        <asp:Button ID="btnInsertar" runat="server" Text="Insertar" Width="88px" OnClick="btnInsertar_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Ciudad</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtCiudad" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" Width="86px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Pasajeros</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtPasa" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" Width="88px" OnClick="btnActualizar_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Empresa</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtEmpresa" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" Width="85px" OnClick="btnEliminar_Click"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Fecha de salida</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtSalida" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style16">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Fecha de retorno</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtRetorno" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style16">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style14">
                        &nbsp;</td>
                    <td class="auto-style16">
                        <asp:GridView ID="gdw1" runat="server"  AutoGenerateColumns="True" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="260px" Width="527px">
                            <AlternatingRowStyle BackColor="#F7F7F7" />
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <SortedAscendingCellStyle BackColor="#F4F4FD" />
                            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                            <SortedDescendingCellStyle BackColor="#D8D8F0" />
                            <SortedDescendingHeaderStyle BackColor="#3E3277" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
