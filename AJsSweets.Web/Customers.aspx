<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customers.aspx.cs" Inherits="Customers" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customers</title>
    <telerik:RadStyleSheetManager id="RadStyleSheetManager1" runat="server" />
</head>
<body>
    <form id="form1" runat="server">
    <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
        <Scripts>
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js" />
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js" />
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js" />
        </Scripts>
    </telerik:RadScriptManager>
    <script type="text/javascript">
        //Put your JavaScript code here.
    </script>
    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
    </telerik:RadAjaxManager>
    <div>

        <telerik:RadDataForm ID="RadDataForm1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1" EnableEmbeddedSkins="False">
           <LayoutTemplate>
        <div >
            <div id="itemPlaceholder" runat="server"></div>
        </div>
               <div class="RadDataForm RadDataForm_<%# Container.Skin %> rdfLeftAligned rdfNoFieldHint">
            <div id="Div1" runat="server">
            </div>
            <telerik:RadDataPager ID="RadDataPager1" runat="server" PagedControlID="RadDataForm1" EnableEmbeddedSkins="False">
                <Fields>
                    <telerik:RadDataPagerButtonField FieldType="FirstPrev" />
                    <telerik:RadDataPagerButtonField FieldType="NextLast" />
                    <telerik:RadDataPagerTemplatePageField>
                        <PagerTemplate>
                            <div>
                                <label>
                                    Contact <strong>
                                        <%#Container.Owner.StartRowIndex+1%></strong> of <strong>
                                            <%# Container.Owner.TotalRowCount%></strong></label>
                            </div>
                        </PagerTemplate>
                    </telerik:RadDataPagerTemplatePageField>
                </Fields>
            </telerik:RadDataPager>
        </div>
    </LayoutTemplate>
    <ItemTemplate>
        <fieldset class="rdfFieldset rdfBorders">
            <div class="rdfRow">
                <asp:Label runat="server" ID="lblFN" Text="First Name:"></asp:Label>
                <asp:Label Text='<%# Eval("First Name") %>' runat="server" ID="lbl2" />
            </div>
            <div class="rdfRow">
                <asp:Label runat="server" ID="lblLN" Text="Last Name:"></asp:Label>
                <asp:Label Text='<%# Eval("Last Name") %>' runat="server" ID="lbl4" />
            </div>
            <div class="rdfRow">
                <asp:Label runat="server" ID="lblEmail" Text="Email Address:"></asp:Label>
                <asp:Label Text='<%# Eval("Email Address") %>' runat="server" ID="lbl6" />
            </div>
            <div class="rdfRow">
                <asp:Label runat="server" ID="lblPhone" Text="Phone Number:"></asp:Label>
                <asp:Label Text='<%# Eval("Phone") %>' runat="server" ID="lbl8" />
            </div>
            <div class="rdfRow">
                <asp:Label runat="server" ID="lblAddress" Text="Address:"></asp:Label>
                <asp:Label Text='<%# Eval("Address") %>' runat="server" ID="lbl10" />
            </div>
            <div class="rdfRow">
                <asp:Label runat="server" ID="lblCity" Text="City:"></asp:Label>
                <asp:Label Text='<%# Eval("City") %>' runat="server" ID="lbl12" />
            </div>
            <div class="rdfRow">
                <asp:Label runat="server" ID="lblState" Text="State:"></asp:Label>
                <asp:Label Text='<%# Eval("State") %>' runat="server" ID="Label2" />
            </div>
            <div class="rdfRow">
                <asp:Label runat="server" ID="lblZip" Text="Zip:"></asp:Label>
                <asp:Label Text='<%# Eval("Zip") %>' runat="server" ID="Label3" />
            </div>
            <div class="rdfRow">
                <asp:Label runat="server" ID="lblCountry" Text="Country:"></asp:Label>
                <asp:Label Text='<%# Eval("Country") %>' runat="server" ID="Label4" />
            </div>
        </fieldset>
    </ItemTemplate>
        </telerik:RadDataForm>
        <br />
           <a href="Default.aspx"><< Back to Home</a><br />
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AJs_SweetsConnectionString %>" SelectCommand="SELECT * FROM [Customers]">
          
        </asp:SqlDataSource>
    </form>
</body>
</html>
