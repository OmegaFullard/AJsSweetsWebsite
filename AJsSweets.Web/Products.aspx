<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
              
          <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/pricing/"/>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3"/>

<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet"/>
      
    <!-- Custom styles for this template -->
    <link href="pricing.css" rel="stylesheet"/>

<svg xmlns="http://www.w3.org/2000/svg" class="d-none">
  <symbol id="check" viewBox="0 0 16 16">
    <title>Checkout</title>
    <path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
  </symbol>
</svg>
    

<div class="container py-3">

    <div class="d-flex flex-column flex-md-row align-items-center pb-3 mb-4 border-bottom">
      <a href="/" class="d-flex align-items-center link-body-emphasis text-decoration-none"></a>
      <nav>
	  
	  </nav>
    </div>
      <hr />
    <div class="pricing-header p-3 pb-md-4 mx-auto text-center">
      
     <center> <h4>Sweets and Treats: "Let us satisfy your sweettooth"</h4></center>
    </div>

    <hr />
        </div>
                     
               <!-- Success Message -->
 <asp:Panel ID="pnlSuccess" runat="server" Visible="false" CssClass="alert alert-success alert-dismissible fade show" role="alert">
     <i class="fa fa-check-circle"></i> <strong>Success!</strong> <asp:Label ID="lblSuccessMessage" runat="server"></asp:Label> has been added to your cart.
     <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
 </asp:Panel>         
                    

    <br />
    
       <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
      <div class="col">
        <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-header py-3">
            <h4 class="my-0 fw-normal">Jelly</h4>
            
          </div>
            <br />
          <div class="card-body">
            <h4 class="card-title pricing-card-title">$5<small class="text-body-secondary fw-light">per jar</small></h4>
              
            <ul class="list-unstyled mt-3 mb-4">

              <li>Apple Jelly</li>
                
             </ul>
               <asp:Button ID="btnApple" runat="server" Text="Apple Jelly" 
     CssClass="w-100 btn btn-lg btn-outline-primary" 
     style="color: #f0f0f5;" 
     OnClick="btnAddToCart_Click" 
     CommandArgument="Apple Jelly" />
             
                <ul class="list-unstyled mt-3 mb-4">
             <li>Grape Jelly</li>
                       </ul>
                        <asp:Button ID="btnGrape" runat="server" Text="Grape Jelly" 
CssClass="w-100 btn btn-lg btn-outline-primary" 
style="color: #f0f0f5;" 
OnClick="btnAddToCart_Click" 
CommandArgument="Grape Jelly" />
                 
               
                      <ul class="list-unstyled mt-3 mb-4">
                <li>Strawberry Jelly</li>
                             </ul>
                        <asp:Button ID="btnStraw" runat="server" Text="Strawberry Jelly" 
CssClass="w-100 btn btn-lg btn-outline-primary" 
style="color: #f0f0f5;" 
OnClick="btnAddToCart_Click" 
CommandArgument="Strawberry Jelly" />
                        
                        
                           
                            <ul class="list-unstyled mt-3 mb-4">
                <li>Peach Jelly</li>
                                   </ul>
                        <asp:Button ID="btnPeach" runat="server" Text="Peach Jelly" 
CssClass="w-100 btn btn-lg btn-outline-primary" 
style="color:#f0f0f5;" 
OnClick="btnAddToCart_Click" 
CommandArgument="Peach Jelly" />
                                 
                  </div>
            </div>
          </div>
                       </div>
     
     <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
      <div class="col">
        <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-header py-3">
            <h4 class="my-0 fw-normal">Pies</h4>
          </div>
          <div class="card-body">
            <h4 class="card-title pricing-card-title">$15<small class="text-body-secondary fw-light">per pie</small></h4>
         
                     
                      <ul class="list-unstyled mt-3 mb-4">
                <li>Apple Pie</li>
                        <asp:Button ID="btnApplePie" runat="server" Text="Apple Pie" 
