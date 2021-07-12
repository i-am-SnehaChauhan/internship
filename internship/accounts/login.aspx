<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="internship.accounts.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>

    <table>
        <tr>
            <td>Email:</td>
            <td>
                <input id="txtUserName" type="text" runat="server"></td>
            <td>
                <asp:RequiredFieldValidator ControlToValidate="txtUserName"
                    Display="Static" ErrorMessage="*" runat="server"
                    ID="vUserName" /></td>
        </tr>
        <tr>
            <td>Password:</td>
            <td>
                <input id="txtUserPass" type="password" runat="server"></td>
            <td>
                <asp:RequiredFieldValidator ControlToValidate="txtUserPass"
                    Display="Static" ErrorMessage="*" runat="server"
                    ID="vUserPass" />
            </td>
        </tr>
        <tr>
            <td>Persistent Cookie:</td>
            <td>
                <asp:CheckBox ID="chkPersistCookie" runat="server" AutoPostBack="false" /></td>
            <td></td>
        </tr>
    </table>
    <input type="submit" value="Logon" runat="server" id="cmdLogin"><p></p>
    <asp:Label ID="lblMsg" ForeColor="red" Font-Name="Verdana" Font-Size="10" runat="server" />
</asp:Content>
