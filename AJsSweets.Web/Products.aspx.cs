using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Products : System.Web.UI.Page
{
    private const string CartSessionKey = "CartItems";

    [Serializable]
    private sealed class CartItem
    {
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public string UnitDescription { get; set; }
        public decimal Price { get; set; }
        public int Quantity { get; set; }
        public decimal LineTotal { get { return Price * Quantity; } }
    }

    private sealed class ProductInfo
    {
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public string UnitDescription { get; set; }
        public decimal Price { get; set; }
    }

    private List<CartItem> Cart
    {
        get
        {
            var cart = Session[CartSessionKey] as List<CartItem>;
            if (cart == null)
            {
                cart = new List<CartItem>();
                Session[CartSessionKey] = cart;
            }

            return cart;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindCart();
        }
    }

    protected void gvCatalog_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName != "AddToCart" && e.CommandName != "RemoveFromCart")
        {
            return;
        }

        int productId;
        if (!int.TryParse(Convert.ToString(e.CommandArgument), out productId))
        {
            return;
        }

        int qty = GetRequestedQuantity(e.CommandSource as Control);
        var product = GetProductById(productId);
        if (product == null)
        {
            return;
        }

        var existing = Cart.FirstOrDefault(x => x.ProductId == productId);

        if (e.CommandName == "AddToCart")
        {
            if (existing == null)
            {
                Cart.Add(new CartItem
                {
                    ProductId = product.ProductId,
                    ProductName = product.ProductName,
                    UnitDescription = product.UnitDescription,
                    Price = product.Price,
                    Quantity = qty
                });
            }
            else
            {
                existing.Quantity += qty;
            }
        }
        else
        {
            if (existing != null)
            {
                existing.Quantity -= qty;
                if (existing.Quantity <= 0)
                {
                    Cart.Remove(existing);
                }
            }
        }

        BindCart();
    }

    protected void gvCart_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName != "RemoveLine")
        {
            return;
        }

        int productId;
        if (!int.TryParse(Convert.ToString(e.CommandArgument), out productId))
        {
            return;
        }

        var existing = Cart.FirstOrDefault(x => x.ProductId == productId);
        if (existing != null)
        {
            Cart.Remove(existing);
            BindCart();
        }
    }

    private int GetRequestedQuantity(Control commandSource)
    {
        var row = commandSource != null ? commandSource.NamingContainer as GridViewRow : null;
        var qtyBox = row != null ? row.FindControl("txtQty") as TextBox : null;

        int qty;
        if (!int.TryParse(qtyBox != null ? qtyBox.Text : null, out qty) || qty <= 0)
        {
            qty = 1;
        }

        return qty;
    }

    private ProductInfo GetProductById(int productId)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["AJs_SweetsConnectionString"].ConnectionString;

        using (var connection = new SqlConnection(connectionString))
        using (var command = new SqlCommand(
            @"SELECT ProductId, ProductName, UnitDescription, Price
              FROM dbo.Products
              WHERE ProductId = @ProductId AND IsActive = 1;", connection))
        {
            command.Parameters.AddWithValue("@ProductId", productId);
            connection.Open();

            using (var reader = command.ExecuteReader())
            {
                if (!reader.Read())
                {
                    return null;
                }

                return new ProductInfo
                {
                    ProductId = reader.GetInt32(0),
                    ProductName = reader.GetString(1),
                    UnitDescription = reader.GetString(2),
                    Price = reader.GetDecimal(3)
                };
            }
        }
    }

    private void BindCart()
    {
        var items = Cart.OrderBy(x => x.ProductName).ToList();

        var cartGrid = FindControlRecursive(this, "gvCart") as GridView;
        if (cartGrid != null)
        {
            cartGrid.DataSource = items;
            cartGrid.DataBind();
        }

        var cartTotalLabel = FindControlRecursive(this, "lblCartTotal") as Label;
        if (cartTotalLabel != null)
        {
            cartTotalLabel.Text = items.Sum(x => x.LineTotal).ToString("C");
        }
    }

    private static Control FindControlRecursive(Control root, string id)
    {
        if (root == null)
        {
            return null;
        }

        var direct = root.FindControl(id);
        if (direct != null)
        {
            return direct;
        }

        foreach (Control child in root.Controls)
        {
            var found = FindControlRecursive(child, id);
            if (found != null)
            {
                return found;
            }
        }

        return null;
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