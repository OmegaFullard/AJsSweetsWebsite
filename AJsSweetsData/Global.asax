<%@ Application Language="C#" %>
<%@ Import Namespace="System" %>
<%@ Import Namespace="System.Collections.Generic" %>
<%@ Import Namespace="System.ComponentModel.DataAnnotations" %>
<%@ Import Namespace="System.Data.Entity" %>
<%@ Import Namespace="System.Data.Objects" %>
<%@ Import Namespace="System.Linq" %>
<%@ Import Namespace="System.Reflection" %>
<%@ Import Namespace="System.Web.Compilation" %>
<%@ Import Namespace="System.Web.Routing" %>
<%@ Import Namespace="System.Web.DynamicData" %>
<%@ Import Namespace="System.Web.UI" %>

<script RunAt="server">
    private static MetaModel s_defaultModel = new MetaModel();
    public static MetaModel DefaultModel {
        get {
            return s_defaultModel;
        }
    }

    private static IEnumerable<Type> GetLoadableTypes(Assembly assembly) {
        try {
            return assembly.GetTypes();
        }
        catch (ReflectionTypeLoadException ex) {
            return ex.Types.Where(t => t != null);
        }
    }

    private static void RegisterDataModel() {
        var referencedAssemblies = BuildManager.GetReferencedAssemblies().Cast<Assembly>();

        var dbContextType = referencedAssemblies
            .SelectMany(GetLoadableTypes)
            .FirstOrDefault(t =>
                t != null &&
                !t.IsAbstract &&
                typeof(DbContext).IsAssignableFrom(t) &&
                t.GetConstructor(Type.EmptyTypes) != null);

        if (dbContextType != null) {
            DefaultModel.RegisterContext(dbContextType, new ContextConfiguration() { ScaffoldAllTables = true });
            return;
        }

        var objectContextType = referencedAssemblies
            .SelectMany(GetLoadableTypes)
            .FirstOrDefault(t =>
                t != null &&
                !t.IsAbstract &&
                typeof(ObjectContext).IsAssignableFrom(t) &&
                t.GetConstructor(Type.EmptyTypes) != null);

        if (objectContextType != null) {
            DefaultModel.RegisterContext(objectContextType, new ContextConfiguration() { ScaffoldAllTables = true });
        }
    }

    public static void RegisterRoutes(RouteCollection routes) {
        RegisterDataModel();

        routes.Add(new DynamicDataRoute("{table}/{action}.aspx") {
            Constraints = new RouteValueDictionary(new { action = "List|Details|Edit|Insert" }),
            Model = DefaultModel
        });

        // ...existing combined-page routes left commented intentionally...
    }

    private static void RegisterScripts() {
        ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
        {
            Path = "~/Scripts/jquery-1.7.1.min.js",
            DebugPath = "~/Scripts/jquery-1.7.1.js",
            CdnPath = "https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.7.1.min.js",
            CdnDebugPath = "https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.7.1.js",
            CdnSupportsSecureConnection = true,
            LoadSuccessExpression = "window.jQuery"
        });
    }
    
    void Application_Start(object sender, EventArgs e) {
        RegisterRoutes(RouteTable.Routes);
        RegisterScripts();
    }

</script>
