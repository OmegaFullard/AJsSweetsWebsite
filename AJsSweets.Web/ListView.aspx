<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ListView.aspx.cs" Inherits="TelerikWebSite1.ListView" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadPageLayout runat="server" ID="JumbotronLayout" CssClass="jumbotron" GridType="Fluid">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="10" SpanMd="12" SpanSm="12" SpanXs="12">
                        <h1>Sweets and Treats</h1>
                        <h2>"Let us satisfy your sweettooth"</h2>
                        <telerik:RadButton runat="server" ID="RadButton0" Text="Place Order" ButtonType="SkinnedButton"></telerik:RadButton>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="2" HiddenMd="true" HiddenSm="true" HiddenXs="true">
                       
                        <img src="images/assorted.png" width="400" height="300" />

                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadListView runat="server" OnItemDataBound="RadListViewImages_ItemDataBound" OnNeedDataSource="RadListViewImages_NeedDataSource" ID="RadListViewImages" AllowPaging="true" PageSize="3">
        <LayoutTemplate>
            <div class="listView1">
                <asp:Panel ID="itemPlaceholder" runat="server">
                </asp:Panel>
            </div>
        </LayoutTemplate>
        <ItemTemplate>
            <div class="listViewItem" onclick="example.imageClicked('<%# Eval("ID") %>')">
                <asp:Image ImageUrl='<%# Eval("ThumbnailUrl") %>' Width="200px" Height="150px" runat="server" ToolTip="Click to view larger image" />
                <p>
                    <asp:Literal runat="server" ID="LabelShortDescription"></asp:Literal></p>

            </div>
        </ItemTemplate>
    </telerik:RadListView>
    <hr />
    <telerik:RadListView runat="server" OnNeedDataSource="RadListViewArticles_NeedDataSource" ID="RadListViewArticles" AllowPaging="true" PageSize="4">
        <LayoutTemplate>
            <div class="listView2">
                <asp:Panel ID="itemPlaceholder" runat="server">
                </asp:Panel>
            </div>
        </LayoutTemplate>
        <ItemTemplate>
            <div class="listViewItem article">
                <h4><%# Eval("Title") %></h4>
                <%# Eval("Description") %>
            </div>
        </ItemTemplate>
    </telerik:RadListView>
    <telerik:RadLightBox DataImageUrlField="ImageUrl" DataDescriptionField="Description" DataTitleField="Name" runat="server" ID="RadLightBoxImageDetails">
        <ClientSettings>
            <ClientEvents OnLoad="example.radLightBoxLoad" />
        </ClientSettings>
    </telerik:RadLightBox>
</asp:Content>

