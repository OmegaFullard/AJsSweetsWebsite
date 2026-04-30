<%@ Page Title="Account Login" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" runat="server">
    <link href="styles/default.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div class="container" style="max-width:420px;">
        <h3>Login</h3>
        <hr />

        <asp:Label ID="lblLoginMessage" runat="server" ForeColor="Red"></asp:Label>

        <div class="form-group">
            <label>Portal</label>
            <asp:DropDownList ID="ddlPortal" runat="server" CssClass="form-control">
                <asp:ListItem Text="Customer Portal" Value="Customer" />
                <asp:ListItem Text="Admin Portal" Value="Admin" />
            </asp:DropDownList>
        </div>

        <div class="form-group">
            <label>User Name</label>
            <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" />
        </div>

        <div class="form-group">
            <label>Password</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" />
        </div>

        <br />
        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="btnLogin_Click" />
        <br /><br />
        <a href="UserRegistration.aspx">Customer Sign Up</a> |
        <a href="AdminRegistration.aspx">Admin Registration</a> |
        <a href="AdminLogin.aspx">Admin Login</a>
    </div>
</asp:Content>



