<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TiposDocumentos.aspx.cs" Inherits="GYM.Web.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Tipos Documentos</h1>
    <p>&nbsp;</p>
    <p>Descripción: 
        <asp:TextBox ID="descripcionTextBox" runat="server" Width="240px"></asp:TextBox></p>
    <p>
        <asp:Label ID="mensajeLabel" runat="server" Style="color: #000099; font-weight: 700; font-style: italic; font-size: xx-large"></asp:Label>
    </p>
    <p>
        <asp:Button ID="nuevoButton" runat="server" Text="Nuevo" OnClick="nuevoButton_Click" />
    </p>

    <p>
        <asp:GridView ID="tiposDocumentosGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IDTipoDocumento" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="420px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="IDTipoDocumento" HeaderText="ID Tipo Documento" InsertVisible="False" ReadOnly="True" SortExpression="IDTipoDocumento" />
                <asp:BoundField DataField="Descipcion" HeaderText="Descipción" SortExpression="Descipcion" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [TipoDocumento] WHERE [IDTipoDocumento] = @original_IDTipoDocumento AND [Descipcion] = @original_Descipcion" InsertCommand="INSERT INTO [TipoDocumento] ([Descipcion]) VALUES (@Descipcion)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:DefaultConnection.ProviderName %>" SelectCommand="SELECT * FROM [TipoDocumento]" UpdateCommand="UPDATE [TipoDocumento] SET [Descipcion] = @Descipcion WHERE [IDTipoDocumento] = @original_IDTipoDocumento AND [Descipcion] = @original_Descipcion">
            <DeleteParameters>
                <asp:Parameter Name="original_IDTipoDocumento" Type="Int32" />
                <asp:Parameter Name="original_Descipcion" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Descipcion" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Descipcion" Type="String" />
                <asp:Parameter Name="original_IDTipoDocumento" Type="Int32" />
                <asp:Parameter Name="original_Descipcion" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>


</asp:Content>


