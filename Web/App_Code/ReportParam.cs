using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// 报表参数
/// </summary>
public class ReportParam {

	public String ProjectRegion {
		get;
		set;
	}

	public String TradeCode {
		get;
		set;
	}

	public String ProjectKind {
		get;
		set;
	}

	public String ManageCategory {
		get;
		set;
	}

	public String EnvApprovalFileNo {
		get;
		set;
	}

	public String ProjectPhase {
		get;
		set;
	}

	public DateTime? StartApprovalDate {
		get;
		set;
	}

	public DateTime? EndApprovalDate {
		get;
		set;
	}
}
