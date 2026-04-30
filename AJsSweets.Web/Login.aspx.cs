using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Web.Security;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        lblLoginMessage.Text = string.Empty;

        string userName = txtUserName.Text.Trim();
        string password = txtPassword.Text;

        if (string.IsNullOrWhiteSpace(userName) || string.IsNullOrWhiteSpace(password))
        {
            lblLoginMessage.Text = "Enter username and password.";
            return;
        }

        if (ddlPortal.SelectedValue == "Admin")
        {
            Response.Redirect("AdminLogin.aspx");
            return;
        }

        string connectionString = ConfigurationManager.ConnectionStrings["AJs_SweetsConnectionString"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connectionString))
        using (SqlCommand cmd = new SqlCommand("SELECT PasswordHash, IsActive FROM dbo.CustomerUsers WHERE UserName = @UserName", conn))
        {
            cmd.Parameters.AddWithValue("@UserName", userName);
            conn.Open();

            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                if (!reader.Read())
                {
                    lblLoginMessage.Text = "Invalid credentials.";
                    return;
                }

                string storedHash = reader["PasswordHash"].ToString();
                bool isActive = Convert.ToBoolean(reader["IsActive"]);

                if (!isActive)
                {
                    lblLoginMessage.Text = "Account is inactive.";
                    return;
                }

                if (!VerifyPassword(password, storedHash))
                {
                    lblLoginMessage.Text = "Invalid credentials.";
                    return;
                }
            }
        }

        Session["CustomerUserName"] = userName;
        FormsAuthentication.SetAuthCookie(userName, false);
        Response.Redirect("Default.aspx");
    }

    private static bool VerifyPassword(string password, string storedValue)
    {
        if (string.IsNullOrWhiteSpace(storedValue) || storedValue.IndexOf(':') < 0)
            return false;

        string[] parts = storedValue.Split(':');
        if (parts.Length != 2)
            return false;

        byte[] salt = Convert.FromBase64String(parts[0]);
        byte[] expectedHash = Convert.FromBase64String(parts[1]);

        using (var pbkdf2 = new Rfc2898DeriveBytes(password, salt, 10000))
        {
            byte[] actualHash = pbkdf2.GetBytes(32);
            if (actualHash.Length != expectedHash.Length) return false;

            for (int i = 0; i < actualHash.Length; i++)
            {
                if (actualHash[i] != expectedHash[i]) return false;
            }
            return true;
        }
    }
}