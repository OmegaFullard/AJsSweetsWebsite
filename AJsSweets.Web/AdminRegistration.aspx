<%@ Page Title="Admin Registration" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeFile="AdminRegistration.aspx.cs" Inherits="AdminRegistration" %>

<asp:Content ID="ContentHead" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="ContentMain" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div class="container" style="max-width:520px;">
        <h3>Admin Registration</h3>
        <hr />

        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>

        <div class="form-group">
            <label>Admin ID</label>
            <asp:TextBox ID="txtAdminId" runat="server" CssClass="form-control" />
        </div>

        <div class="form-group">
            <label>Full Name</label>
            <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" />
        </div>

        <div class="form-group">
            <label>Email</label>
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control" />
        </div>

        <div class="form-group">
            <label>Password</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" />
        </div>

        <div class="form-group">
            <label>Confirm Password</label>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-control" />
        </div>

        <br />
        <asp:Button ID="btnRegister" runat="server" Text="Create Admin Account" CssClass="btn btn-primary"
            OnClick="btnRegister_Click" />
        <a href="AdminLogin.aspx" class="btn btn-link">Back to Admin Login</a>
    </div>
</asp:Content>