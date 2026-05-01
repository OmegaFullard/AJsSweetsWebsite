using System;

public partial class EmployeeDirectory : System.Web.UI.Page
{
    private readonly EmployeeRepository _repository = new EmployeeRepository();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindEmployees();
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        BindEmployees();
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtSearch.Text = string.Empty;
        BindEmployees();
    }

    private void BindEmployees()
    {
        try
        {
            pnlError.Visible = false;
            var employees = _repository.GetEmployees(txtSearch.Text.Trim());
            gvEmployees.DataSource = employees;
            gvEmployees.DataBind();
        }
        catch (Exception ex)
        {
            pnlError.Visible = true;
            pnlError.Controls.Clear();
            pnlError.Controls.Add(new System.Web.UI.LiteralControl("Unable to load employees. " + ex.Message));
        }
    }
}
