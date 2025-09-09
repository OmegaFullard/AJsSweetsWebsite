using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Http.Description;
using Telerik.Reporting.Cache.File;
using Telerik.Reporting.Data.Schema;
using Telerik.Reporting.JsonSerialization;
using Telerik.Reporting.Services;
using Telerik.WebReportDesigner.Services;
using Telerik.WebReportDesigner.Services.Controllers;

namespace Telerik.Web.Controllers
{
    [Route("api/reportdesigner")]
    public class ReportDesignerController : ReportDesignerControllerBase
    {
        static ReportServiceConfiguration configurationInstance;
        static ReportDesignerServiceConfiguration designerConfigurationInstance;

        static ReportDesignerController()
        {
            //This is the folder that contains the report definitions
            //In this case this is the Reports folder
            var appPath = HttpContext.Current.Server.MapPath("~/");
            var reportsPath = Path.Combine(appPath, "Reports");

            //Add report source resolver for trdx/trdp report definitions, 
            //then add resolver for class report definitions as fallback resolver; 
            //finally create the resolver and use it in the ReportServiceConfiguration instance.
            var resolver = new UriReportSourceResolver(reportsPath);

            //Setup the ReportServiceConfiguration
            configurationInstance = new ReportServiceConfiguration
            {
                HostAppId = "WebReportDesignerApp",
                Storage = new FileStorage(),
                ReportSourceResolver = resolver
            };

            designerConfigurationInstance = new ReportDesignerServiceConfiguration
            {
                DefinitionStorage = new FileDefinitionStorage(reportsPath, new[] { "Resources", "Shared Data Sources" }),
                ResourceStorage = new ResourceStorage(Path.Combine(reportsPath, "Resources")),
                SharedDataSourceStorage = new FileSharedDataSourceStorage(Path.Combine(reportsPath, "Shared Data Sources")),
                SettingsStorage = new FileSettingsStorage(Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData), "Telerik Reporting"))                
            };
        }

        public ReportDesignerController()
        {
            //Initialize the service configuration
            this.ReportServiceConfiguration = configurationInstance;
            this.ReportDesignerServiceConfiguration = designerConfigurationInstance;
        }
    }
}