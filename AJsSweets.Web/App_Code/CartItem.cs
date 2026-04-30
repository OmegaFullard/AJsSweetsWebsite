using System;

[Serializable]
public class CartItem
{
    public int ProductId { get; set; }
    public string ProductName { get; set; }
    public decimal UnitPrice { get; set; }
    public int Quantity { get; set; }

    public decimal LineTotal
    {
        get { return UnitPrice * Quantity; }
    }
}