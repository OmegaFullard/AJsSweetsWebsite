<%@ Page Title="Employee Directory" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeFile="EmployeeDirectory.aspx.cs" Inherits="EmployeeDirectory" %>

<asp:Content ID="ContentHead" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="ContentBody" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-3">
        <h3>Employee Directory</h3>

        <asp:Panel ID="pnlError" runat="server" Visible="false" CssClass="alert alert-danger"></asp:Panel>

        <div class="row g-2 mb-3">
            <div class="col-md-8">
                <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" placeholder="Search by first name, last name, email, or title"></asp:TextBox>
            </div>
            <div class="col-md-4">
                <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-primary me-2" OnClick="btnSearch_Click" />
                <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-outline-secondary" OnClick="btnClear_Click" />
            </div>
        </div>

        <asp:GridView ID="gvEmployees" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered" EmptyDataText="No employees found." DataSourceID="SqlDataSource1">
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:AJs_SweetsConnectionString2 %>' ProviderName='<%$ ConnectionStrings:AJs_SweetsConnectionString2.ProviderName %>' SelectCommand="SELECT [First_Name], [Last_Name], [Email_Address], [Phone], [EmployeeID], [Still_Employed], [Title], [Salary] FROM [Employees]"></asp:SqlDataSource>
    </div>
</asp:Content>
