using System.Collections.Generic;
using System.Linq;
using System.Web;

public static class CartManager
{
    private const string CartKey = "CART_ITEMS";

    public static List<CartItem> GetCart()
    {
        var cart = HttpContext.Current.Session[CartKey] as List<CartItem>;
        if (cart == null)
        {
            cart = new List<CartItem>();
            HttpContext.Current.Session[CartKey] = cart;
        }
        return cart;
    }

    public static void AddItem(int productId, string productName, decimal unitPrice, int quantity)
    {
        var cart = GetCart();
        var existing = cart.FirstOrDefault(x => x.ProductId == productId);
        if (existing == null)
        {
            cart.Add(new CartItem { ProductId = productId, ProductName = productName, UnitPrice = unitPrice, Quantity = quantity });
        }
        else
        {
            existing.Quantity += quantity;
        }
    }

    public static void RemoveItem(int productId)
    {
        var cart = GetCart();
        cart.RemoveAll(x => x.ProductId == productId);
    }

    public static void Clear()
    {
        HttpContext.Current.Session[CartKey] = new List<CartItem>();
    }
}