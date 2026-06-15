using DocumentFormat.OpenXml.Drawing.Charts;
using DocumentFormat.OpenXml.Presentation;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web.UI.WebControls;
public partial class Checkout : System.Web.UI.Page
{
    private decimal subtotal = 0;
    private decimal tax = 0;
    private decimal shipping = 5.99m; // Flat rate shipping
    private decimal total = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Check if cart has items
            List<CartItem> cartItems = CartManager.GetCart();
            if (cartItems == null || cartItems.Count == 0)
            {
                Response.Redirect("~/Cart.aspx");
                return;
            }

            LoadOrderSummary();

            // Pre-fill customer info if user is logged in
            LoadCustomerInfo();
        }
    }
    private void LoadOrderSummary()
    {
        List<CartItem> cartItems = CartManager.GetCart();

        // Bind cart items to repeater
        rptOrderItems.DataSource = cartItems;
        rptOrderItems.DataBind();

        // Calculate totals
        subtotal = cartItems.Sum(item => item.LineTotal);
        tax = subtotal * 0.06m; // 6% tax

        // Free shipping over $50
        if (subtotal >= 50)
        {
            shipping = 0;
        }

        total = subtotal + tax + shipping;

        // Display totals
        lblSubtotal.Text = subtotal.ToString("C");
        lblTax.Text = tax.ToString("C");
        lblShipping.Text = shipping == 0 ? "FREE" : shipping.ToString("C");
        lblTotal.Text = total.ToString("C");
    }

    protected void rptOrderItems_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            var item = e.Item.DataItem as CartItem;
            if (item != null)
            {
                var imgProduct = (System.Web.UI.WebControls.Image)e.Item.FindControl("imgProduct");
                if (imgProduct != null)
                {
                    imgProduct.ImageUrl = ResolveUrl(item.ImageUrl ?? string.Empty);
                }
            }
        }
    }

    private void LoadCustomerInfo()
    {
        // If user is logged in, pre-fill their information
        // This is a placeholder - implement based on your authentication system
        if (Session["UserId"] != null)
        {
            // Load customer info from database
            // Example:
            // Customer customer = GetCustomerById(Session["UserId"]);
            // txtFirstName.Text = customer.FirstName;
            // etc.
        }
    }
    protected void btnPlaceOrder_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            try
            {
                // Get cart items
                List<CartItem> cartItems = CartManager.GetCart();

                if (cartItems == null || cartItems.Count == 0)
                {
                    ShowError("Your cart is empty. Please add items before checking out.");
                    return;
                }

                // Create order object
                Order order = new Order
                {
                    OrderId = GenerateOrderId(),
                    OrderDate = DateTime.Now,
                    FirstName = txtFirstName.Text.Trim(),
                    LastName = txtLastName.Text.Trim(),
                    Email = txtEmail.Text.Trim(),
                    Phone = txtPhone.Text.Trim(),
                    Address = txtAddress.Text.Trim(),
                    Address2 = txtAddress2.Text.Trim(),
                    City = txtCity.Text.Trim(),
                    State = ddlState.SelectedValue,
                    ZipCode = txtZipCode.Text.Trim(),
                    PaymentMethod = rblPaymentMethod.SelectedValue,
                    Subtotal = subtotal,
                    Tax = tax,
                    Shipping = shipping,
                    Total = total,
                    Notes = txtNotes.Text.Trim(),
                    Status = "Pending",
                    Items = cartItems
                };

                // Process payment (integrate with payment gateway)
                bool paymentSuccess = ProcessPayment(order);

                if (paymentSuccess)
                {
                    // Save order to database/session
                    SaveOrder(order);

                    // Send confirmation email
                    SendOrderConfirmationEmail(order);

                    // Clear cart
                    CartManager.Clear();

                    // Redirect to confirmation page
                    Response.Redirect(string.Format("~/OrderConfirmation.aspx?orderId={0}", order.OrderId));
                }
                else
                {
                    ShowError("Payment processing failed. Please check your payment information and try again.");
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Checkout error: " + ex.Message);
                ShowError("An error occurred while processing your order. Please try again.");
            }
        }
    }
    private bool ProcessPayment(Order order)
    {
        // TODO: Integrate with actual payment gateway (Stripe, PayPal, etc.)
        // This is a simulation for demo purposes

        string paymentMethod = order.PaymentMethod;

        switch (paymentMethod)
        {
            case "CreditCard":
                // Validate card information
                if (string.IsNullOrEmpty(txtCardName.Text) ||
                    string.IsNullOrEmpty(txtCardNumber.Text) ||
                    string.IsNullOrEmpty(txtExpiryDate.Text) ||
                    string.IsNullOrEmpty(txtCVV.Text))
                {
                    return false;
                }

                // In production: Process card with payment gateway
                // Example: Stripe.Charges.Create(...)
                return true;

            case "PayPal":
                // Redirect to PayPal for payment
                // Store order and redirect
                return true;

            case "BankTransfer":
                // Generate payment instructions
                return true;

            default:
                return false;
        }
    }

    private void SaveOrder(Order order)
    {
        // Save to database
        // In production, use Entity Framework or ADO.NET to save to database

        // For now, save to session for demo
        List<Order> orders = Session["Orders"] as List<Order>;
        if (orders == null)
        {
            orders = new List<Order>();
        }
        orders.Add(order);
        Session["Orders"] = orders;
    }

    private void SendOrderConfirmationEmail(Order order)
    {
        try
        {
            // Use the same email configuration from Contact form
            System.Configuration.Configuration config = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("~");
            string smtpServer = System.Configuration.ConfigurationManager.AppSettings["SmtpServer"];
            string fromEmail = System.Configuration.ConfigurationManager.AppSettings["SmtpUsername"];

            if (string.IsNullOrEmpty(smtpServer)) return;

            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
            mail.From = new System.Net.Mail.MailAddress(fromEmail, "AJs Sweets");
            mail.To.Add(order.Email);
            mail.Subject = string.Format("Order Confirmation - Order #{0}", order.OrderId);
            mail.IsBodyHtml = true;

            // Build email body
            System.Text.StringBuilder emailBody = new System.Text.StringBuilder();
            emailBody.AppendLine("<html><body>");
            emailBody.AppendLine(string.Format("<h2>Thank you for your order, {0}!</h2>", order.FirstName));
            emailBody.AppendLine(string.Format("<p>Your order #{0} has been received and is being processed.</p>", order.OrderId));
            emailBody.AppendLine("<h3>Order Details:</h3>");
            emailBody.AppendLine("<table style='border-collapse: collapse; width: 100%;'>");

            foreach (var item in order.Items)
            {
                emailBody.AppendLine(string.Format("<tr><td>{0} (x{1})</td><td>{2:C}</td></tr>", item.ProductName, item.Quantity, item.LineTotal));
            }

            emailBody.AppendLine("</table>");
            emailBody.AppendLine(string.Format("<p><strong>Total: {0:C}</strong></p>", order.Total));
            emailBody.AppendLine("<p>We'll send you another email when your order ships.</p>");
            emailBody.AppendLine("</body></html>");

            mail.Body = emailBody.ToString();

            // Send email
            System.Net.Mail.SmtpClient smtpClient = new System.Net.Mail.SmtpClient(smtpServer);
            smtpClient.Send(mail);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine("Email error: " + ex.Message);
        }
    }

    private string GenerateOrderId()
    {
        // Generate unique order ID
        return "ORD" + DateTime.Now.ToString("yyyyMMddHHmmss") + new Random().Next(1000, 9999);
    }

    private void ShowError(string message)
    {
        pnlError.Visible = true;
        lblError.Text = message;
    }


    // Order class definition
    [Serializable]
    public class Order
    {
        public string OrderId { get; set; }
        public DateTime OrderDate { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public string Address2 { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string ZipCode { get; set; }
        public string PaymentMethod { get; set; }
        public decimal Subtotal { get; set; }
        public decimal Tax { get; set; }
        public decimal Shipping { get; set; }
        public decimal Total { get; set; }
        public string Notes { get; set; }
        public string Status { get; set; }
        public List<CartItem> Items { get; set; }
    }
}
