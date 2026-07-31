using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Shop : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) BindProducts();
    }

    private void BindProducts()
    {
        using (var con = new SqlConnection(ConfigurationManager.ConnectionStrings["AJs_SweetsConnectionString"].ConnectionString))
        using (var cmd = new SqlCommand("SELECT ProductId, ProductName, Price, ImageUrl FROM dbo.Products WHERE IsActive = 1 ORDER BY ProductName", con))
        using (var da = new SqlDataAdapter(cmd))
        {
            var dt = new DataTable();
            da.Fill(dt);
            rptProducts.DataSource = dt;
            rptProducts.DataBind();
        }
    }

    protected void rptProducts_ItemCommand(object source, System.Web.UI.WebControls.RepeaterCommandEventArgs e)
    {
        if (e.CommandName != "Add") return;

        var parts = e.CommandArgument.ToString().Split('|');
        int productId = Convert.ToInt32(parts[0]);
        string productName = parts[1];
        decimal price = Convert.ToDecimal(parts[2]);
        string imageUrl = parts.Length > 3 ? parts[3] : string.Empty;

        CartManager.AddItem(productId, productName, price, 1, imageUrl);
        lblMsg.Text = "Item added to cart.";
    }
}