CssClass="w-100 btn btn-lg btn-outline-primary" 
style="color: #f0f0f5;" 
OnClick="btnAddToCart_Click" 
CommandArgument="Apple Pie" />
                          </ul>
						  
						
                      <ul class="list-unstyled mt-3 mb-4">
                <li>Berry Pie</li>
                        <asp:Button ID="btnBerryPie" runat="server" Text="Berry Pie" 
CssClass="w-100 btn btn-lg btn-outline-primary" 
style="color: #f0f0f5;" 
OnClick="btnAddToCart_Click" 
CommandArgument="Berry Pie" />
                          </ul>
						  
			
						    
                      <ul class="list-unstyled mt-3 mb-4">
                <li>Pecan Pie</li>
                        <asp:Button ID="btnPecanPie" runat="server" Text="Pecan Pie" 
CssClass="w-100 btn btn-lg btn-outline-primary" 
style="color: #f0f0f5;" 
OnClick="btnAddToCart_Click" 
CommandArgument="Pecan Pie" />
                          </ul>
						  
					
						     <ul class="list-unstyled mt-3 mb-4">
                <li>Pumpkin Pie</li>
                        <asp:Button ID="btnPumpkinPie" runat="server" Text="Pumpkin Pie" 
CssClass="w-100 btn btn-lg btn-outline-primary" 
style="color: #f0f0f5;" 
OnClick="btnAddToCart_Click" 
CommandArgument="Pumpkin Pie" />
                          </ul>


                  </div>
            </div>
          </div>
                       </div>
            

        <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
      <div class="col">
        <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-header py-3">
            <h4 class="my-0 fw-normal">Cookies</h4>
          </div>
          <div class="card-body">
            <h4 class="card-title pricing-card-title">$15<small class="text-body-secondary fw-light">per Dozen</small></h4>
            <br/>
                  
                      <ul class="list-unstyled mt-3 mb-4">
                <li>Chocolate Chip Cookies</li>
                        <asp:Button ID="btnChocChip" runat="server" Text="Chocolate Chip" 
CssClass="w-100 btn btn-lg btn-outline-primary" 
style="color: #f0f0f5;" 
OnClick="btnAddToCart_Click" 
CommandArgument="Chocolate Chip Cookie" />
                          </ul>
						  
						  
						          
                      <ul class="list-unstyled mt-3 mb-4">
                <li>Oatmeal Raisin</li>
                        <asp:Button ID="btnOatmealRaisin" runat="server" Text="Oatmeal Raisin" 
CssClass="w-100 btn btn-lg btn-outline-primary" 
style="color: #f0f0f5;" 
OnClick="btnAddToCart_Click" 
CommandArgument="Oatmeal Raisin Cookie" />
                          </ul>
						  
			
						         
                      <ul class="list-unstyled mt-3 mb-4">
                <li>Snickerdoodle</li>
                        <asp:Button ID="btnSnickerDoodle" runat="server" Text="Snickerdoodle" 
CssClass="w-100 btn btn-lg btn-outline-primary" 
style="color: #f0f0f5;" 
OnClick="btnAddToCart_Click" 
CommandArgument="Snickerdoodle Cookie" />
                          </ul>
						  
						
						     <ul class="list-unstyled mt-3 mb-4">
                <li>Peanut Butter</li>
                        <asp:Button ID="btnPeanutButter" runat="server" Text="Peanut Butter" 
CssClass="w-100 btn btn-lg btn-outline-primary" 
style="color: #f0f0f5;" 
OnClick="btnAddToCart_Click" 
CommandArgument="Peanut Butter Cookie" />
                          </ul>


                  </div>
            </div>
          </div>
                       </div>
            

                   <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
      <div class="col">
        <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-header py-3">
            <h4 class="my-0 fw-normal">Brownies</h4>
          </div>
          <div class="card-body">
            <h4 class="card-title pricing-card-title">$15<small class="text-body-secondary fw-light">per dozen</small></h4>

         
                     
                      <ul class="list-unstyled mt-3 mb-4">
                <li>Plain Brownie</li>
                        <asp:Button ID="btnBrownie" runat="server" Text="Brownie" 
