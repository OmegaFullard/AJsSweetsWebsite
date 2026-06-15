using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

public partial class Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) BindCart();
    }

    private void BindCart()
    {
        List<CartItem> cartItems = CartManager.GetCart();

        if (cartItems.Count > 0)
        {
            pnlEmptyCart.Visible = false;
            pnlCartItems.Visible = true;
            gvCart.DataSource = cartItems;
            gvCart.DataBind();
            lblGrandTotal.Text = cartItems.Sum(item => item.LineTotal).ToString("C");
        }
        else
        {
            pnlEmptyCart.Visible = true;
            pnlCartItems.Visible = false;
            lblGrandTotal.Text = string.Empty;
        }
    }


    protected void gvCart_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            var item = e.Row.DataItem as CartItem;
            if (item != null)
            {
                var imgProduct = (System.Web.UI.WebControls.Image)e.Row.FindControl("imgProduct");
                if (imgProduct != null)
                {
                    imgProduct.ImageUrl = ResolveUrl(item.ImageUrl ?? string.Empty);
                }
            }
        }
    }

    protected void gvCart_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int productId = Convert.ToInt32(e.CommandArgument);
        List<CartItem> cartItems = CartManager.GetCart();
        CartItem item = cartItems.FirstOrDefault(i => i.ProductId == productId);

        if (item != null)
        {
            switch (e.CommandName)
            {
                case "Increase":
                    item.Quantity++;
                    break;

                case "Decrease":
                    if (item.Quantity > 1)
                    {
                        item.Quantity--;
                    }
                    else
                    {
                        CartManager.RemoveItem(productId);
                    }
                    break;

                case "Remove":
                    CartManager.RemoveItem(productId);
                    break;
            }

            BindCart();
        }
    }

    protected void btnClearCart_Click(object sender, EventArgs e)
    {
        CartManager.Clear();
        BindCart();
    }

    protected void btnCheckout_Click(object sender, EventArgs e)
    {
        if (CartManager.GetCart().Count == 0)
        {
            lblCartMessage.Text = "Your cart is empty.";
            return;
        }
        Response.Redirect("Checkout.aspx");
    }
}