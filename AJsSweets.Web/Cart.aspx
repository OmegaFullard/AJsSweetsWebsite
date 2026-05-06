<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container my-5">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="display-4 mb-4">
                    <i class="fa fa-shopping-cart"></i> &nbsp;&nbsp;&nbsp
                    Shopping Cart
                </h1>

                <asp:Label ID="lblCartMessage" runat="server" ForeColor="Red"></asp:Label>


                <asp:Panel ID="pnlEmptyCart" runat="server" Visible="false">              
                    <div class="alert alert-info text-center">
                        <i class="fa fa-shopping-cart fa-3x mb-3"></i>
                        <h4>Your cart is empty</h4>
                        <p>Start shopping to add items to your cart.</p>
                        <a href="~/Products.aspx" runat="server" class="btn btn-primary">Continue Shopping</a>
                    </div>
                </asp:Panel>

                <asp:Panel ID="pnlCartItems" runat="server" Visible="false">
                    <div class="card mb-4">
                        <div class="card-header bg-primary text-white">
                            <h5 class="mb-0">Cart Items</h5>
                        </div>
                        <div class="card-body">
                            <asp:GridView ID="gvCart" runat="server" CssClass="table table-striped table-hover" 
                                AutoGenerateColumns="false" OnRowCommand="gvCart_RowCommand" DataKeyNames="ProductId"
                                ShowFooter="true" OnRowDataBound="gvCart_RowDataBound">
                                <Columns>
                                    <asp:TemplateField HeaderText="Product">
                                        <ItemTemplate>
                                            <div class="d-flex align-items-center">
                                                <asp:Image ID="imgProduct" runat="server" 
                                                    ImageUrl='<%# Eval("ImageUrl") %>' 
                                                    CssClass="me-3" 
                                                    Width="80" Height="80" 
                                                    AlternateText='<%# Eval("ProductName") %>' />
                                                <div>
                                                    <strong><%# Eval("ProductName") %></strong><br />
                                                    <small class="text-muted"><%# Eval("Description") %></small>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            <strong>Total:</strong>
                                        </FooterTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:BoundField DataField="Price" HeaderText="Price" 
                                        DataFormatString="{0:C}" ItemStyle-CssClass="text-end" />
                                    
                                    <asp:TemplateField HeaderText="Quantity">
                                        <ItemTemplate>
                                            <div class="input-group" style="width: 130px;">
                                                <asp:Button ID="btnDecrease" runat="server" Text="-" 
                                                    CssClass="btn btn-outline-secondary btn-sm" 
                                                    CommandName="Decrease" 
                                                    CommandArgument='<%# Eval("ProductId") %>' />
                                                <asp:TextBox ID="txtQuantity" runat="server" 
                                                    Text='<%# Eval("Quantity") %>' 
                                                    CssClass="form-control form-control-sm text-center" 
                                                    ReadOnly="true" 
                                                    style="width: 50px;" />
                                                <asp:Button ID="btnIncrease" runat="server" Text="+" 
                                                    CssClass="btn btn-outline-secondary btn-sm" 
                                                    CommandName="Increase" 
                                                    CommandArgument='<%# Eval("ProductId") %>' />
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="Total">
                                        <ItemTemplate>
                                            <span class="text-end d-block"><%# Eval("TotalPrice", "{0:C}") %></span>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            <strong><asp:Label ID="lblGrandTotal" runat="server" CssClass="text-end d-block"></asp:Label></strong>
                                        </FooterTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="Action">
                                        <ItemTemplate>
                                            <asp:Button ID="btnRemove" runat="server" 
                                                Text="Remove" 
                                                CssClass="btn btn-danger btn-sm" 
                                                CommandName="Remove" 
                                                CommandArgument='<%# Eval("ProductId") %>'
                                                OnClientClick="return confirm('Are you sure you want to remove this item?');" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <EmptyDataTemplate>
                                    <div class="text-center p-4">
                                        <p>Your cart is empty.</p>
                                    </div>
                                </EmptyDataTemplate>
                            </asp:GridView>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <a href="~/Products.aspx" runat="server" class="btn btn-outline-primary">
                                <i class="fa fa-arrow-left"></i> Continue Shopping
                            </a>
                            <asp:Button ID="btnClearCart" runat="server" Text="Clear Cart" 
                                CssClass="btn btn-outline-danger" OnClick="btnClearCart_Click" 
                                OnClientClick="return confirm('Are you sure you want to clear your cart?');" />
                        </div>
                        <div class="col-md-6 text-end">
                            <asp:Button ID="btnCheckout" runat="server" Text="Proceed to Checkout" 
                                CssClass="btn btn-success btn-lg" OnClick="btnCheckout_Click" />
                        </div>
                    </div>
                </asp:Panel>
            </div>
        </div>
    </div>
</asp:Content>