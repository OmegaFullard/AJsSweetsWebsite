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
        // Check if cart exists in session
        if (Session["CartItems"] != null)
        {
            var cartItems = Session["CartItems"] as System.Collections.Generic.List<CartItem>;
            if (cartItems != null)
            {
                // Return total quantity of all items
                int totalQuantity = 0;
                foreach (var item in cartItems)
                {
                    totalQuantity += item.Quantity;
                }
                return totalQuantity;
            }
        }
        return 0;
    }

    // Helper method to add items to cart (can be called from other pages)
    public static void AddToCart(CartItem item)
    {
        var cartItems = HttpContext.Current.Session["CartItems"] as System.Collections.Generic.List<CartItem>;

        if (cartItems == null)
        {
            cartItems = new System.Collections.Generic.List<CartItem>();
            HttpContext.Current.Session["CartItems"] = cartItems;
        }

        // Check if item already exists in cart
        var existingItem = cartItems.Find(i => i.ProductId == item.ProductId);
        if (existingItem != null)
        {
            // Update quantity
            existingItem.Quantity += item.Quantity;
        }
        else
        {
            // Add new item
            cartItems.Add(item);
        }

        HttpContext.Current.Session["CartItems"] = cartItems;
    }

    // Helper method to remove items from cart
    public static void RemoveFromCart(int productId)
    {
        var cartItems = HttpContext.Current.Session["CartItems"] as System.Collections.Generic.List<CartItem>;

        if (cartItems != null)
        {
            cartItems.RemoveAll(i => i.ProductId == productId);
            HttpContext.Current.Session["CartItems"] = cartItems;
        }
    }

    // Helper method to clear cart
    public static void ClearCart()
    {
        HttpContext.Current.Session["CartItems"] = null;
    }

    // Helper method to get cart items
    public static System.Collections.Generic.List<CartItem> GetCartItems()
    {
        var cartItems = HttpContext.Current.Session["CartItems"] as System.Collections.Generic.List<CartItem>;
        return cartItems ?? new System.Collections.Generic.List<CartItem>();
    }



    private void UpdateCartCount()
    {
        int cartCount = GetCartItemCount();

        if (cartCount > 0)
        {
            lblCartCount.Text = cartCount.ToString();
            lblCartCount.Visible = true;
            lnkCart.Visible = true;
        }
        else
        {
            lblCartCount.Text = "0";
            lblCartCount.Visible = false;
            lnkCart.Visible = false;
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