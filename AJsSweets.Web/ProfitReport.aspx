<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfitReport.aspx.cs" Inherits="ProfitReport" %>

<%@ Register assembly="Telerik.ReportViewer.Html5.WebForms, Version=17.2.23.1010, Culture=neutral, PublicKeyToken=a9d7983dfcc261be" namespace="Telerik.ReportViewer.Html5.WebForms" tagprefix="telerik" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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

        <telerik:ReportViewer ID="ReportViewer1" runat="server">
            <ReportSource Identifier="C:\Users\omega.fullard\source\repos\TelerikWebSite1\TelerikWebSite1\Reports\Profits.trdp" IdentifierType="UriReportSource">
            </ReportSource>
        </telerik:ReportViewer>

    </div>
    </form>
</body>
</html>
