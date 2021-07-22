<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="internship.accounts.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>

    <div class="form-horizontal">
        <table class="output">
            <tr>
                <td style="height: 26px">Email</td>
                <td style="height: 26px">
                    <input id="txtUserName" type="text" runat="server" class="form-control input-sm"></td>
                <td style="height: 26px">
                    <asp:RequiredFieldValidator ControlToValidate="txtUserName"
                        Display="Static" ErrorMessage="*" runat="server"
                        ID="vUserName" /></td>
            </tr>
            <tr>
                <td style="height: 20px"></td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td>
                    <input id="txtUserPass" type="password" runat="server" class="form-control input-sm"></td>
                <td>
                    <asp:RequiredFieldValidator ControlToValidate="txtUserPass"
                        Display="Static" ErrorMessage="*" runat="server"
                        ID="vUserPass" />
                </td>
            </tr>
            <tr>
                <td style="height: 20px"></td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td style="width: 150px">Remember me ?</td>
                <td>
                    <asp:CheckBox ID="chkPersistCookie" runat="server" AutoPostBack="false" class="checkbox" /></td>
                <td></td>
            </tr>
            <tr>
                <td style="height: 20px"></td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" value="Login" runat="server" id="cmdLogin" class="btn btn-success" style="margin-left: 0">
                </td>
            </tr>
            <tr>
                <td style="height: 20px"></td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td style="width: 150px">
                    <asp:Label ID="lblMsg" ForeColor="red" Font-Name="Verdana" Font-Size="10" runat="server" /></td>
            </tr>
        </table>

    </div>
</asp:Content>
