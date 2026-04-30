using System;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //System.Collections.IList visibleTables = global.DefaultModel.VisibleTables;
        //if (visibleTables.Count == 0)
        //{
        //    throw new InvalidOperationException("There are no accessible tables. Make sure that at least one data model is registered in Global.asax and scaffolding is enabled or implement custom pages.");
        //}
        //Menu1.DataSource = visibleTables;
        //Menu1.DataBind();
    }
}
// DefaultModel.RegisterContext(() =>
// {
//    return ((IObjectContextAdapter)new YourDataContextType()).ObjectContext;
// }, new ContextConfiguration() { ScaffoldAllTables = false });
