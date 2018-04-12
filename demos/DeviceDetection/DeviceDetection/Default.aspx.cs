using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Telerik.Web.UI;
using Telerik.Web.Device.Detection;

public partial class DefaultForm : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var screenDimensions = Detector.GetScreenDimensions(this.Request.UserAgent);
        var screenSize = Detector.GetScreenSize(this.Request.UserAgent);

        if(screenSize < DeviceScreenSize.Large)
        {
            RadGrid1.Visible = false;
        }
    }

    protected void RadGrid1_NeedDataSource(object sender, GridNeedDataSourceEventArgs e)
    {
        RadGrid1.DataSource = new string[] { "one", "two", "three" };
    }
}
