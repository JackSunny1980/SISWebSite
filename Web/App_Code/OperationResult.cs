using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///OperationResult 的摘要说明
/// </summary>
public class OperationResult {


	public String requestID {
		get;
		set;
	}

	public bool returnFlag {
		get;
		set;
	}

	public String returnCode {
		get;
		set;
	}

	public String returnMsg {
		get;
		set;
	}
}