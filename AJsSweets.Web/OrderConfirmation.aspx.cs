using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class OrderConfirmation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack) return;

        int orderId;
        if (!int.TryParse(Request.QueryString["orderId"], out orderId)) return;

        lnkPrintInvoice.NavigateUrl = "~/PrintInvoice.aspx?orderId=" + orderId;

        string cs = ConfigurationManager.ConnectionStrings["AJs_SweetsConnectionString"].ConnectionString;

        using (var con = new SqlConnection(cs))
        {
            con.Open();

            using (var cmd = new SqlCommand("SELECT OrderId, CustomerName, CreatedUtc, Subtotal, Tax, Total FROM dbo.Orders WHERE OrderId=@OrderId", con))
            {
                cmd.Parameters.AddWithValue("@OrderId", orderId);
                using (var r = cmd.ExecuteReader())
                {
                    if (r.Read())
                    {
                        lblHeader.Text = "Order #" + r["OrderId"] + " for " + r["CustomerName"] + " on " + Convert.ToDateTime(r["CreatedUtc"]).ToString("g");
                        lblTotals.Text = "<br/>Subtotal: " + Convert.ToDecimal(r["Subtotal"]).ToString("C")
                                       + " | Tax: " + Convert.ToDecimal(r["Tax"]).ToString("C")
                                       + " | Total: " + Convert.ToDecimal(r["Total"]).ToString("C");
                    }
                }
            }

            using (var da = new SqlDataAdapter("SELECT ProductName, UnitPrice, Quantity, LineTotal FROM dbo.OrderItems WHERE OrderId=@OrderId", con))
            {
                da.SelectCommand.Parameters.AddWithValue("@OrderId", orderId);
                var dt = new DataTable();
                da.Fill(dt);
                gvReceiptItems.DataSource = dt;
                gvReceiptItems.DataBind();
            }
        }
    }
}