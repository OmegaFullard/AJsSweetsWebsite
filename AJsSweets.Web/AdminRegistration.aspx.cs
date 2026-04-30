using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Security.Cryptography;

public partial class AdminRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        lblMessage.ForeColor = System.Drawing.Color.Red;
        lblMessage.Text = string.Empty;

        string adminId = txtAdminId.Text.Trim();
        string fullName = txtFullName.Text.Trim();
        string email = txtEmail.Text.Trim();
        string password = txtPassword.Text;
        string confirmPassword = txtConfirmPassword.Text;

        if (string.IsNullOrWhiteSpace(adminId) ||
            string.IsNullOrWhiteSpace(fullName) ||
            string.IsNullOrWhiteSpace(email) ||
            string.IsNullOrWhiteSpace(password) ||
            string.IsNullOrWhiteSpace(confirmPassword))
        {
            lblMessage.Text = "All fields are required.";
            return;
        }

        if (!password.Equals(confirmPassword))
        {
            lblMessage.Text = "Password and Confirm Password do not match.";
            return;
        }

        string connectionString = ConfigurationManager.ConnectionStrings["AJs_SweetsConnectionString"].ConnectionString;
        string passwordHash = HashPassword(password);

        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            conn.Open();

            using (SqlCommand existsCmd = new SqlCommand(
                "SELECT COUNT(1) FROM dbo.AdminUsers WHERE AdminId = @AdminId OR Email = @Email", conn))
            {
                existsCmd.Parameters.AddWithValue("@AdminId", adminId);
                existsCmd.Parameters.AddWithValue("@Email", email);

                int exists = Convert.ToInt32(existsCmd.ExecuteScalar());
                if (exists > 0)
                {
                    lblMessage.Text = "Admin ID or Email already exists.";
                    return;
                }
            }

            using (SqlCommand insertCmd = new SqlCommand(
                @"INSERT INTO dbo.AdminUsers (AdminId, FullName, Email, PasswordHash, IsSuperAdmin, IsActive, CreatedUtc)
                  VALUES (@AdminId, @FullName, @Email, @PasswordHash, 0, 1, GETUTCDATE())", conn))
            {
                insertCmd.Parameters.AddWithValue("@AdminId", adminId);
                insertCmd.Parameters.AddWithValue("@FullName", fullName);
                insertCmd.Parameters.AddWithValue("@Email", email);
                insertCmd.Parameters.AddWithValue("@PasswordHash", passwordHash);

                insertCmd.ExecuteNonQuery();
            }
        }

        lblMessage.ForeColor = System.Drawing.Color.Green;
        lblMessage.Text = "Admin account created successfully.";
        txtPassword.Text = string.Empty;
        txtConfirmPassword.Text = string.Empty;
    }

    private static string HashPassword(string password)
    {
        byte[] salt = new byte[16];
        using (var rng = new RNGCryptoServiceProvider())
        {
            rng.GetBytes(salt);
        }

        using (var pbkdf2 = new Rfc2898DeriveBytes(password, salt, 10000))
        {
            byte[] hash = pbkdf2.GetBytes(32);
            return Convert.ToBase64String(salt) + ":" + Convert.ToBase64String(hash);
        }
    }
}