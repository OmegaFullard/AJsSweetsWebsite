<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeFile="Products.aspx.cs" Inherits="Products" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .products-center {
            text-align: center;
        }

        .products-center .row {
            justify-content: center;
        }

        .products-center .card {
            margin-left: auto;
            margin-right: auto;
        }

        .products-center .float-end {
            float: none !important;
        }
    </style>

    <div class="container py-4 products-center">
        <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/pricing/" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3" />
        <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet" />
        <link href="App_Themes/pricing.css" rel="stylesheet" />

        <svg xmlns="http://www.w3.org/2000/svg" class="d-none">
            <symbol id="check" viewBox="0 0 16 16">
                <title>Checkout</title>
                <path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z" />
            </symbol>
        </svg>

        <div class="d-flex flex-column flex-md-row align-items-center pb-3 mb-4 border-bottom">
            <a href="/" class="d-flex align-items-center link-body-emphasis text-decoration-none"></a>
            <nav></nav>
        </div>

        <div class="pricing-header p-3 pb-md-4 mx-auto text-center">
            <center><h1>Sweets and Treats: "Let us satisfy your sweettooth"</h1></center>
            <p class="text-muted mb-0">Browse each product card to view the image, description, price, and adjust the quantity before adding items to your cart.</p>
        </div>
    

        <asp:Panel ID="pnlSuccess" runat="server" Visible="false" CssClass="alert alert-success alert-dismissible fade show" role="alert">
            <i class="fa fa-check-circle"></i> <strong>Success!</strong> <asp:Label ID="lblSuccessMessage" runat="server"></asp:Label> has been added to your cart.
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </asp:Panel>

        <asp:Repeater ID="rptProducts" runat="server" OnItemCommand="rptProducts_ItemCommand">
            <HeaderTemplate>
                <div class="row row-cols-1 row-cols-md-2 row-cols-xl-3 g-4">
            </HeaderTemplate>
            <ItemTemplate>
                <div class="col">
                    <div class="card h-100 shadow-sm border-0">
                        <asp:Image ID="imgProduct" runat="server"
                            ImageUrl='<%# Eval("ImageUrl") %>'
                            AlternateText='<%# Eval("ProductName") %>'
                            CssClass="card-img-top p-3"
                            Style="height: 240px; width: 240px; object-fit: cover;" />
                        <div class="card-body d-flex flex-column">
                            <h4 class="card-title mb-2"><%# Eval("ProductName") %></h4>
                            <p class="text-muted flex-grow-1"><%# Eval("UnitDescription") %></p>
                            <div class="fs-4 fw-semibold mb-3"><%# string.Format("{0:C}", Eval("UnitPrice")) %></div>

                            <div class="mt-auto">
                                <div class="d-flex justify-content-center align-items-center gap-2 mb-3">
                                    <asp:Button ID="btnDecrease" runat="server" Text="-"
                                        CssClass="btn btn-outline-secondary"
                                        CommandName="Decrease"
                                        CommandArgument='<%# Eval("ProductId") %>'
                                        CausesValidation="false" />
                                    <asp:Label ID="lblQuantity" runat="server"
                                        CssClass="px-3 py-2 border rounded text-center fw-semibold"
                                        Text='<%# GetSelectedQuantity(Convert.ToInt32(Eval("ProductId"))).ToString() %>' />
                                    <asp:Button ID="btnIncrease" runat="server" Text="+"
                                        CssClass="btn btn-outline-secondary"
                                        CommandName="Increase"
                                        CommandArgument='<%# Eval("ProductId") %>'
                                        CausesValidation="false" />
                                </div>
                                <br />
                                <br />
                                <div class="d-grid gap-2">
                                    <asp:Button ID="btnAddToCart" runat="server" Text="Add to Cart"
                                        CssClass="btn btn-primary"
                                        CommandName="Add"
                                        CommandArgument='<%# Eval("ProductId") %>' />

                                    <asp:Button ID="btnCancel" runat="server" Text="Cancel"
                                        CssClass="btn btn-outline-danger"
                                        CommandName="Cancel"
                                        CommandArgument='<%# Eval("ProductId") %>'
                                        CausesValidation="false" />
                                    <br />
                                    <br />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
            <FooterTemplate>
                </div>
            </FooterTemplate>
        </asp:Repeater>

        <center>
            <asp:HyperLink ID="CartLink" runat="server" NavigateUrl="~/Cart.aspx" CssClass="btn btn-success btn-lg mt-4" Visible="false">
                <i class="fa fa-shopping-cart"></i> View Cart & Checkout
            </asp:HyperLink>
        </center>

        <br />
        <hr />
        <p class="mb-1">
            <a href="#">Back to top</a>
        </p>

        <div class="row">
            <div class="col-12 col-md text-center">
                <img src="images/ajslogo.png" alt="logo" style="width:50px;height:50px;" />
                <small class="d-block mb-3 text-body-secondary">&copy; 2008-</small>
            </div>
            <br />
        </div>

        <script src="scripts/bootstrap.bundle.min.js"></script>
    </div>
</asp:Content>
