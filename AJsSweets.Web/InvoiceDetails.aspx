<%@ Page Title="Invoice Details" Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeBehind="InvoiceDetails.aspx.cs" Inherits="InvoiceDetails" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" runat="server">  
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <div class="row">
                     <div class="col">
                        <center>
                           <h4>Invoice Details</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                         <img src="images/Invoice.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr/>
                     </div>
                  </div>
<div class="row">
                     <div class="col-md-6">
                        <label>Invoice Number</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Invoice Number" ReadOnly="False"></asp:TextBox>
                        </div>
                     </div>
                     
                  <div class="row">
                     <div class="col-md-6">
                        <label>Start Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Start Date" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>End Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="End Date" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>
     <br />
  
                  <div class="row">
                     <div class="col-6">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-primary" runat="server" Width="150px" Height="25px" style="color: #85a4bc; background-color: #333399; border: medium solid #C0C0C0" Text="Search Invoice" />
                     </div>
                     
                  </div>
        <br />
              
            <a href="homepage.aspx"><< Back to Home</a><br/>
            <br/>
         </div>
    <div class="row">
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                     </div>
        </div>

</asp:Content>