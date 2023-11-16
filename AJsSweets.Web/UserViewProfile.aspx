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
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Customer Details</h4>
                            <span>Account Status - </span>
                            <asp:Label CssClass="badge badge-pill badge-info" ID="Label1" runat="server" Text="Label"></asp:Label>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <src="images/generaluser.png" />
                        </center>
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
                                <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="ID" ReadOnly="True"></asp:TextBox>
                             </div>
                         </div>
                       <div class="col-md-4">
                             <label>Password</label>
                             <div class="form-group">
                                 <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Email-ID" TextMode="Password" ReadOnly="True"></asp:TextBox>
                             </div>
                              </div>
                          </div>

                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                      
                              <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Width="150px" Height="25px" style="color: #85A4BC; background-color: #333399; border: medium solid #C0C0C0" Text="Go" />
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                        <label>Customer Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Customer Name"></asp:TextBox>
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
         </div>
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
