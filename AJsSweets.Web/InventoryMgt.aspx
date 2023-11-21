<%@ Page Title="Inventory Management" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"  CodeBehind="InventoryMgt.aspx.cs" Inherits="InventoryMgt" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
   
   <div class="container">
      <div class="row">
         <div class="col-md-6">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Inventory Details</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                          <img src="images/Inventory.png" />
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
                        <asp:FileUpload class="form-control" ID="FileUpload1" runat="server" />
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Inventory ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Inventory ID"></asp:TextBox>
                              <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server"><i class="fas fa-check-circle"></i></asp:LinkButton>
                               <asp:Button class="btn btn-primary" ID="Button1" runat="server" Width="150px" Height="25px" style="color: #85a4bc; background-color: #333399; border: medium solid #C0C0C0" Text="Go" />
                           </div>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Item Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Item Name"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Language</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="English" Value="English" />
							   <asp:ListItem Text="French" Value="French" />
                              <asp:ListItem Text="German" Value="German" />
                              <asp:ListItem Text="Hindi" Value="Hindi" />
                              <asp:ListItem Text="Mandarin" Value="Mandarin" />
                              <asp:ListItem Text="Spanish" Value="Spanish" />
                             
                           </asp:DropDownList>
                        </div>
                        <label>Item Details</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                              <asp:ListItem Text="Item 1" Value="Item 1" />   
                              <asp:ListItem Text="Item 2" Value="Item 2" />
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Item Price</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                              <asp:ListItem Text="A1" Value="a1" />
                              <asp:ListItem Text="a2" Value="a2" />
                           </asp:DropDownList>
                        </div>
                        <label>Ordered Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Stock Level</label>
                        <div class="form-group">
                           <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                              <asp:ListItem Text="100+" Value="In Stock" />
                              <asp:ListItem Text="50-100" Value="Low" />
                              <asp:ListItem Text="Less Than 50" Value="Re-Order" />
                              <asp:ListItem Text="0" Value="Out-of-Stock" />      
                           </asp:ListBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Supplies</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Supplies"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Supplies Cost(per unit)</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Supply Cost(per unit)" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Quantity</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Quantity" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Actual Stock</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Actual Stock" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Current Stock</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Cost(per unit)" TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Ordered</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Orders" TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-12">
                        <label>Order Description</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Order Description" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-8 mx-auto">
                    <telerik:CardSeparatorComponent runat="server"></telerik:CardSeparatorComponent>
                         <telerik:CardActionsContainerComponent runat="server" CardActionsAlignment="Stretched" Orientation="Vertical">
                        
                             <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Width="150px" Height="25px" style="color: #2d283d; background-color: #088f8f; border: medium solid #C0C0C0" Text="Add" />
            
                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Width="150px" Height="25px" style="color: #2d283d; background-color: #4800ff; border: medium solid #C0C0C0" Text="Update" />
                                     
                        <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Width="150px" Height="25px" style="color: #ffffff; background-color: #ff0000; border: medium solid #C0C0C0" Text="Delete" />
                     
                         </telerik:CardActionsContainerComponent>
                        </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br/>
            <br/>
         </div>
         <div class="col-md-6">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Inventory List</h4>
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
      </div>
   </div>
    </asp:Content>