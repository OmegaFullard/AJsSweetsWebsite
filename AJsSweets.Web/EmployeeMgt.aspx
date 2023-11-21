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
                
                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Width="150px" Height="25px" style="color: #2d283d; background-color: #4800ff; border: medium solid #C0C0C0" Text="Update" />
                    
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
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>


                    </div>
                </div>


            </div>

        </div>
    </div>

    </asp:Content>