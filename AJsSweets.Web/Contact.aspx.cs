using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
        if (!IsPostBack)
        {
            // Initialize form if needed
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            try
            {
                // Get form data
                string name = txtName.Text.Trim();
                string email = txtEmail.Text.Trim();
                string phone = txtPhone.Text.Trim();
                string subject = ddlSubject.SelectedValue;
                string message = txtMessage.Text.Trim();

                // Send email
                bool emailSent = SendContactEmail(name, email, phone, subject, message);

                if (emailSent)
                {
                    // Show success message
                    pnlSuccess.Visible = true;
                    pnlError.Visible = false;

                    // Clear form
                    ClearForm();
                }
                else
                {
                    // Show error message
                    pnlSuccess.Visible = false;
                    pnlError.Visible = true;
                    lblError.Text = "Failed to send email. Please try again later or contact us directly.";
                }
            }
            catch (Exception ex)
            {
                // Log error (you should implement proper logging)
                System.Diagnostics.Debug.WriteLine(string.Format("Error sending contact form: {0}", ex.Message));

                // Show error message
                pnlSuccess.Visible = false;
                pnlError.Visible = true;
                lblError.Text = "An error occurred while sending your message. Please try again later.";
            }
        }
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        ClearForm();
        pnlSuccess.Visible = false;
        pnlError.Visible = false;
    }

    private void ClearForm()
    {
        txtName.Text = string.Empty;
        txtEmail.Text = string.Empty;
        txtPhone.Text = string.Empty;
        ddlSubject.SelectedIndex = 0;
        txtMessage.Text = string.Empty;
    }

    private bool SendContactEmail(string name, string email, string phone, string subject, string message)
    {
        try
        {
            // Get email configuration from Web.config
            string smtpServer = System.Configuration.ConfigurationManager.AppSettings["SmtpServer"];
            string smtpPortStr = System.Configuration.ConfigurationManager.AppSettings["SmtpPort"];
            string smtpUsername = System.Configuration.ConfigurationManager.AppSettings["SmtpUsername"];
            string smtpPassword = System.Configuration.ConfigurationManager.AppSettings["SmtpPassword"];
            string smtpEnableSslStr = System.Configuration.ConfigurationManager.AppSettings["SmtpEnableSsl"];
            string recipientEmail = System.Configuration.ConfigurationManager.AppSettings["ContactFormRecipient"];

            // Validate configuration
            if (string.IsNullOrEmpty(smtpServer) || string.IsNullOrEmpty(recipientEmail))
            {
                throw new Exception("Email configuration is missing. Please check Web.config.");
            }

            int smtpPort = !string.IsNullOrEmpty(smtpPortStr) ? int.Parse(smtpPortStr) : 587;
            bool smtpEnableSsl = !string.IsNullOrEmpty(smtpEnableSslStr) ? bool.Parse(smtpEnableSslStr) : true;

            // Create email message
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress(smtpUsername, "AJ's Sweets Contact Form");
            mail.To.Add(recipientEmail);
            mail.Subject = string.Format("Contact Form: {0}", subject);
            mail.IsBodyHtml = true;

            // Build email body
            StringBuilder emailBody = new StringBuilder();
            emailBody.AppendLine("<html><body>");
            emailBody.AppendLine("<h2>New Contact Form Submission</h2>");
            emailBody.AppendLine("<table style='border-collapse: collapse; width: 100%; max-width: 600px;'>");
            emailBody.AppendLine(string.Format("<tr><td style='padding: 10px; border: 1px solid #ddd; font-weight: bold;'>Name:</td><td style='padding: 10px; border: 1px solid #ddd;'>{0}</td></tr>", name));
            emailBody.AppendLine(string.Format("<tr><td style='padding: 10px; border: 1px solid #ddd; font-weight: bold;'>Email:</td><td style='padding: 10px; border: 1px solid #ddd;'><a href='mailto:{0}'>{0}</a></td></tr>", email));

            if (!string.IsNullOrEmpty(phone))
            {
                emailBody.AppendLine(string.Format("<tr><td style='padding: 10px; border: 1px solid #ddd; font-weight: bold;'>Phone:</td><td style='padding: 10px; border: 1px solid #ddd;'>{0}</td></tr>", phone));
            }

            emailBody.AppendLine(string.Format("<tr><td style='padding: 10px; border: 1px solid #ddd; font-weight: bold;'>Subject:</td><td style='padding: 10px; border: 1px solid #ddd;'>{0}</td></tr>", subject));
            emailBody.AppendLine(string.Format("<tr><td style='padding: 10px; border: 1px solid #ddd; font-weight: bold;'>Date:</td><td style='padding: 10px; border: 1px solid #ddd;'>{0:yyyy-MM-dd HH:mm:ss}</td></tr>", DateTime.Now));
            emailBody.AppendLine("</table>");
            emailBody.AppendLine("<br/>");
            emailBody.AppendLine("<h3>Message:</h3>");
            emailBody.AppendLine(string.Format("<div style='padding: 15px; background-color: #f5f5f5; border-left: 4px solid #4CAF50;'>{0}</div>", message.Replace("\n", "<br/>")));
            emailBody.AppendLine("<br/>");
            emailBody.AppendLine("<hr/>");
            emailBody.AppendLine("<p style='color: #666; font-size: 12px;'>This email was sent from the Pipe Dreams Developers contact form.</p>");
            emailBody.AppendLine("</body></html>");

            mail.Body = emailBody.ToString();

            // Set reply-to address to the user's email
            mail.ReplyToList.Add(new MailAddress(email, name));

            // Configure SMTP client
            SmtpClient smtpClient = new SmtpClient(smtpServer, smtpPort);
            smtpClient.EnableSsl = smtpEnableSsl;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Credentials = new NetworkCredential(smtpUsername, smtpPassword);
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;

            // Send email
            smtpClient.Send(mail);

            // Optionally send confirmation email to user
            SendConfirmationEmail(name, email, subject);

            return true;
        }
        catch (Exception ex)
        {
            // Log the error (implement proper logging)
            System.Diagnostics.Debug.WriteLine(string.Format("Error sending email: {0}", ex.Message));
            return false;
        }
    }

    private void SendConfirmationEmail(string name, string email, string subject)
    {
        try
        {
            // Get email configuration from Web.config
            string smtpServer = ConfigurationManager.AppSettings["SmtpServer"];
            string smtpPortStr = ConfigurationManager.AppSettings["SmtpPort"];
            string smtpUsername = ConfigurationManager.AppSettings["SmtpUsername"];
            string smtpPassword = ConfigurationManager.AppSettings["SmtpPassword"];
            string smtpEnableSslStr = ConfigurationManager.AppSettings["SmtpEnableSsl"];

            int smtpPort = !string.IsNullOrEmpty(smtpPortStr) ? int.Parse(smtpPortStr) : 587;
            bool smtpEnableSsl = !string.IsNullOrEmpty(smtpEnableSslStr) ? bool.Parse(smtpEnableSslStr) : true;

            // Create confirmation email
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress(smtpUsername, "Pipe Dreams Developers");
            mail.To.Add(email);
            mail.Subject = "Thank you for contacting Pipe Dreams Developers";
            mail.IsBodyHtml = true;

            // Build confirmation email body
            StringBuilder emailBody = new StringBuilder();
            emailBody.AppendLine("<html><body>");
            emailBody.AppendLine(string.Format("<h2>Hello {0},</h2>", name));
            emailBody.AppendLine("<p>Thank you for contacting Pipe Dreams Developers. We have received your message regarding:</p>");
            emailBody.AppendLine(string.Format("<p style='padding: 15px; background-color: #f5f5f5; border-left: 4px solid #4CAF50;'><strong>{0}</strong></p>", subject));
            emailBody.AppendLine("<p>Our team will review your inquiry and respond within 1-2 business days.</p>");
            emailBody.AppendLine("<p>If you have any urgent matters, please call us at <strong>267.888.1234</strong>.</p>");
            emailBody.AppendLine("<br/>");
            emailBody.AppendLine("<p>Best regards,<br/><strong>Pipe Dreams Developers Team</strong></p>");
            emailBody.AppendLine("<hr/>");
            emailBody.AppendLine("<p style='color: #666; font-size: 12px;'>1234 Dreams Way Suite 15, Royal City, PA 19106</p>");
            emailBody.AppendLine("</body></html>");

            mail.Body = emailBody.ToString();

            // Configure SMTP client
            SmtpClient smtpClient = new SmtpClient(smtpServer, smtpPort);
            smtpClient.EnableSsl = smtpEnableSsl;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Credentials = new NetworkCredential(smtpUsername, smtpPassword);
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;

            // Send confirmation email
            smtpClient.Send(mail);
        }
        catch (Exception ex)
        {
            // Log error but don't fail the main process
            System.Diagnostics.Debug.WriteLine(string.Format("Error sending confirmation email: {0}", ex.Message));
        }
    }
}