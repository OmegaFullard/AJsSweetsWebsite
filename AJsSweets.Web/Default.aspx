<%@ Page Title="Home" Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

 
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .page-center {
            text-align: center;
        }

        .page-shell {
            max-width: 960px;
            margin: 24px auto;
            padding: 24px;
            border: 1px solid #ddd;
            border-radius: 12px;
            background-color: #fff;
            box-shadow: 0 4px 14px rgba(0, 0, 0, 0.08);
        }

        .page-center .scroll-container,
        .page-center iframe,
        .page-center img {
            margin-left: auto;
            margin-right: auto;
        }

        .page-center iframe,
        .page-center img {
            display: block;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="about page-center">
        <div class="container">
            <div class="page-shell">
                <h1>Welcome to AJ's Sweets</h1>
                <h2>
                    Place an Order
                    <asp:Button class="btn btn-primary" ID="Button1" runat="server" Width="100px" Height="50px"
                        style="color: #85a4bc; background-color: #333399; border: medium solid #C0C0C0"
                        Text="Go" PostBackUrl="~/Products.aspx" />
                </h2>

                <div class="row">
                    <div class="col">
                        <h4>Popular Items</h4>
                    </div>
                </div>

                <div class="scroll-container">
                    <img src="images/oreocheesecake.png" style="width: 350px; height: 250px; object-fit: cover;" alt="Oreo Cheesecake"/>
                    <img src="images/strawcake.png" style="width: 350px; height: 250px; object-fit: cover;" alt="Strawberry Cake"/>
                    <br />
                    <br />
                    <img src="images/oatmealraisin.png" style="width: 350px; height: 250px; object-fit: cover;" alt="Oatmeal Raisin Cookies"/>
                </div>

                <br />
                <br />
                <h4>Coming Soon!!</h4>
                <p><strong>Please stay tuned for our Memorial Day themed sweets</strong></p>
                <p>All of your favorite holiday desserts in one location.</p>

                <a href="https://google.com/maps?q=39.57.09,75.10.14.8"></a>
                <center><p class="card-title"><strong>Directions to Our Bakery</strong></p>
                    <br />
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3314.9878558125074!2d-84.14853362438608!3d33.81262647324805!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88f5af0ae0844df7%3A0xd7888cf9c7aed2fa!2s1000%20Robert%20E%20Lee%20Blvd%2C%20Stone%20Mountain%2C%20GA%2030083!5e0!3m2!1sen!2sus!4v1730230999345!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </center>
                <br />
                <br />
                <center><a href="Directions.aspx" class="btn btn-primary">Directions</a></center>
                <br />

                <p>Deliveries available throughout the U.S</p>
                <img src="images/DeliveryTruck.png" style="width: 150px; height: 150px;" alt="delivery" />
                <br />
                <br />
            </div>
        </div>
    </section>
    <br />
    <script src="search.js"></script>
</asp:Content>