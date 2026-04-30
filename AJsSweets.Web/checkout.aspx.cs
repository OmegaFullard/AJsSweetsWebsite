using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
public partial class Checkout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmitOrder_Click(object sender, EventArgs e)
    {
        var cart = CartManager.GetCart();
        if (cart.Count == 0) { lblError.Text = "Cart is empty."; return; }

        if (string.IsNullOrWhiteSpace(txtName.Text) || string.IsNullOrWhiteSpace(txtEmail.Text) || string.IsNullOrWhiteSpace(txtAddress1.Text))
        {
            lblError.Text = "Required fields are missing.";
            return;
        }

        decimal subtotal = cart.Sum(x => x.LineTotal);
        decimal tax = Math.Round(subtotal * 0.08m, 2);
        decimal total = subtotal + tax;

        string cs = ConfigurationManager.ConnectionStrings["AJs_SweetsConnectionString"].ConnectionString;
        int orderId;

        using (var con = new System.Data.SqlClient.SqlConnection(cs))
        {
            con.Open();
            var tx = con.BeginTransaction();

            try
            {
                var cmdOrder = new SqlCommand(
                    @"INSERT INTO dbo.Orders (CustomerUserName, CustomerName, Email, Phone, Address1, City, [State], PostalCode, Subtotal, Tax, Total, OrderStatus)
                      VALUES (@UserName,@Name,@Email,@Phone,@Address1,@City,@State,@Zip,@Subtotal,@Tax,@Total,'Paid');
                      SELECT CAST(SCOPE_IDENTITY() AS INT);", con, tx);

                cmdOrder.Parameters.AddWithValue("@UserName", Convert.ToString(Session["CustomerUserName"]));
                cmdOrder.Parameters.AddWithValue("@Name", txtName.Text.Trim());
                cmdOrder.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                cmdOrder.Parameters.AddWithValue("@Phone", txtPhone.Text.Trim());
                cmdOrder.Parameters.AddWithValue("@Address1", txtAddress1.Text.Trim());
                cmdOrder.Parameters.AddWithValue("@City", txtCity.Text.Trim());
                cmdOrder.Parameters.AddWithValue("@State", txtState.Text.Trim());
                cmdOrder.Parameters.AddWithValue("@Zip", txtZip.Text.Trim());
                cmdOrder.Parameters.AddWithValue("@Subtotal", subtotal);
                cmdOrder.Parameters.AddWithValue("@Tax", tax);
                cmdOrder.Parameters.AddWithValue("@Total", total);

                orderId = Convert.ToInt32(cmdOrder.ExecuteScalar());

                foreach (var item in cart)
                {
                    var cmdItem = new SqlCommand(
                        @"INSERT INTO dbo.OrderItems (OrderId, ProductId, ProductName, UnitPrice, Quantity, LineTotal)
                          VALUES (@OrderId,@ProductId,@ProductName,@UnitPrice,@Quantity,@LineTotal)", con, tx);

                    cmdItem.Parameters.AddWithValue("@OrderId", orderId);
                    cmdItem.Parameters.AddWithValue("@ProductId", item.ProductId);
                    cmdItem.Parameters.AddWithValue("@ProductName", item.ProductName);
                    cmdItem.Parameters.AddWithValue("@UnitPrice", item.UnitPrice);
                    cmdItem.Parameters.AddWithValue("@Quantity", item.Quantity);
                    cmdItem.Parameters.AddWithValue("@LineTotal", item.LineTotal);
                    cmdItem.ExecuteNonQuery();
                }

                string last4 = txtCard.Text.Length >= 4 ? txtCard.Text.Substring(txtCard.Text.Length - 4) : txtCard.Text;

                var cmdPay = new SqlCommand(
                    @"INSERT INTO dbo.Payments (OrderId, PaymentMethod, CardLast4, Amount, PaymentStatus)
                      VALUES (@OrderId, 'Card', @CardLast4, @Amount, 'Approved')", con, tx);

                cmdPay.Parameters.AddWithValue("@OrderId", orderId);
                cmdPay.Parameters.AddWithValue("@CardLast4", last4);
                cmdPay.Parameters.AddWithValue("@Amount", total);
                cmdPay.ExecuteNonQuery();

                tx.Commit();
            }
            catch
            {
                tx.Rollback();
                lblError.Text = "Order failed. Please try again.";
                return;
            }
        }

        CartManager.Clear();
        Response.Redirect("OrderConfirmation.aspx?orderId=" + orderId);
    }
}