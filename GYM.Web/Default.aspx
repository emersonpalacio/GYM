<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GYM.Web._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    

    <div class="jumbotron">
        <%--    <h3>GYM</h3>--%>
        <p class="lead">Gimnasio</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <table>
        <tr>             
            <td class="modal-sm" style="width: 567px">
                <div class="row">
                    <div class="col-md-4">
                        <h2>Maestros </h2>
                        <p>
                            .
                        </p>
                        <p>
                            <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
                        </p>
                    </div>
                    <div class="col-md-4">
                        <h2>Movimientos</h2>
                        <p>
                            .
                        </p>
                        <p>
                            <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
                        </p>
                    </div>
                    <div class="col-md-4">
                        <h2>Reportes</h2>
                        <p>
                            .
                        </p>
                        <p>
                            <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
                        </p>
                    </div>
                </div>

            </td>
            <td >
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/fondo-gyms.jpg" Height="292px" Width="366px"  ImageAlign="left" />
            </td>
           
        </tr>
    </table>

</asp:Content>
