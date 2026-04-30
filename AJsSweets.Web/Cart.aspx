<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Shopping Cart</h3>
    <asp:Label ID="lblCartMessage" runat="server" ForeColor="Red"></asp:Label>

    <asp:GridView ID="gvCart" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductId" OnRowCommand="gvCart_RowCommand" CssClass="table">
        <Columns>
            <asp:BoundField DataField="ProductName" HeaderText="Product" />
            <asp:BoundField DataField="UnitPrice" HeaderText="Unit Price" DataFormatString="{0:C}" />
            <asp:TemplateField HeaderText="Qty">
                <ItemTemplate>
                    <asp:TextBox ID="txtQty" runat="server" Width="60" Text='<%# Eval("Quantity") %>'></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="LineTotal" HeaderText="Line Total" DataFormatString="{0:C}" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="lnkRemove" runat="server" CommandName="RemoveItem" CommandArgument='<%# Eval("ProductId") %>' Text="Remove" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

    <asp:Button ID="btnUpdate" runat="server" Text="Update Quantities" OnClick="btnUpdate_Click" CssClass="btn btn-secondary" />
    <asp:Button ID="btnCheckout" runat="server" Text="Proceed to Checkout" OnClick="btnCheckout_Click" CssClass="btn btn-success" />
</asp:Content>