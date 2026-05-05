using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


    public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UpdateCartCount();
    }

    public void AddToCart(CartItem item)
    {
        if (item == null) return;

        CartManager.AddItem(item.ProductId, item.ProductName, item.UnitPrice, item.Quantity);
        UpdateCartCount();
    }

    public List<CartItem> GetCartItems()
    {
        return CartManager.GetCart();
    }

    private void UpdateCartCount()
    {
        List<CartItem> cart = CartManager.GetCart();
        int totalCount = cart.Sum(x => x.Quantity);

        lblCartCount.Text = totalCount.ToString();
        lblCartCount.Visible = totalCount > 0;
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
    }
}
