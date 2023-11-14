<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Telerik.Web.WebForm1" %>
<asp:Content ID="Content0" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <telerik:RadCard ID="RadCard1" runat="server" Width="285px">
       
    <telerik:CardImageComponent runat="server" src="images/admin.png"></telerik:CardImageComponent>

    <telerik:CardBodyComponent runat="server">
        <telerik:CardTitleComponent runat="server">
            <center><b>Admin Login</b></center>   
            <br />
    
        </telerik:CardTitleComponent>
        <div class="demo-containers">
        <div class="demo-container">
        <telerik:RadTextBox ID="RadTextBox1" RenderMode="Lightweight" Width="245px" runat="server" Label="Admin ID: "
                EmptyMessage="Admin ID" InvalidStyleDuration="100"></telerik:RadTextBox>
        
               <br />
                <br />
            </div>
        <div class="demo-container">
        <telerik:RadTextBox RenderMode="Lightweight" Width="245px"  ID="RadTextBox2" runat="server" TextMode="Password" Label="Password: "  
                placeholder="Password" InvalidStyleDuration="100"></telerik:RadTextBox>
             </div>
            </div>
    </telerik:CardBodyComponent>
         
    <telerik:CardActionsContainerComponent runat="server" CardActionsAlignment="Stretched">
        <span class="k-button k-solid k-success" style="color: #2d283d; background-color: #d1e0e0; border: medium solid #C0C0C0">Login</span>
        <telerik:CardSeparatorComponent runat="server" Orientation="Vertical">
        </telerik:CardSeparatorComponent>
    
    </telerik:CardActionsContainerComponent>

    <telerik:CardFooterComponent runat="server">
            <a href="Default.aspx"><< Back to Home</a>
        <br />
        <br />
    </telerik:CardFooterComponent>
</telerik:RadCard>

</asp:Content>
