<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TelerikWebSite1.Default" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
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
                        <h3>Seasonal Items </h3>
                        Check out our new Holiday Treats!!!
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadPageLayout runat="server" ID="Content1">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="4" SpanMd="12" SpanSm="12" HiddenXs="true">
                        <h4>Coming Soon!!</h4>
                        <p><strong>Please stay tuned for our Christmas themed sweets</strong></p>
                        <p>All of your favorite holiday desserts in one location.</p>
                        <telerik:RadButton runat="server" ID="RadButton1" Text="Holiday Treats" ButtonType="SkinnedButton"></telerik:RadButton>
                    </telerik:LayoutColumn>

                    <telerik:LayoutColumn Span="4" SpanMd="12" SpanSm="12" HiddenXs="true">
                        <h4>AJ's on Social Media</h4>
                        <p><strong>Please be sure to follow us on Social Media!</strong>, links to social media websites</p>

                        <p>Leave us a review and let us how we are doing and how we can improve. </p>
                        <telerik:RadButton runat="server" ID="RadButton2" Text="Reviews" ButtonType="SkinnedButton"></telerik:RadButton>
                    </telerik:LayoutColumn>

                    <telerik:LayoutColumn Span="4" SpanMd="12" SpanSm="12" HiddenXs="true">
                        <h4>Directions</h4>
                        <p><strong>Directions to Our Bakery</strong>, add details here</p>

                        <p>Deliveries available throughout the U.S</p>
                        <telerik:RadButton runat="server" ID="RadButton3" Text="Deliveries" ButtonType="SkinnedButton"></telerik:RadButton>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
</asp:Content>
