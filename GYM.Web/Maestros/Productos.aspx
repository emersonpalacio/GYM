<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="GYM.Web.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Productos</h1>
    <table class="nav-justified">
        <tr>
            <td style="height: 37px">&nbsp; Descrición</td>
            <td style="height: 37px">
                <asp:TextBox ID="descripcionTextBox" runat="server" Width="285px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 42px">&nbsp; Precio</td>
            <td style="height: 42px">
                <asp:TextBox ID="PrecioTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp; Stock</td>
            <td>
                <asp:TextBox ID="stockTextBox" runat="server" Width="116px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <p>
        <asp:Label ID="mensajeLabel" runat="server" style="color: #000099; font-weight: 700; font-style: italic; font-size: xx-large"></asp:Label>
    </p>
    <p>
        <asp:Button ID="nuevoButton" runat="server" Text="Nuevo" OnClick="nuevoButton_Click" />
    </p>
    <p>&nbsp;</p>
    <p>
        <asp:GridView ID="productosGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IDProducto" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="689px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="IDProducto" HeaderText="ID Producto" InsertVisible="False" ReadOnly="True" SortExpression="IDProducto" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripción" SortExpression="Descripcion" />
                <asp:BoundField DataField="Precio" DataFormatString="{0:C2}" HeaderText="Precío" SortExpression="Precio">
                    <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="Stock" DataFormatString="{0:N2}" HeaderText="Stock" SortExpression="Stock">
                    <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Producto] WHERE [IDProducto] = @original_IDProducto AND [Descripcion] = @original_Descripcion AND [Precio] = @original_Precio AND [Stock] = @original_Stock" InsertCommand="INSERT INTO [Producto] ([Descripcion], [Precio], [Stock]) VALUES (@Descripcion, @Precio, @Stock)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Producto]" UpdateCommand="UPDATE [Producto] SET [Descripcion] = @Descripcion, [Precio] = @Precio, [Stock] = @Stock WHERE [IDProducto] = @original_IDProducto AND [Descripcion] = @original_Descripcion AND [Precio] = @original_Precio AND [Stock] = @original_Stock">
            <DeleteParameters>
                <asp:Parameter Name="original_IDProducto" Type="Int32" />
                <asp:Parameter Name="original_Descripcion" Type="String" />
                <asp:Parameter Name="original_Precio" Type="Decimal" />
                <asp:Parameter Name="original_Stock" Type="Double" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Descripcion" Type="String" />
                <asp:Parameter Name="Precio" Type="Decimal" />
                <asp:Parameter Name="Stock" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Descripcion" Type="String" />
                <asp:Parameter Name="Precio" Type="Decimal" />
                <asp:Parameter Name="Stock" Type="Double" />
                <asp:Parameter Name="original_IDProducto" Type="Int32" />
                <asp:Parameter Name="original_Descripcion" Type="String" />
                <asp:Parameter Name="original_Precio" Type="Decimal" />
                <asp:Parameter Name="original_Stock" Type="Double" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>  
    <p>&nbsp;</p>


</asp:Content>
