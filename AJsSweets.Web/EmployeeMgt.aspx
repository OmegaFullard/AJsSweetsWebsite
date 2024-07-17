<%@ Page Title="Employee Management" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeFile="EmployeeMgt.aspx.cs" Inherits="EmployeeMgt" %>

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
                                        <h4>Employee Details</h4>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                 <img src="images/Employee2.png" />
                                       
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
                                <label>Employee ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Width="150px" Height="25px" style="color: #85a4bc; background-color: #333399; border: medium solid #C0C0C0" Text="Go" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <label>Employee Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Employee Name"></asp:TextBox>

                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-4 mx-auto">
                                <telerik:CardSeparatorComponent runat="server"></telerik:CardSeparatorComponent>
                         <telerik:CardActionsContainerComponent runat="server" CardActionsAlignment="Stretched" Orientation="Vertical">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Width="150px" Height="25px" style="color: #2d283d; background-color: #088f8f; border: medium solid #C0C0C0" Text="Add" />
                
                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Width="150px" Height="25px" style="color: #66b8d1; background-color: #4800ff; border: medium solid #C0C0C0" Text="Update" />
                    
                        <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Width="150px" Height="25px" style="color: #ffffff; background-color: #ff0000; border: medium solid #C0C0C0" Text="Delete" />
                     
                         </telerik:CardActionsContainerComponent>
                        </div>
                        </div>


                    </div>
                </div>

                <a href="Default.aspx"><< Back to Home</a><br/>
                <br/>
            </div>

            <div class="col-md-7">

                <div class="card">
                    <div class="card-body">



                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Employee List</h4>
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
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EmployeeID" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="First Name" HeaderText="First Name" SortExpression="First Name"></asp:BoundField>
                                        <asp:BoundField DataField="Last Name" HeaderText="Last Name" SortExpression="Last Name"></asp:BoundField>
                                        <asp:BoundField DataField="Email Address" HeaderText="Email Address" SortExpression="Email Address"></asp:BoundField>
                                        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone"></asp:BoundField>
                                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address"></asp:BoundField>
                                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City"></asp:BoundField>
                                        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State"></asp:BoundField>
                                        <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip"></asp:BoundField>
                                        <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" ReadOnly="True" SortExpression="EmployeeID"></asp:BoundField>
                                        <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country"></asp:BoundField>
                                        <asp:BoundField DataField="Date of Birth" HeaderText="Date of Birth" SortExpression="Date of Birth"></asp:BoundField>
                                        <asp:BoundField DataField="Start Date" HeaderText="Start Date" SortExpression="Start Date"></asp:BoundField>
                                        <asp:CheckBoxField DataField="Still Employed" HeaderText="Still Employed" SortExpression="Still Employed"></asp:CheckBoxField>
                                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title"></asp:BoundField>
                                        <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary"></asp:BoundField>
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:AJs_SweetsConnectionString %>' SelectCommand="SELECT * FROM [Employees] WHERE ([EmployeeID] = @EmployeeID)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="TextBox1" PropertyName="Text" Name="EmployeeID" Type="String"></asp:ControlParameter>
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>


                    </div>
                </div>


            </div>

        </div>
    </div>

    </asp:Content>