<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .invoice-wrap { max-width: 900px; margin: 20px auto; }
        .invoice-actions { margin: 12px 0 18px 0; }
        .invoice-meta p { margin: 0 0 4px 0; }
        @media print {
            .no-print { display: none !important; }
        }
    </style>

    <div class="invoice-wrap">
        <h2>Invoice</h2>

        <div class="invoice-actions no-print">
            <asp:Button ID="btnPrint" runat="server" Text="Print Invoice" CssClass="btn btn-primary" OnClientClick="window.print(); return false;" />
            <a href="OrderConfirmation.aspx" class="btn btn-outline-secondary">Back to Receipt</a>
        </div>

        <asp:FormView ID="fvInvoiceHeader" runat="server" DataSourceID="dsInvoiceHeader">
            <ItemTemplate>
                <div class="invoice-meta">
                    <p><strong>Invoice #:</strong> <%# Eval("OrderId") %></p>
                    <p><strong>Order Date:</strong> <%# Eval("CreatedUtc", "{0:g}") %></p>
                    <p><strong>Customer:</strong> <%# Eval("CustomerName") %></p>
                </div>

                <div class="text-end">
                    <p><strong>Subtotal:</strong> <%# Eval("Subtotal", "{0:C}") %></p>
                    <p><strong>Tax:</strong> <%# Eval("Tax", "{0:C}") %></p>
                    <p><strong>Total:</strong> <%# Eval("Total", "{0:C}") %></p>
                </div>
            </ItemTemplate>
        </asp:FormView>

        <hr />

        <asp:GridView ID="gvInvoiceItems" runat="server" AutoGenerateColumns="False" DataSourceID="dsInvoiceItems" CssClass="table table-bordered table-striped" EmptyDataText="No invoice items found.">
            <Columns>
                <asp:BoundField DataField="ProductName" HeaderText="Item" />
                <asp:BoundField DataField="UnitPrice" HeaderText="Unit Price" DataFormatString="{0:C}" />
                <asp:BoundField DataField="Quantity" HeaderText="Qty" />
                <asp:BoundField DataField="LineTotal" HeaderText="Line Total" DataFormatString="{0:C}" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="dsInvoiceHeader" runat="server"
            ConnectionString="<%$ ConnectionStrings:AJs_SweetsConnectionString %>"
            SelectCommand="SELECT OrderId, CustomerName, CreatedUtc, Subtotal, Tax, Total FROM dbo.Orders WHERE OrderId=@OrderId">
            <SelectParameters>
                <asp:QueryStringParameter Name="OrderId" QueryStringField="orderId" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="dsInvoiceItems" runat="server"
            ConnectionString="<%$ ConnectionStrings:AJs_SweetsConnectionString %>"
            SelectCommand="SELECT ProductName, UnitPrice, Quantity, LineTotal FROM dbo.OrderItems WHERE OrderId=@OrderId">
            <SelectParameters>
                <asp:QueryStringParameter Name="OrderId" QueryStringField="orderId" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
