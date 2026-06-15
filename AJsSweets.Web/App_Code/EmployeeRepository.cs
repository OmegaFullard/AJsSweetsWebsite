using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public sealed class EmployeeRepository
{
    private readonly string _connectionString;

    public EmployeeRepository()
    {
        _connectionString = ConfigurationManager.ConnectionStrings["AJs_SweetsConnectionString"].ConnectionString;
    }

    public DataTable GetEmployees(string searchText)
    {
        var table = new DataTable();

        using (var connection = new SqlConnection(_connectionString))
        using (var command = new SqlCommand(@"
SELECT
    [EmployeeID],
    [First_Name],
    [Last_Name],
    [Email_Address],
    [Phone],
    [Title],
    [Salary],
    [Still_Employed]
FROM [Employees]
WHERE
    (@SearchText IS NULL OR @SearchText = ''
     OR [First_Name] LIKE '%' + @SearchText + '%'
     OR [Last_Name] LIKE '%' + @SearchText + '%'
     OR [Email_Address] LIKE '%' + @SearchText + '%'
     OR [Title] LIKE '%' + @SearchText + '%')
ORDER BY [Last_Name], [First_Name];", connection))
        {
            command.Parameters.AddWithValue("@SearchText", (object)(searchText ?? string.Empty));

            using (var adapter = new SqlDataAdapter(command))
            {
                adapter.Fill(table);
            }
        }

        return table;
    }
}
