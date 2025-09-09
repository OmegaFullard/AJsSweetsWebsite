<%@ Page Title="Invoices" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Invoices.aspx.cs" Inherits="Invoices" %>



<asp:Content ID="Content0" ContentPlaceHolderID="head" runat="server">
      <link href="styles/default.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div class="row">
                     <div class="col">
                        <center>
                           <h4>Invoices</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                            <img src="images/Invoice2.png" />
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
                     <div class="col-md-6">
                        <label>First Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="First Name" ReadOnly="False"></asp:TextBox>
                        </div>
                         <div class="col-md-6">
                        <label>Last Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Last Name" ReadOnly="False"></asp:TextBox>
                        </div>
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
                         <asp:Button ID="Button2" class="btn btn-lg btn-block btn-primary" runat="server" Width="150px" Height="25px" Style="color: #85a4bc; background-color: #333399; border: medium solid #C0C0C0" Text="Search Invoice" />
                     </div>
                     
                  </div>
                    <br />
            <a href="Default.aspx"><< Back to Home</a><br/>
            <br/>
         </div>
    <div class="row">
                     <div class="col">
                         <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" BorderColor="#D1E0E0" BorderStyle="Solid" BorderWidth="1px" BackColor="White" AutoGenerateColumns="False" DataKeyNames="Invoice Number" DataSourceID="SqlDataSource1">
                             <Columns>
                                 <asp:BoundField DataField="Invoice Number" HeaderText="Invoice Number" ReadOnly="True" SortExpression="Invoice Number"></asp:BoundField>
                                 <asp:BoundField DataField="CustomerFN" HeaderText="CustomerFN" SortExpression="CustomerFN"></asp:BoundField>
                                 <asp:BoundField DataField="CustomerLN" HeaderText="CustomerLN" SortExpression="CustomerLN"></asp:BoundField>
                                 <asp:BoundField DataField="Invoice Date" HeaderText="Invoice Date" SortExpression="Invoice Date"></asp:BoundField>
                                 <asp:BoundField DataField="Note" HeaderText="Note" SortExpression="Note"></asp:BoundField>
                                 <asp:CheckBoxField DataField="Invoice Paid" HeaderText="Invoice Paid" SortExpression="Invoice Paid"></asp:CheckBoxField>
                             </Columns>
                         </asp:GridView>
                         <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:AJs_SweetsConnectionString %>' SelectCommand="SELECT * FROM [Invoices] WHERE ([Invoice Number] = @Invoice_Number)">
                             <SelectParameters>
                                 <asp:ControlParameter ControlID="TextBox3" PropertyName="Text" Name="Invoice_Number" Type="String"></asp:ControlParameter>
                             </SelectParameters>
                         </asp:SqlDataSource>
                     </div>
        </div>
    
 </asp:Content>