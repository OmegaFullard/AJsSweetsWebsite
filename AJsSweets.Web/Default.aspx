<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TelerikWebSite1.Default" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css" rel="stylesheet" />
    <link href="styles/styles.css" rel="stylesheet" />

    <link rel="Stylesheet" href="https://cdn.jsdeliver.net/gh/openlayers.github.io@master/en/v6.2.1/css/ol.css" />
<style>
.map {
Height: 400px;
Width: 100%;
}

</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout1">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn CssClass="jumbotron">
                        <h1>Welcome to AJ's Sweets</h1>
                        <h2>Place an Order
                            <telerik:RadButton runat="server" ID="RadButton0" Text="Order Now" ButtonType="SkinnedButton" Skin="WebBlue" NavigateUrl="~/Orders.aspx"></telerik:RadButton>
                        </h2>

                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn HiddenMd="true" HiddenSm="true" HiddenXs="true">
                        <h4>Seasonal Items </h4>
                        <center>Check out our new Halloween Treats!!!</center>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>


  <div class="scroll-container">
     
      <img src="images/halloweencc.png" class="d-block w-100" alt="halloween cupcakes"/>
  
      <img src="images/pumpkinpie.png" class="d-block w-100" alt="pumpkin pie"/>
  
      <img src="images/halloweencc2.png" class="d-block w-100" alt="halloween cookies"/>
   
    
  
  
</div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
  
                                    <br />
                                    <br />
                        <h4>Coming Soon!!</h4>
                        <p><strong>Please stay tuned for our Christmas themed sweets</strong></p>
                        <p>All of your favorite holiday desserts in one location.</p>
 
                       
            <a href="https://google.com/maps?q=39.57.09,75.10.14.8"></a>
    <center><p class="card-title"><strong>Directions to Our Bakery</strong></p>                      
    
           <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3314.9878558125074!2d-84.14853362438608!3d33.81262647324805!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88f5af0ae0844df7%3A0xd7888cf9c7aed2fa!2s1000%20Robert%20E%20Lee%20Blvd%2C%20Stone%20Mountain%2C%20GA%2030083!5e0!3m2!1sen!2sus!4v1730230999345!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
       </center>
        <center><a href="#" class="btn btn-primary">Directions</a></center>
        <br />
      
                        <p>Deliveries available throughout the U.S</p>
                         <img src="images/DeliveryTruck.png" alt="delivery" />
                        <br />
                        <br />
                     
                   
                       
</asp:Content>
