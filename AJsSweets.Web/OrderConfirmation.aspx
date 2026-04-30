<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeFile="OrderConfirmation.aspx.cs" Inherits="OrderConfirmation" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Order Confirmation / Receipt</h3>
    <asp:Label ID="lblHeader" runat="server"></asp:Label>

    <asp:GridView ID="gvReceiptItems" runat="server" AutoGenerateColumns="False" CssClass="table">
        <Columns>
            <asp:BoundField DataField="ProductName" HeaderText="Item" />
            <asp:BoundField DataField="UnitPrice" HeaderText="Unit Price" DataFormatString="{0:C}" />
            <asp:BoundField DataField="Quantity" HeaderText="Qty" />
            <asp:BoundField DataField="LineTotal" HeaderText="Line Total" DataFormatString="{0:C}" />
        </Columns>
    </asp:GridView>

    <asp:Label ID="lblTotals" runat="server"></asp:Label>
</asp:Content>