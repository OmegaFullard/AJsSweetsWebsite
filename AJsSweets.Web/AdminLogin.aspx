<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <telerik:RadCard ID="RadCard1" runat="server" Width="320px" EnableEmbeddedSkins="False">
        <telerik:CardImageComponent runat="server" src="images/admin.png"></telerik:CardImageComponent>

        <telerik:CardBodyComponent runat="server">
            <telerik:CardTitleComponent runat="server">
                <center><b>Admin Login</b></center>
                <br />
            </telerik:CardTitleComponent>

            <asp:Label ID="lblAdminLoginMessage" runat="server" ForeColor="Red"></asp:Label>
            <br />

            <telerik:RadTextBox ID="RadTextBox1" RenderMode="Lightweight" Width="245px" runat="server"
                Label="Admin ID: " EmptyMessage="Admin ID" EnableEmbeddedSkins="False"></telerik:RadTextBox>
            <br /><br />

            <telerik:RadTextBox ID="RadTextBox2" RenderMode="Lightweight" Width="245px" IDMode="Static" runat="server"
                TextMode="Password" Label="Password: " EmptyMessage="Password" EnableEmbeddedSkins="False"></telerik:RadTextBox>
        </telerik:CardBodyComponent>

        <telerik:CardActionsContainerComponent runat="server" CardActionsAlignment="Stretched">
            <asp:Button ID="btnAdminLogin" runat="server" Text="Login"
                CssClass="k-button k-solid k-success"
                Style="color:#ffffff;background-color:#710193;border:medium solid #C0C0C0;"
                OnClick="btnAdminLogin_Click" />
            <br />
            <a href="AdminRegistration.aspx">Create Admin Account</a>
        </telerik:CardActionsContainerComponent>

        <telerik:CardFooterComponent runat="server">
            <a href="Default.aspx"><< Back to Home</a>
        </telerik:CardFooterComponent>
    </telerik:RadCard>
</asp:Content>