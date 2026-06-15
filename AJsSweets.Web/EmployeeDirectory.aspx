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

        <asp:GridView ID="gvEmployees" runat="server" AutoGenerateColumns="True" CssClass="table table-striped table-bordered" EmptyDataText="No employees found.">
        </asp:GridView>
    </div>
</asp:Content>
