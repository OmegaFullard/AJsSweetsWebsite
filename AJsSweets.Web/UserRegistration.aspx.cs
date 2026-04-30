using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Security.Cryptography;

public partial class UserRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string fullName = TextBox1.Text.Trim();
        string phone = TextBox3.Text.Trim();
        string email = TextBox4.Text.Trim();
        string userName = TextBox8.Text.Trim();
        string confirmPassword = TextBox9.Text;
        string password = TextBox10.Text;

        if (string.IsNullOrWhiteSpace(fullName) ||
            string.IsNullOrWhiteSpace(email) ||
            string.IsNullOrWhiteSpace(userName) ||
            string.IsNullOrWhiteSpace(password) ||
            string.IsNullOrWhiteSpace(confirmPassword))
        {
            Label1.Text = "All required fields must be entered.";
            return;
        }

        if (!password.Equals(confirmPassword))
        {
            Label1.Text = "Password and Confirm Password do not match.";
            return;
        }

        string firstName = fullName;
        string lastName = string.Empty;
        int spaceIndex = fullName.IndexOf(' ');
        if (spaceIndex > 0)
        {
            firstName = fullName.Substring(0, spaceIndex).Trim();
            lastName = fullName.Substring(spaceIndex + 1).Trim();
        }

        string passwordHash = HashPassword(password);
        string connectionString = ConfigurationManager.ConnectionStrings["AJs_SweetsConnectionString"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            conn.Open();

            using (SqlCommand existsCmd = new SqlCommand(
                "SELECT COUNT(1) FROM dbo.CustomerUsers WHERE UserName = @UserName OR Email = @Email", conn))
            {
                existsCmd.Parameters.AddWithValue("@UserName", userName);
                existsCmd.Parameters.AddWithValue("@Email", email);

                int exists = Convert.ToInt32(existsCmd.ExecuteScalar());
                if (exists > 0)
                {
                    Label1.Text = "User ID or Email already exists.";
                    return;
                }
            }

            using (SqlCommand insertCmd = new SqlCommand(
                @"INSERT INTO dbo.CustomerUsers
                  (UserName, Email, PasswordHash, FirstName, LastName, Phone, IsActive, CreatedUtc)
                  VALUES
                  (@UserName, @Email, @PasswordHash, @FirstName, @LastName, @Phone, 1, GETUTCDATE())", conn))
            {
                insertCmd.Parameters.AddWithValue("@UserName", userName);
                insertCmd.Parameters.AddWithValue("@Email", email);
                insertCmd.Parameters.AddWithValue("@PasswordHash", passwordHash);
                insertCmd.Parameters.AddWithValue("@FirstName", firstName);
                insertCmd.Parameters.AddWithValue("@LastName", lastName);
                insertCmd.Parameters.AddWithValue("@Phone", phone);

                insertCmd.ExecuteNonQuery();
            }
        }

        Label1.Text = "Registration successful.";
        TextBox9.Text = string.Empty;
        TextBox10.Text = string.Empty;
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