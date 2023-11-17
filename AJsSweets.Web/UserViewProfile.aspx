<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="InvoiceDetails.aspx.cs" Inherits="InvoiceDetails" %>
<asp:Content ID="Content0" ContentPlaceHolderID="head" runat="server">
      <link href="styles/default.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <div class="container-fluid">

      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                            <img src="images/defaultuser.png" />
                          
                        </center>
                     </div>
                      <div class="row">
                     <div class="col">
                        <center>
                           <h4>Customer Details</h4>
                            <span>Account Status - </span>
                            <asp:Label CssClass="badge badge-pill badge-info" ID="Label1" runat="server" Text="Active"></asp:Label>
                        </center>
                     </div>
                  </div>
                      </div>

              <div class="row">
                     <div class="col-md-6">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Name"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Date of Birth</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>State</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Alabama" Value="Alabama" />
                              <asp:ListItem Text="Alaska" Value="Alaska" />
                              <asp:ListItem Text="Arizona" Value="Arizona" />
                              <asp:ListItem Text="Arkansas" Value="Arkansas" />
                              <asp:ListItem Text="California" Value="California" />
                              <asp:ListItem Text="Colorado" Value="Colorado" />
                              <asp:ListItem Text="Connecticut" Value="Connecticut" />
                              <asp:ListItem Text="Delaware" Value="Delaware" />
                              <asp:ListItem Text="Florida" Value="Florida" />
                              <asp:ListItem Text="Georgia" Value="Georgia" />
                              <asp:ListItem Text="Hawaii" Value="Hawaii" />
                              <asp:ListItem Text="Idaho" Value="Idaho" />
                              <asp:ListItem Text="Illinois" Value="Illinois" />
                              <asp:ListItem Text="Indiana" Value="Indiana" />
                              <asp:ListItem Text="Iowa" Value="Iowa" />
                              <asp:ListItem Text="Kansas" Value="Kansas" />
                              <asp:ListItem Text="Kentucky" Value="Kentucky" />
                              <asp:ListItem Text="Louisiana" Value="Louisiana" />
                              <asp:ListItem Text="Maine" Value="Maine" />
                              <asp:ListItem Text="Maryland" Value="Maryland" />
                              <asp:ListItem Text="Massachusetts" Value="Massachusetts" />
                              <asp:ListItem Text="Michigan" Value="Michigan" />
                              <asp:ListItem Text="Minnesota" Value="Minnesota" />
                              <asp:ListItem Text="Mississippi" Value="Mississippi" />
                              <asp:ListItem Text="Missouri" Value="Missouri" />
                              <asp:ListItem Text="Montana" Value="Montana" />
                              <asp:ListItem Text="Nebraska" Value="Nebraska" />
                              <asp:ListItem Text="Nevada" Value="Nevada" />
                              <asp:ListItem Text="New Hampshire" Value="New Hampshire" />
                              <asp:ListItem Text="New Jersey" Value="New Jersey" />
                               <asp:ListItem Text="New Mexico" Value="New Mexico" />
                               <asp:ListItem Text="New York" Value="New York" />
                               <asp:ListItem Text="North Carolina" Value="North Carolina" />
                               <asp:ListItem Text="North Dakota" Value="North Dakota" />
                               <asp:ListItem Text="Ohio" Value="Ohio" />
                               <asp:ListItem Text="Oklahoma" Value="Oklahoma" />
                               <asp:ListItem Text="Oregon" Value="Oregon" />
                               <asp:ListItem Text="Pennsylvania" Value="Pennsylvania" />
                               <asp:ListItem Text="Rhode Island" Value="Rhode Island" />
                               <asp:ListItem Text="South Carolina" Value="South Carolina" />
                               <asp:ListItem Text="South Dakota" Value="South Dakota" />
                                <asp:ListItem Text="Tennessee" Value="Tennessee" />
                                <asp:ListItem Text="Texas" Value="Texas" />
                                <asp:ListItem Text="Utah" Value="Utah" />
                                <asp:ListItem Text="Vermont" Value="Vermont" />
                                <asp:ListItem Text="Virginia" Value="Virginia" />
                                <asp:ListItem Text="Washington" Value="Washington" />
                                <asp:ListItem Text="West Virginia" Value="West Virginia" />
                                <asp:ListItem Text="Wisconsin" Value="Wisconsin" />
                                <asp:ListItem Text="Wyoming" Value="Wyoming" />
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>City</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="City"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Pincode</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Full Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>

                  </div>
                  <div class="row">
                     <div class="col">
                        <hr/>
                     </div>
                 
                  <div class="row">
                     <div class="col-md-4">
                        <label>Customer ID</label>
  
                         <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Customer ID" ReadOnly="True"></asp:TextBox>
                             </div>
                         </div>
                       <div class="col-md-4">
                             <label>Old Password</label>
                             <div class="form-group">
                                 <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Email-ID" TextMode="Password" ReadOnly="True"></asp:TextBox>
                             </div>
                              </div>

                      <div class="col-md-4">
                             <label>New Password</label>
                             <div class="form-group">
                                 <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email-ID" TextMode="Password" ReadOnly="True"></asp:TextBox>
                             </div>
                          </div>
                      <br />
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                      
                              <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Width="150px" Height="25px" style="color: #85A4BC; background-color: #333399; border: medium solid #C0C0C0" Text="Go" />
                           <br />
                            </div>
                        </div>
                     </div>
                     
                  </div>
                  <div class="row">
                     <div class="col-8 mx-auto">
                           <telerik:CardSeparatorComponent runat="server"></telerik:CardSeparatorComponent>
                         <telerik:CardActionsContainerComponent runat="server" CardActionsAlignment="Stretched" Orientation="Vertical">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Width="150px" Height="25px" style="color: #2d283d; background-color: #d1e0e0; border: medium solid #C0C0C0" Text="Add" />
                     
                              
                     
                  
                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Width="150px" Height="25px" style="color: #2d283d; background-color: #e0dee3; border: medium solid #C0C0C0" Text="Update" />
                    
                    
                 
                          
                        <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Width="150px" Height="25px" style="color: #ffffff; background-color: #4800ff; border: medium solid #C0C0C0" Text="Delete" />
                     
                         </telerik:CardActionsContainerComponent>
                        
                         </div>
                  </div>
               </div>
            </div>
                  </div>
                  </div>
            <a href="Default.aspx"><< Back to Home</a><br />
            <br/>
      
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Invoice List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr/>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
   
</asp:Content>
