<%@ Page Title="Pricing" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeFile="Pricing.aspx.cs" Inherits="Pricing" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-4 text-center">
        <div class="mb-4">
            <h2>Sweet Treat Pricing</h2>
            <p class="text-muted">Freshly baked and handcrafted sweets made to order.</p>
        </div>

        <div class="row g-4 justify-content-center">
            <div class="col-md-6 col-lg-4 d-flex">
                <div class="card h-100 w-100 text-center">
                    <img src="images/berryjam.png" class="card-img-top mx-auto d-block" alt="Homemade jam" style="height:220px; width:220px; object-fit:cover;" />
                    <div class="card-body">
                        <h5 class="card-title">Jams</h5>
                        <p class="card-text">Apple, Berry, Grape, and Peach seasonal flavors.</p>
                        <p class="mb-0"><strong>Price:</strong> $5.00 per jar</p>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-4 d-flex">
                <div class="card h-100 w-100 text-center">
                    <img src="images/applepie.png" class="card-img-top mx-auto d-block" alt="Fresh pie" style="height:220px; width:220px; object-fit:cover;" />
                    <div class="card-body">
                        <h5 class="card-title">Pies</h5>
                        <p class="card-text">Classic pies including Apple, Berry, Pecan, and Pumpkin.</p>
                        <p class="mb-0"><strong>Price:</strong> $15.00 per pie</p>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-4 d-flex">
                <div class="card h-100 w-100 text-center">
                    <img src="images/chocchip.png" class="card-img-top mx-auto d-block" alt="Chocolate chip cookies" style="height:220px; width:220px; object-fit:cover;" />
                    <div class="card-body">
                        <h5 class="card-title">Cookies</h5>
                        <p class="card-text">Chocolate Chip, Oatmeal Raisin, Sugar, and Peanut Butter.</p>
                        <p class="mb-0"><strong>Price:</strong> $15.00 per dozen</p>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-4 d-flex">
                <div class="card h-100 w-100 text-center">
                    <img src="images/brownies.png" class="card-img-top mx-auto d-block" alt="Chocolate brownies" style="height:220px; width:220px; object-fit:cover;" />
                    <div class="card-body">
                        <h5 class="card-title">Brownies</h5>
                        <p class="card-text">Plain, Pecan, Walnut, and Assorted brownie trays.</p>
                        <p class="mb-0"><strong>Price:</strong> $15.00 per dozen</p>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-4 d-flex">
                <div class="card h-100 w-100 text-center">
                    <img src="images/choccake.png" class="card-img-top mx-auto d-block" alt="Chocolate cake" style="height:220px; width:220px; object-fit:cover;" />
                    <div class="card-body">
                        <h5 class="card-title">Cakes</h5>
                        <p class="card-text">Chocolate, Confetti, Red Velvet, and Strawberry cakes.</p>
                        <p class="mb-0"><strong>Price:</strong> $25.00 per cake</p>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-4 d-flex">
                <div class="card h-100 w-100 text-center">
                    <img src="images/cupcakesassort.png" class="card-img-top mx-auto d-block" alt="Assorted cupcakes" style="height:220px; width:220px; object-fit:cover;" />
                    <div class="card-body">
                        <h5 class="card-title">Cupcakes</h5>
                        <p class="card-text">Holiday, Chocolate, Red Velvet, and Assorted cupcake packs.</p>
                        <p class="mb-0"><strong>Price:</strong> $25.00 per dozen</p>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-4 d-flex">
                <div class="card h-100 w-100 text-center">
                    <img src="images/hotchoc.png" class="card-img-top mx-auto d-block" alt="Hot chocolate and sweets" style="height:220px; width:220px; object-fit:cover;" />
                    <div class="card-body">
                        <h5 class="card-title">Other Sweets</h5>
                        <p class="card-text">Hot Chocolate, Gingerbread Kits, Holiday Cookies & Cupcakes, and Assorted Treats.</p>
                        <p class="mb-0"><strong>Price:</strong> $5.00 each</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="mt-4">
            <a class="btn btn-primary" href="Products.aspx">Order from Products</a>
            <a class="btn btn-outline-secondary" href="Default.aspx">Back to Home</a>
        </div>
    </div>
</asp:Content>