<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container my-5">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="display-4 mb-4">
                    <i class="fa fa-search"></i> Search Results
                </h1>
                
                <!-- Search Box -->
                <div class="card mb-4">
                    <div class="card-body">
                        <div class="input-group input-group-lg">
                            <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" placeholder="Enter keywords to search..." MaxLength="100"></asp:TextBox>
                            <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-primary" OnClick="btnSearch_Click" />
                        </div>
                    </div>
                </div>

                <!-- Search Results Summary -->
                <asp:Panel ID="pnlResults" runat="server" Visible="false">
                    <div class="alert alert-info">
                        <strong><i class="fa fa-info-circle"></i> Results:</strong> 
                        Found <strong><asp:Label ID="lblResultCount" runat="server"></asp:Label></strong> result(s) for 
                        "<strong><asp:Label ID="lblSearchTerm" runat="server"></asp:Label></strong>"
                    </div>

                    <!-- Search Results -->
                    <asp:Repeater ID="rptSearchResults" runat="server">
                        <ItemTemplate>
                            <div class="card mb-3 shadow-sm">
                                <div class="card-body">
                                    <h5 class="card-title">
                                        <a href='<%# Eval("Url") %>'><%# Eval("Title") %></a>
                                    </h5>
                                    <p class="card-text text-muted">
                                        <small><i class="fa fa-file-text-o"></i> <%# Eval("PageName") %></small>
                                    </p>
                                    <p class="card-text"><%# Eval("Description") %></p>
                                    <p class="card-text">
                                        <small class="text-muted">...<%# Eval("Snippet") %>...</small>
                                    </p>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <a href='<%# Eval("Url") %>' class="btn btn-sm btn-outline-primary">View Page</a>
                                        <small class="text-muted">Relevance: <%# Eval("Score") %>%</small>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </asp:Panel>

                <!-- No Results -->
                <asp:Panel ID="pnlNoResults" runat="server" Visible="false">
                    <div class="alert alert-warning">
                        <h4><i class="fa fa-exclamation-triangle"></i> No Results Found</h4>
                        <p>Your search for "<strong><asp:Label ID="lblNoResultsTerm" runat="server"></asp:Label></strong>" did not match any content.</p>
                        <hr />
                        <p class="mb-0">
                            <strong>Suggestions:</strong>
                        </p>
                        <ul>
                            <li>Make sure all words are spelled correctly</li>
                            <li>Try different keywords</li>
                            <li>Try more general keywords</li>
                            <li>Try fewer keywords</li>
                        </ul>
                    </div>
                </asp:Panel>

                <!-- Popular Pages -->
                <div class="card mt-4">
                    <div class="card-header bg-primary text-white">
                        <h5 class="mb-0"><i class="fa fa-star"></i> Popular Pages</h5>
                    </div>
                    <div class="card-body">
                        <div class="list-group list-group-flush">
                            <a href="~/Default.aspx" runat="server" class="list-group-item list-group-item-action">
                                <i class="fa fa-home"></i> Home
                            </a>
                            <a href="~/Services.aspx" runat="server" class="list-group-item list-group-item-action">
                                <i class="fa fa-cogs"></i> Services
                            </a>
                            <a href="~/Products.aspx" runat="server" class="list-group-item list-group-item-action">
                                <i class="fa fa-shopping-cart"></i> Products & Pricing
                            </a>
                            <a href="~/Contact.aspx" runat="server" class="list-group-item list-group-item-action">
                                <i class="fa fa-envelope"></i> Contact Us
                            </a>
                            <a href="~/About.aspx" runat="server" class="list-group-item list-group-item-action">
                                <i class="fa fa-info-circle"></i> About Us
                            </a>
                            <a href="~/Support.aspx" runat="server" class="list-group-item list-group-item-action">
                                <i class="fa fa-life-ring"></i> Support
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>