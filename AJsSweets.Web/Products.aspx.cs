using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        { // Check if cart has items to show the cart link
            UpdateCartLink();
        }
    }

    protected void btnAddToCart_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        string packageType = btn.CommandArgument;

        // Get package details based on the selected plan
        CartItem item = GetPackageDetails(packageType);

        if (item != null)
        {
            // Add to cart
            //((MasterPage)Master).AddToCart(item);

            // Show success message
            ShowSuccessMessage(item.ProductName);

            // Update cart link visibility
            UpdateCartLink();

            // Scroll to top to see the message
            ScriptManager.RegisterStartupScript(this, GetType(), "scrollToTop",
                "window.scrollTo({top: 0, behavior: 'smooth'});", true);
        }
    }

    private CartItem GetPackageDetails(string packageType)
    {
        CartItem item = null;

        switch (packageType)
        {
            case "Apple Jelly":
                item = new CartItem
                {
                    ProductId = 1,
                    ProductName = "Apple Jelly",
                    UnitDescription = "Sweet apple preserve with a smooth texture, perfect for toast and pastries.",
                    UnitPrice = 5m,
                    Quantity = 1,
                    ImageUrl = "~images/applejam.png"
                };
                break;
            case "Grape Jelly":
                item = new CartItem
                {
                    ProductId = 2,
                    ProductName = "Grape Jelly",
                    UnitDescription = "Classic grape jelly with bold fruit flavor and a silky spreadable finish.",
                    UnitPrice = 5m,
                    Quantity = 1,
                    ImageUrl = "~images/grapejam.png"
                };
                break;
            case "Strawberry Jelly":
                item = new CartItem
                {
                    ProductId = 3,
                    ProductName = "Strawberry Jelly",
                    UnitDescription = "Bright strawberry jelly made with ripe berries for a fresh, sweet taste.",
                    UnitPrice = 5m,
                    Quantity = 1,
                    ImageUrl = "~images/strawjam.jpg"
                };
                break;

            case "Peach Jelly":
                item = new CartItem
                {
                    ProductId = 4,
                    ProductName = "Peach Jelly",
                    UnitDescription = "Golden peach jelly with a light floral sweetness and smooth consistency.",
                    UnitPrice = 5m,
                    Quantity = 1,
                    ImageUrl = "~images/peachjam.png"
                };
                break;


            case "Apple Pie":
                item = new CartItem
                {
                    ProductId = 5,
                    ProductName = "Apple Pie",
                    UnitDescription = "Flaky crust filled with cinnamon-spiced apples baked until tender.",
                    UnitPrice = 15m,
                    Quantity = 1,
                    ImageUrl = "~images/applepie.png"
                };
                break;

            case "Berry Pie":
                item = new CartItem
                {
                    ProductId = 6,
                    ProductName = "Berry Pie",
                    UnitDescription = "Buttery crust packed with a mixed-berry filling that is sweet and tangy.",
                    UnitPrice = 15m,
                    Quantity = 1,
                    ImageUrl = "~images/berrypies.png"
                };
                break;
            case "Pecan Pie":
                item = new CartItem
                {
                    ProductId = 7,
                    ProductName = "Pecan Pie",
                    UnitDescription = "Rich caramel filling topped with roasted pecans in a crisp pie shell.",
                    UnitPrice = 15,
                    Quantity = 1,
                    ImageUrl = "~images/pecanpie.png"
                };
                break;

            case "Pumpkin Pie":
                item = new CartItem
                {
                    ProductId = 8,
                    ProductName = "Pumpkin Pie",
                    UnitDescription = "Creamy spiced pumpkin custard baked in a flaky, golden crust.",
                    UnitPrice = 15m,
                    Quantity = 1,
                    ImageUrl = "~images/pumpkinpie.png"
                };
                break;



            case "Chocolate Chip Cookies":
                item = new CartItem
                {
                    ProductId = 9,
                    ProductName = "Chocolate Chip Cookie",
                    UnitDescription = "",
                    UnitPrice = 15m,
                    Quantity = 1,
                    ImageUrl = "~images/chocchip.png"
                };
                break;

            case "Oatmeal Raisin Cookies":
                item = new CartItem
                {
                    ProductId = 10,
                    ProductName = "Oatmeal Raisin Cookie",
                    UnitDescription = "Chewy oatmeal cookie with plump raisins and warm cinnamon notes.",
                    UnitPrice = 15m,
                    Quantity = 1,
                    ImageUrl = "~images/oatmealraisin.png"
                };
                break;
            case "Snickerdoodle Cookies":
                item = new CartItem
                {
                    ProductId = 11,
                    ProductName = "Snickerdoodle Cookie",
                    UnitDescription = "Tender sugar cookie rolled in cinnamon sugar for a classic finish.",
                    UnitPrice = 15m,
                    Quantity = 1,
                    ImageUrl = "~images/snickerdoodle.jpg"
                };
                break;

            case "Peanut Butter Cookies":
                item = new CartItem
                {
                    ProductId = 12,
                    ProductName = "Peanut Butter Cookie ",
                    UnitDescription = "Nutty and buttery peanut butter cookie with a soft center and crisp edge.",
                    UnitPrice = 15m,
                    Quantity = 1,
                    ImageUrl = "~images/peanutbutter.jpg"
                };
                break;


            case "Brownies":
                item = new CartItem
                {
                    ProductId = 13,
                    ProductName = "Plain Brownie",
                    UnitDescription = "Fudgy chocolate brownie with a rich cocoa flavor and moist crumb.",
                    UnitPrice = 15m,
                    Quantity = 1,
                    ImageUrl = "~images/brownies.png"
                };
                break;

            case "Pecan Brownie":
                item = new CartItem
                {
                    ProductId = 14,
                    ProductName = "Pecan Brownie",
                    UnitDescription = "Dense chocolate brownie topped with crunchy toasted pecans.",
                    UnitPrice = 15m,
                    Quantity = 1,
                    ImageUrl = "~images/pecanbrownie.png"
                };
                break;
            case "Walnut Brownie":
                item = new CartItem
                {
                    ProductId = 15,
                    ProductName = "Walnut Brownie",
                    UnitDescription = "Classic fudgy brownie blended with chopped walnuts for extra texture.",
                    UnitPrice = 15m,
                    Quantity = 1,
                    ImageUrl = "~images/walnutbrownie.jpeg"
                };
                break;

            case "Assortment":
                item = new CartItem
                {
                    ProductId = 16,
                    ProductName = "Brownie Assortment",
                    UnitDescription = "Assorted brownie box featuring plain, pecan, and walnut varieties.",
                    UnitPrice = 15m,
                    Quantity = 1,
                    ImageUrl = "~images/brownieassort.png"
                };
                break;


            case "Chocolate Cake":
                item = new CartItem
                {
                    ProductId = 17,
                    ProductName = "Chocolate Cake",
                    UnitDescription = "Moist layered chocolate cake finished with smooth chocolate frosting.",
                    UnitPrice = 25m,
                    Quantity = 1,
                    ImageUrl = "~images/choccake2.png"
                };
                break;

            case "Lemon Cake":
                item = new CartItem
                {
                    ProductId = 18,
                    ProductName = "Lemon Cake",
                    UnitDescription = "Light lemon cake with bright citrus flavor and a tender crumb.",
                    UnitPrice = 25m,
                    Quantity = 1,
                    ImageUrl = "~images/lemoncake.jpg"
                };
                break;
            case "Red Velvet Cake":
                item = new CartItem
                {
                    ProductId = 19,
                    ProductName = "Red Velvet Cake",
                    UnitDescription = "Velvety cocoa cake layered with rich cream cheese frosting.",
                    UnitPrice = 25m,
                    Quantity = 1,
                    ImageUrl = "~images/redvelvetcake.jpg"
                };
                break;

            case "Strawberry Cake":
                item = new CartItem
                {
                    ProductId = 20,
                    ProductName = "Strawberry Shortcake",
                    UnitDescription = "Soft vanilla layers with fresh strawberry flavor and whipped topping.",
                    UnitPrice = 25m,
                    Quantity = 1,
                    ImageUrl = "~images/strawcake.png"
                };
                break;
            case "Vanilla Cake":
                item = new CartItem
                {
                    ProductId = 21,
                    ProductName = "Vanilla Cake",
                    UnitDescription = "Classic vanilla cake with buttery flavor and smooth vanilla icing.",
                    UnitPrice = 25m,
                    Quantity = 1,
                    ImageUrl = "~images/vanillacake.jpg"
                };
                break;


            case "Patriotic Cupcakes":
                item = new CartItem
                {
                    ProductId = 22,
                    ProductName = "Patriotic Cupcake",
                    UnitDescription = "Festive cupcake decorated in red, white, and blue with vanilla buttercream.",
                    UnitPrice = 25m,
                    Quantity = 1,
                    ImageUrl = "~images/patrioticcupcakes.png"
                };
                break;

            case "Chocolate Cupcakes":
                item = new CartItem
                {
                    ProductId = 23,
                    ProductName = "Chocolate Cupcake",
                    UnitDescription = "Rich chocolate cupcake topped with creamy chocolate frosting.",
                    UnitPrice = 25m,
                    Quantity = 1,
                    ImageUrl = "~mages/chocolatecc.jpg"
                };
                break;
            case "Red Velvet Cupcakes":
                item = new CartItem
                {
                    ProductId = 24,
                    ProductName = "Red Velvet Cupcake",
                    UnitDescription = "Soft red velvet cupcake crowned with tangy cream cheese frosting.",
                    UnitPrice = 25m,
                    Quantity = 1,
                    ImageUrl = "~images/redvelvetcc.png"
                };
                break;

            case "Confetti Cupcakes":
                item = new CartItem
                {
                    ProductId = 25,
                    ProductName = "Confetti Cupcake",
                    UnitDescription = "Vanilla cupcake filled with colorful sprinkles and sweet buttercream.",
                    UnitPrice = 25m,
                    Quantity = 1,
                    ImageUrl = "~images/confetticc.jpg"
                };
                break;
            case "Gift Card":
                item = new CartItem
                {
                    ProductId = 26,
                    ProductName = "Gift Card",
                    UnitDescription = "Flexible gift card redeemable toward any AJ's Sweets menu item.",
                    UnitPrice = 25m,
                    Quantity = 1,
                    ImageUrl = "~images/gift_card.png"
                };
                break;
        }

        return item;
    }

    private void ShowSuccessMessage(string productName)
    {
        pnlSuccess.Visible = true;
        lblSuccessMessage.Text = productName;
    }

    private void UpdateCartLink()
    {
        List<CartItem> cartItems = ((MasterPage)Master).GetCartItems();
        if (cartItems != null && cartItems.Count > 0)
        {
            CartLink.Visible = true;
        }
    }
}