CssClass="w-100 btn btn-lg btn-outline-primary" 
style="color: #f0f0f5;" 
OnClick="btnAddToCart_Click" 
CommandArgument="Plain Brownie" />
                          </ul>
						  
						  
						         
                      <ul class="list-unstyled mt-3 mb-4">
                <li>Pecan Brownie</li>
                        <asp:Button ID="btnPecanBrownie" runat="server" Text="Pecan" 
CssClass="w-100 btn btn-lg btn-outline-primary" 
style="color: #f0f0f5;" 
OnClick="btnAddToCart_Click" 
CommandArgument="Pecan" />
                          </ul>
						  
			
						        
                      <ul class="list-unstyled mt-3 mb-4">
                <li>Walnut Brownie</li>
                        <asp:Button ID="btnWalnutBrownie" runat="server" Text="Walnut" 
CssClass="w-100 btn btn-lg btn-outline-primary" 
style="color: #f0f0f5;" 
OnClick="btnAddToCart_Click" 
CommandArgument="Walnut" />
                          </ul>
						  
						
						     <ul class="list-unstyled mt-3 mb-4">
                <li>Assortment</li>
                        <asp:Button ID="btnBrownieAssort" runat="server" Text="Assortment" 
CssClass="w-100 btn btn-lg btn-outline-primary" 
style="color: #f0f0f5;" 
OnClick="btnAddToCart_Click" 
CommandArgument="Brownie Assortment" />
                          </ul>


                  </div>
            </div>
          </div>
                       </div>



                   <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
      <div class="col">
        <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-header py-3">
            <h4 class="my-0 fw-normal">Cake</h4>
          </div>
          <div class="card-body">
            <h4 class="card-title pricing-card-title">$25<small class="text-body-secondary fw-light">per cake</small></h4>

              
                       
                      <ul class="list-unstyled mt-3 mb-4">
                <li>Chocolate Cake</li>
                        <asp:Button ID="btnChocCake" runat="server" Text="Chocolate" 
CssClass="w-100 btn btn-lg btn-outline-primary" 
style="color: #f0f0f5;" 
OnClick="btnAddToCart_Click" 
CommandArgument="Chocolate Cake" />
                          </ul>
						  
						  
						          
                      <ul class="list-unstyled mt-3 mb-4">
                <li>Lemon Cake</li>
                        <asp:Button ID="btnLemonCake" runat="server" Text="Lemon" 
CssClass="w-100 btn btn-lg btn-outline-primary" 
style="color: #f0f0f5;" 
OnClick="btnAddToCart_Click" 
CommandArgument="Lemon Cake" />
                          </ul>
						  
			
						         
                      <ul class="list-unstyled mt-3 mb-4">
                <li>Red Velvet Cake</li>
                        <asp:Button ID="btnRedVelvet" runat="server" Text="Red Velvet" 
CssClass="w-100 btn btn-lg btn-outline-primary" 
style="color: #f0f0f5;" 
OnClick="btnAddToCart_Click" 
CommandArgument="Red Velvet" />
                          </ul>
						  
						  
						     <ul class="list-unstyled mt-3 mb-4">
                <li>Strawberry Shortcake</li>
                        <asp:Button ID="btnStrawberry" runat="server" Text="Strawberry" 
CssClass="w-100 btn btn-lg btn-outline-primary" 
style="color: #f0f0f5;" 
OnClick="btnAddToCart_Click" 
CommandArgument="Strawberry Shortcake" />
                          </ul>


						     <ul class="list-unstyled mt-3 mb-4">
                <li>Vanilla Cake</li>
                        <asp:Button ID="btnVanilla" runat="server" Text="Vanilla Cake" 
