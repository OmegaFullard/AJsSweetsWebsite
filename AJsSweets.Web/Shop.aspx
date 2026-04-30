<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeFile="Shop.aspx.cs" Inherits="Shop" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Shop</h3>
    <asp:Label ID="lblMsg" runat="server" ForeColor="Green"></asp:Label>

    <asp:Repeater ID="rptProducts" runat="server" OnItemCommand="rptProducts_ItemCommand">
        <HeaderTemplate><table class="table table-striped"><tr><th>Product</th><th>Price</th><th></th></tr></HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td><%# Eval("ProductName") %></td>
                <td><%# string.Format("{0:C}", Eval("Price")) %></td>
                <td>
                    <asp:Button ID="btnAdd" runat="server" Text="Add to Cart" CommandName="Add"
                        CommandArgument='<%# Eval("ProductId") + "|" + Eval("ProductName") + "|" + Eval("Price") %>' CssClass="btn btn-primary btn-sm" />
                </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate></table></FooterTemplate>
    </asp:Repeater>

    <a class="btn btn-success" href="Cart.aspx">Go to Cart</a>
</asp:Content>