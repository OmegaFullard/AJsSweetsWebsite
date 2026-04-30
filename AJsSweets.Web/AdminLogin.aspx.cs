using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Web.Security;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnAdminLogin_Click(object sender, EventArgs e)
    {
        lblAdminLoginMessage.Text = string.Empty;

        string adminId = RadTextBox1.Text.Trim();
        string password = RadTextBox2.Text;

        if (string.IsNullOrWhiteSpace(adminId) || string.IsNullOrWhiteSpace(password))
        {
            lblAdminLoginMessage.Text = "Enter Admin ID and Password.";
            return;
        }

        string connectionString = ConfigurationManager.ConnectionStrings["AJs_SweetsConnectionString"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connectionString))
        using (SqlCommand cmd = new SqlCommand("SELECT PasswordHash, IsActive FROM dbo.AdminUsers WHERE AdminId = @AdminId", conn))
        {
            cmd.Parameters.AddWithValue("@AdminId", adminId);
            conn.Open();

            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                if (!reader.Read())
                {
                    lblAdminLoginMessage.Text = "Invalid credentials.";
                    return;
                }

                string storedHash = reader["PasswordHash"].ToString();
                bool isActive = Convert.ToBoolean(reader["IsActive"]);

                if (!isActive)
                {
                    lblAdminLoginMessage.Text = "Admin account is inactive.";
                    return;
                }

                if (!VerifyPassword(password, storedHash))
                {
                    lblAdminLoginMessage.Text = "Invalid credentials.";
                    return;
                }
            }
        }

        Session["AdminId"] = adminId;
        FormsAuthentication.SetAuthCookie(adminId, false);
        Response.Redirect("EmployeeMgt.aspx");
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