CssClass="w-100 btn btn-lg btn-outline-primary" 
style="color: #f0f0f5;" 
OnClick="btnAddToCart_Click" 
CommandArgument="Vanilla" />
                          </ul>


                  </div>
            </div>
          </div>
                       </div>

                   <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
      <div class="col">
        <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-header py-3">
            <h4 class="my-0 fw-normal">Cupcakes</h4>
          </div>
          <div class="card-body">
            <h4 class="card-title pricing-card-title">$25<small class="text-body-secondary fw-light">per dozen</small></h4>

                         <ul class="list-unstyled mt-3 mb-4">
                <li>Patriotic Cupcake</li>
                        <asp:Button ID="btnPatrioticCupcakes" runat="server" Text="Patriotic" 
CssClass="w-100 btn btn-lg btn-outline-primary" 
style="color: #f0f0f5;" 
OnClick="btnAddToCart_Click" 
CommandArgument="Patriotic Cupcake" />
                          </ul>
  
                         <ul class="list-unstyled mt-3 mb-4">
                <li>Chocolate Cupcake</li>
                        <asp:Button ID="Button2" runat="server" Text="Chocolate" 
CssClass="w-100 btn btn-lg btn-outline-primary" 
style="color: #f0f0f5;" 
OnClick="btnAddToCart_Click" 
CommandArgument="Chocolate Cupcake" />
                          </ul>
          
                         <ul class="list-unstyled mt-3 mb-4">
                <li>Red Velvet Cupcake</li>
                        <asp:Button ID="btnRedVelvetCupcakes" runat="server" Text="Red Velvet" 
CssClass="w-100 btn btn-lg btn-outline-primary" 
style="color: #f0f0f5;" 
OnClick="btnAddToCart_Click" 
CommandArgument="Red Velvet Cupcake" />
                          </ul>
           
                      <ul class="list-unstyled mt-3 mb-4">
                <li>Confetti Cupcake</li>
                        <asp:Button ID="btnConfettiCupcakes" runat="server" Text="Confetti" 
CssClass="w-100 btn btn-lg btn-outline-primary" 
style="color: #f0f0f5;" 
OnClick="btnAddToCart_Click" 
CommandArgument="Confetti Cupcake" />
                          </ul>
              </div>
            </div>
          </div>
                       </div>
		     <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
      <div class="col">
        <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-header py-3">
            <h4 class="my-0 fw-normal">Gift Cards</h4>
          </div>
          <div class="card-body">
            <h4 class="card-title pricing-card-title">$25+<small class="text-body-secondary fw-light">each</small></h4>
               
                          <ul class="list-unstyled mt-3 mb-4">
                <li>Gift Card</li>
                        <asp:Button ID="btnGiftCard" runat="server" Text="Gift Card" 
CssClass="w-100 btn btn-lg btn-outline-primary" 
style="color: #f0f0f5;" 
OnClick="btnAddToCart_Click" 
CommandArgument="Gift Card" />
                          </ul>
		<br />
              <br />
               <a href="mailto:Sales@example.com" class="w-100 btn btn-lg btn-outline-primary">Questions</a>
</div>
            </div>
          </div>
                 </div>
     

   <center>
    <asp:HyperLink ID="lnkViewCart" runat="server" NavigateUrl="~/Cart.aspx" CssClass="btn btn-success btn-lg" Visible="false">
        <i class="fa fa-shopping-cart"></i> View Cart & Checkout
    </asp:HyperLink>
  
</center>
         <br/>
    <hr />
         <div class="container">
   <p class="float-end mb-1">
     <a href="#">Back to top</a>
   </p>
   
 </div>


   <div class="row">
     <div class="col-12 col-md">
       <img src="images/ajslogo.png" alt="logo" style="width:50px;height:50px;" />
       <small class="d-block mb-3 text-body-secondary">&copy; 2008-</small>
     </div>
       <br />
</div>


       <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
</asp:Content>
