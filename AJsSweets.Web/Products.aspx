<%@ Page Title="Products" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="TelerikWebSite1.ListView" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" runat="server">
      <link href="styles/default.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <telerik:RadPageLayout runat="server" ID="JumbotronLayout" CssClass="jumbotron" GridType="Fluid">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="10" SpanMd="12" SpanSm="12" SpanXs="12">
                        <h1>Sweets and Treats</h1>
                        <h2>"Let us satisfy your sweettooth"</h2>
                        <telerik:RadButton runat="server" ID="RadButton0" Text="Place Order" ButtonType="SkinnedButton" NavigateUrl="~/Orders.aspx"></telerik:RadButton>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="2" HiddenMd="true" HiddenSm="true" HiddenXs="true">
                       
                       

                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>

    <br />
    <br />
        <center>
 <div class="scroll-container">
  <p>
            <img src="images/applejam.png" alt="jam" style="width:100px;height:100px; Border-Radius:25px;"/>
     <img src="images/berryjam.png" alt="jam" style="width:100px;height:100px; Border-Radius:25px;"/>  
      <img src="images/grapejam.png" alt="jam" style="width:100px;height:100px; Border-Radius:25px;"/>
           <img src="images/peachjam.png" alt="jam" style="width:100px;height:100px; Border-Radius:25px;"/>
       </p>
     <p>  <img src="images/applepie.png" alt="pie" style="width:100px;height:100px; Border-Radius:25px;"/>
      <img src="images/berrypies.png" alt="pie" style="width:100px;height:100px; Border-Radius:25px;"/>
     <img src="images/pecanpie.png" alt="pie" style="width:100px;height:100px; Border-Radius:25px;"/>
			<img src="images/pies.png" alt="pies assorted" style="width:100px;height:100px; Border-Radius:25px;"/>
            <img src="images/pumpkinpie.png" alt="pie" style="width:100px;height:100px; Border-Radius:25px"/>
</p>
   
     <p><img src="images/chocchip.png" alt="cookies" style="width:100px;height:100px; Border-Radius:25px;"/>
      <img src="images/oatmealraisin.png" alt="cookie" style="width:100px;height:100px; Border-Radius:25px;"/>
           </p>
            <p> <img src="images/brownies.png" alt="brownies" style="width:100px;height:100px; Border-Radius:25px;"/>
            <img src="images/browniesassort.png" alt="brownies" style="width:100px;height:100px; Border-Radius:25px;"/>
     </p>
	<p>  <img src="images/choccake.png" alt="chocolate cake" style="width:100px;height:100px; Border-Radius:25px;"/>            
			<img src="images/confetticake.png" alt="cake" style="width:100px;height:100px; Border-Radius:25px;"/>
      <img src="images/strawcake.png" alt="cake" style="width:100px;height:100px; Border-Radius:25px;"/>
</p>		
   <p><img src="images/cupcakesassort.png" alt="cupcake" style="width:100px;height:100px; Border-Radius:25px"/>
       <img src="images/halloweencc.png" alt="cupcake" style="width:100px;height:100px; Border-Radius:25px;"/>
            <img src="images/halloweencc2.png" alt="cupcake" style="width:100px;height:100px; Border-Radius:25px;"/>                                    
            <img src="images/redvelvetcc.png" alt="cupcake" style="width:100px;height:100px; Border-Radius:25px;"/>
           </p>
            <p><img src="images/sweetsrandom.png" alt="random" style="width:100px;height:100px; Border-Radius:25px;"/>
      <img src="images/donuts.png" alt="donuts" style="width:100px;height:100px; Border-Radius:25px;"/>
</p>
			
     <p> <img src="images/hotchoc.png" alt="cocoa" style="width:100px;height:100px; Border-Radius:25px;"/>                      
           <img src="images/gingerbreadhouse.png" alt="gingerbread house" style="width:100px;height:100px; Border-Radius:25px;"/>
     <img src="images/holidaycupcakes.png" alt="cupcake" style="width:100px;height:100px; Border-Radius:25px;"/>
     <img src="images/assorted.png" alt="assorted" style="width:100px;height:100px; Border-Radius:25px;"/>
     <img src="images/xmasassorted.png" alt="holiday" style="width:100px;height:100px; Border-Radius:25px"/>
            <img src="images/xmascookies.png" alt="cookies" style="width:100px;height:100px; Border-Radius:25px;"/>
</p>
			
</div>
             </center>
</asp:Content>

