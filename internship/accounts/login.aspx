<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="internship.accounts.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <table>
    <tr>
        <td>Email</td>
        <td>
            <input id="txtUserName" type="text" runat="server" class="form-control input-sm"></td>
        <td><ASP:RequiredFieldValidator ControlToValidate="txtUserName"
            Display="Static" ErrorMessage="*" runat="server" 
            ID="vUserName" /></td>
    </tr>
    <tr>
        <td>Password:</td>
        <td><input id="txtUserPass" type="password" runat="server" class="form-control input-sm"></td>
        <td><ASP:RequiredFieldValidator ControlToValidate="txtUserPass"
        Display="Static" ErrorMessage="*" runat="server"
        ID="vUserPass" />
        </td>
    </tr>
    <tr>
        <td>Remember me ?</td>
        <td>
            <asp:CheckBox ID="chkPersistCookie" runat="server" AutoPostBack="false" class="checkbox" /></td>
        <td></td>
    </tr>
</table>
<input type="submit" Value="Login" runat="server" ID="cmdLogin"><p></p>
<asp:Label id="lblMsg" ForeColor="red" Font-Name="Verdana" Font-Size="10" runat="server" />
</asp:Content>
