<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

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


       
               
 <center><img src="images/ajslogo.png" alt="logo" style="width:250px;height:250px;" /></center>
 <h2>Contact Us</h2>
               <br />
   <address>
        <abbr title="Phone">P:</abbr>
            404-222-2222
       <br />
            <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
            <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
        </address>
          <br />
                <hr />
       
<h4>Location:</h4>
        "We are located in the Stone Mountain area of Alanta, Georgia."
               <br />
 <address>
           AJ's Sweets<br />
		   123 Treats Rd., Atlanta, GA 30080<br />           
        </address>
                <hr />
               <br />            
         
            <a href="https://google.com/maps?q=39.57.09,75.10.14.8"></a>
    <center><p class="card-title"><strong>Directions to Our Help Desk Center</strong></p>                      
    
            <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d12234.543958929013!2d-75.16621169999999!3d39.94953124999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1s39.57.09%2C75.10.14.8!5e0!3m2!1sen!2sus!4v1723056453703!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
       </center>
        <center><a href="#" class="btn btn-primary">Directions</a></center>
        <br />
      


               
        
</asp:Content>