<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Checkout" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Checkout</h3>
    <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>

    <div class="form-group"><label>Name</label><asp:TextBox ID="txtName" runat="server" CssClass="form-control" /></div>
    <div class="form-group"><label>Email</label><asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" /></div>
    <div class="form-group"><label>Phone</label><asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" /></div>
    <div class="form-group"><label>Address</label><asp:TextBox ID="txtAddress1" runat="server" CssClass="form-control" /></div>
    <div class="form-group"><label>City</label><asp:TextBox ID="txtCity" runat="server" CssClass="form-control" /></div>
    <div class="form-group"><label>State</label><asp:TextBox ID="txtState" runat="server" CssClass="form-control" /></div>
    <div class="form-group"><label>ZIP</label><asp:TextBox ID="txtZip" runat="server" CssClass="form-control" /></div>

    <h4>Payment (demo)</h4>
    <div class="form-group"><label>Card Number</label><asp:TextBox ID="txtCard" runat="server" CssClass="form-control" /></div>
    <div class="form-group"><label>Name on Card</label><asp:TextBox ID="txtCardName" runat="server" CssClass="form-control" /></div>

    <asp:Button ID="btnSubmitOrder" runat="server" Text="Submit Order" OnClick="btnSubmitOrder_Click" CssClass="btn btn-success" />
</asp:Content>