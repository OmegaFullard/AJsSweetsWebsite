using System;
using System.Web;


public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UpdateCartCount();
    }

    protected void Page_PreRender(object sender, EventArgs e)
    {
        //Update cart count on every page render
        UpdateCartCount();
    }
    private int GetCartItemCount()
    {
        var cartItems = CartManager.GetCart();
        if (cartItems != null && cartItems.Count > 0)
        {
            int totalQuantity = 0;
            foreach (var item in cartItems)
            {
                totalQuantity += item.Quantity;
            }
            return totalQuantity;
        }
        return 0;
    }

    // Helper method to add items to cart (delegates to CartManager for unified storage)
    public static void AddToCart(CartItem item)
    {
        CartManager.AddItem(item.ProductId, item.ProductName, item.Price, item.Quantity, item.ImageUrl);
    }

    // Helper method to remove items from cart
    public static void RemoveFromCart(int productId)
    {
        CartManager.RemoveItem(productId);
    }

    // Helper method to clear cart
    public static void ClearCart()
    {
        CartManager.Clear();
    }

    // Helper method to get cart items
    public static System.Collections.Generic.List<global::CartItem> GetCartItems()
    {
        return CartManager.GetCart();
    }



    private void UpdateCartCount()
    {
        int cartCount = GetCartItemCount();

        // Keep cart icon visible in the search/button area
        lnkCart.Visible = true;

        if (cartCount > 0)
        {
            lblCartCount.Text = cartCount.ToString();
            lblCartCount.Visible = true;
        }
        else
        {
            lblCartCount.Text = "0";
            lblCartCount.Visible = false;
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string searchQuery = txtSearch.Text.Trim();
        if (!string.IsNullOrEmpty(searchQuery))
        {
            // Redirect to include query in URL for bookmarking and refresh support
            Response.Redirect("~/Search.aspx?q=" + HttpUtility.UrlEncode(searchQuery));
        }
    }

    /// <summary>
    /// CartItem class definition
    /// </summary>
    [Serializable]
    public class CartItem
    {
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public string Description { get; set; }
        public decimal Price { get; set; }
        public int Quantity { get; set; }
        public string ImageUrl { get; set; }

        public decimal TotalPrice
        {
            get { return Price * Quantity; }
        }
    }
}