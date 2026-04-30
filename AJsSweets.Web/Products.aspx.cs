using System;
using System.Web.UI.WebControls;

public partial class Products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void dsProducts_Inserting(object sender, SqlDataSourceCommandEventArgs e)
    {
        ValidateProductCommand(e);
    }

    protected void dsProducts_Updating(object sender, SqlDataSourceCommandEventArgs e)
    {
        ValidateProductCommand(e);
    }

    private static void ValidateProductCommand(SqlDataSourceCommandEventArgs e)
    {
        string productName = Convert.ToString(e.Command.Parameters["@ProductName"].Value);
        string category = Convert.ToString(e.Command.Parameters["@Category"].Value);
        string unitDescription = Convert.ToString(e.Command.Parameters["@UnitDescription"].Value);

        decimal price;
        bool validPrice = decimal.TryParse(Convert.ToString(e.Command.Parameters["@Price"].Value), out price);

        if (string.IsNullOrWhiteSpace(productName) ||
            string.IsNullOrWhiteSpace(category) ||
            string.IsNullOrWhiteSpace(unitDescription))
        {
            throw new ApplicationException("Product, Category, and Unit are required.");
        }

        if (!validPrice || price <= 0)
        {
            throw new ApplicationException("Price must be a positive value.");
        }
    }
}