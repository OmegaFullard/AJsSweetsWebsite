using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Products : System.Web.UI.Page
{
    private const string ProductSelectionsKey = "PRODUCT_SELECTIONS";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindProducts();
            UpdateCartLink();
        }
    }

    protected void rptProducts_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int productId = Convert.ToInt32(e.CommandArgument);
        Dictionary<int, int> selections = GetSelections();

        switch (e.CommandName)
        {
            case "Increase":
                selections[productId] = GetSelectedQuantity(productId) + 1;
                break;

            case "Decrease":
                int currentQuantity = GetSelectedQuantity(productId);
                selections[productId] = currentQuantity > 1 ? currentQuantity - 1 : 1;
                break;

            case "Cancel":
                selections[productId] = 1;
                pnlSuccess.Visible = false;
                break;

            case "Add":
                CartItem item = GetProduct(productId);
                if (item != null)
                {
                    int qty = GetSelectedQuantity(productId);
                    CartManager.AddItem(item.ProductId, item.ProductName, item.UnitPrice, qty);
                    ShowSuccessMessage(item.ProductName);
                    selections[productId] = 1;
                    UpdateCartLink();

                    ScriptManager.RegisterStartupScript(this, GetType(), "scrollToTop",
                        "window.scrollTo({top: 0, behavior: 'smooth'});", true);
                }
                break;
        }

        SaveSelections(selections);
        BindProducts();
    }

    protected int GetSelectedQuantity(int productId)
    {
        Dictionary<int, int> selections = GetSelections();
        return selections.ContainsKey(productId) ? selections[productId] : 1;
    }

    private void BindProducts()
    {
        rptProducts.DataSource = GetProducts();
        rptProducts.DataBind();
    }

    private List<CartItem> GetProducts()
    {
        return new List<CartItem>
        {
            new CartItem { ProductId = 1, ProductName = "Apple Jelly", UnitDescription = "Sweet apple preserve with a smooth texture, perfect for toast and pastries.", UnitPrice = 5m, Quantity = 1, ImageUrl = "~/images/applejam.png", Category = "Jelly" },
            new CartItem { ProductId = 2, ProductName = "Grape Jelly", UnitDescription = "Classic grape jelly with bold fruit flavor and a silky spreadable finish.", UnitPrice = 5m, Quantity = 1, ImageUrl = "~/images/grapejam.png", Category = "Jelly" },
            new CartItem { ProductId = 3, ProductName = "Strawberry Jelly", UnitDescription = "Bright strawberry jelly made with ripe berries for a fresh, sweet taste.", UnitPrice = 5m, Quantity = 1, ImageUrl = "~/images/strawjam.jpg", Category = "Jelly" },
            new CartItem { ProductId = 4, ProductName = "Peach Jelly", UnitDescription = "Golden peach jelly with a light floral sweetness and smooth consistency.", UnitPrice = 5m, Quantity = 1, ImageUrl = "~/images/peachjam.png", Category = "Jelly" },
            new CartItem { ProductId = 5, ProductName = "Apple Pie", UnitDescription = "Flaky crust filled with cinnamon-spiced apples baked until tender.", UnitPrice = 15m, Quantity = 1, ImageUrl = "~/images/applepie.png", Category = "Pie" },
            new CartItem { ProductId = 6, ProductName = "Berry Pie", UnitDescription = "Buttery crust packed with a mixed-berry filling that is sweet and tangy.", UnitPrice = 15m, Quantity = 1, ImageUrl = "~/images/berrypies.png", Category = "Pie" },
            new CartItem { ProductId = 7, ProductName = "Pecan Pie", UnitDescription = "Rich caramel filling topped with roasted pecans in a crisp pie shell.", UnitPrice = 15m, Quantity = 1, ImageUrl = "~/images/pecanpie.png", Category = "Pie" },
            new CartItem { ProductId = 8, ProductName = "Pumpkin Pie", UnitDescription = "Creamy spiced pumpkin custard baked in a flaky, golden crust.", UnitPrice = 15m, Quantity = 1, ImageUrl = "~/images/pumpkinpie.png", Category = "Pie" },
            new CartItem { ProductId = 9, ProductName = "Chocolate Chip Cookie", UnitDescription = "Classic chocolate chip cookies with gooey chips and a soft baked center.", UnitPrice = 15m, Quantity = 1, ImageUrl = "~/images/chocchip.png", Category = "Cookie" },
            new CartItem { ProductId = 10, ProductName = "Oatmeal Raisin Cookie", UnitDescription = "Chewy oatmeal cookie with plump raisins and warm cinnamon notes.", UnitPrice = 15m, Quantity = 1, ImageUrl = "~/images/oatmealraisin.png", Category = "Cookie" },
            new CartItem { ProductId = 11, ProductName = "Snickerdoodle Cookie", UnitDescription = "Tender sugar cookie rolled in cinnamon sugar for a classic finish.", UnitPrice = 15m, Quantity = 1, ImageUrl = "~/images/snickerdoodle.jpg", Category = "Cookie" },
            new CartItem { ProductId = 12, ProductName = "Peanut Butter Cookie", UnitDescription = "Nutty and buttery peanut butter cookie with a soft center and crisp edge.", UnitPrice = 15m, Quantity = 1, ImageUrl = "~/images/peanutbutter.jpg", Category = "Cookie" },
            new CartItem { ProductId = 13, ProductName = "Plain Brownie", UnitDescription = "Fudgy chocolate brownie with a rich cocoa flavor and moist crumb.", UnitPrice = 15m, Quantity = 1, ImageUrl = "~/images/brownies.png", Category = "Brownie" },
            new CartItem { ProductId = 14, ProductName = "Pecan Brownie", UnitDescription = "Dense chocolate brownie topped with crunchy toasted pecans.", UnitPrice = 15m, Quantity = 1, ImageUrl = "~/images/pecanbrownie.jpg", Category = "Brownie" },
            new CartItem { ProductId = 15, ProductName = "Walnut Brownie", UnitDescription = "Classic fudgy brownie blended with chopped walnuts for extra texture.", UnitPrice = 15m, Quantity = 1, ImageUrl = "~/images/walnutbrownie.jpeg", Category = "Brownie" },
            new CartItem { ProductId = 16, ProductName = "Brownie Assortment", UnitDescription = "Assorted brownie box featuring plain, pecan, and walnut varieties.", UnitPrice = 15m, Quantity = 1, ImageUrl = "~/images/browniesassort.png", Category = "Brownie" },
            new CartItem { ProductId = 17, ProductName = "Chocolate Cake", UnitDescription = "Moist layered chocolate cake finished with smooth chocolate frosting.", UnitPrice = 25m, Quantity = 1, ImageUrl = "~/images/choccake2.png", Category = "Cake" },
            new CartItem { ProductId = 18, ProductName = "Lemon Cake", UnitDescription = "Light lemon cake with bright citrus flavor and a tender crumb.", UnitPrice = 25m, Quantity = 1, ImageUrl = "~/images/lemoncake.jpg", Category = "Cake" },
            new CartItem { ProductId = 19, ProductName = "Red Velvet Cake", UnitDescription = "Velvety cocoa cake layered with rich cream cheese frosting.", UnitPrice = 25m, Quantity = 1, ImageUrl = "~/images/redvelvetcake.jpg", Category = "Cake" },
            new CartItem { ProductId = 20, ProductName = "Strawberry Shortcake", UnitDescription = "Soft vanilla layers with fresh strawberry flavor and whipped topping.", UnitPrice = 25m, Quantity = 1, ImageUrl = "~/images/strawcake.png", Category = "Cake" },
            new CartItem { ProductId = 21, ProductName = "Vanilla Cake", UnitDescription = "Classic vanilla cake with buttery flavor and smooth vanilla icing.", UnitPrice = 25m, Quantity = 1, ImageUrl = "~/images/vanillacake.jpg", Category = "Cake" },
            new CartItem { ProductId = 22, ProductName = "Patriotic Cupcake", UnitDescription = "Festive cupcake decorated in red, white, and blue with vanilla buttercream.", UnitPrice = 25m, Quantity = 1, ImageUrl = "~/images/patrioticcupcakes.png", Category = "Cupcake" },
            new CartItem { ProductId = 23, ProductName = "Chocolate Cupcake", UnitDescription = "Rich chocolate cupcake topped with creamy chocolate frosting.", UnitPrice = 25m, Quantity = 1, ImageUrl = "~/images/chocolatecc.jpg", Category = "Cupcake" },
            new CartItem { ProductId = 24, ProductName = "Red Velvet Cupcake", UnitDescription = "Soft red velvet cupcake crowned with tangy cream cheese frosting.", UnitPrice = 25m, Quantity = 1, ImageUrl = "~/images/redvelvetcc.png", Category = "Cupcake" },
            new CartItem { ProductId = 25, ProductName = "Confetti Cupcake", UnitDescription = "Vanilla cupcake filled with colorful sprinkles and sweet buttercream.", UnitPrice = 25m, Quantity = 1, ImageUrl = "~/images/confetticc.jpg", Category = "Cupcake" },
            new CartItem { ProductId = 26, ProductName = "Gift Card", UnitDescription = "Flexible gift card redeemable toward any AJ's Sweets menu item.", UnitPrice = 25m, Quantity = 1, ImageUrl = "~/images/gift_card.png", Category = "Gift Card" }
        };
    }

    private CartItem GetProduct(int productId)
    {
        return GetProducts().FirstOrDefault(product => product.ProductId == productId);
    }

    private Dictionary<int, int> GetSelections()
    {
        Dictionary<int, int> selections = Session[ProductSelectionsKey] as Dictionary<int, int>;
        if (selections == null)
        {
            selections = new Dictionary<int, int>();
            Session[ProductSelectionsKey] = selections;
        }

        return selections;
    }

    private void SaveSelections(Dictionary<int, int> selections)
    {
        Session[ProductSelectionsKey] = selections;
    }

    private void ShowSuccessMessage(string productName)
    {
        pnlSuccess.Visible = true;
        lblSuccessMessage.Text = productName;
    }

    private void UpdateCartLink()
    {
        List<CartItem> cartItems = CartManager.GetCart();
        CartLink.Visible = cartItems != null && cartItems.Count > 0;
    }
}
