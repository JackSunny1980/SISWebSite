using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Web.Configuration;

public partial class Middle : System.Web.UI.Page {
	protected override void OnPreInit(EventArgs e) {
		PagesSection ps = (PagesSection)ConfigurationManager.GetSection("system.web/pages");
		if (!String.IsNullOrEmpty(ps.Theme)) Theme = ps.Theme;
		Console.WriteLine(ps.Theme);
		base.OnPreInit(e);
	}
}