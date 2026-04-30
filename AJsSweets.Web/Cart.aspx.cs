using System;
using System.Linq;

public partial class Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) BindCart();
    }

    private void BindCart()
    {
        gvCart.DataSource = CartManager.GetCart().ToList();
        gvCart.DataBind();
    }

    protected void gvCart_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
    {
        if (e.CommandName == "RemoveItem")
        {
            CartManager.RemoveItem(Convert.ToInt32(e.CommandArgument));
            BindCart();
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        var cart = CartManager.GetCart();
        foreach (System.Web.UI.WebControls.GridViewRow row in gvCart.Rows)
        {
            int productId = Convert.ToInt32(gvCart.DataKeys[row.RowIndex].Value);
            var txtQty = (System.Web.UI.WebControls.TextBox)row.FindControl("txtQty");
            int qty;
            if (!int.TryParse(txtQty.Text, out qty) || qty <= 0) qty = 1;

            var item = cart.FirstOrDefault(x => x.ProductId == productId);
            if (item != null) item.Quantity = qty;
        }
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