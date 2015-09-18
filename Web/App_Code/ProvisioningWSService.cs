using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using DataEntity.Admin;
using BusinessLogic.Admin;

/// <summary>
///ProvisioningWSService 的摘要说明
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
//若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消对下行的注释。 
// [System.Web.Script.Services.ScriptService]
public class ProvisioningWSService : System.Web.Services.WebService {
	private EmployeeBusiness m_Business = new EmployeeBusiness();
	

	[WebMethod]
	public OperationResult addAccount(String requestID, UserEntity userEntity, DateTime timeStamp) {
		String ErrorMsg = "";
		OperationResult Result = new OperationResult();
		Result.requestID = requestID;
		Result.returnFlag = !m_Business.SaveAccount(userEntity, out ErrorMsg);
		Result.returnMsg = ErrorMsg;
		Result.returnCode = "0";
		if (Result.returnFlag) Result.returnCode = "1";
		return Result;
	}

	[WebMethod]
	public OperationResult modifyAccount(String requestID, UserEntity userEntity, DateTime timeStamp) {
		String ErrorMsg = "";
		OperationResult Result = new OperationResult();
		Result.requestID = requestID;
		Result.returnFlag = !m_Business.SaveAccount(userEntity, out ErrorMsg);
		Result.returnMsg = ErrorMsg;
		Result.returnCode = "0";
		if (Result.returnFlag) Result.returnCode = "1";
		return Result;
	}

	[WebMethod]
	public OperationResult deleteAccount(String requestID, String userId, DateTime timeStamp) {
		String ErrorMsg = "";
		OperationResult Result = new OperationResult();
		Result.requestID = requestID;
		Result.returnFlag = !m_Business.DeleteAccount(userId, out ErrorMsg);
		Result.returnMsg = ErrorMsg;
		Result.returnCode = "0";
		if (Result.returnFlag) Result.returnCode = "1";
		return Result;
	}

	[WebMethod]
	public OperationResult suspendAccount(String requestID, String userId, DateTime timeStamp) {
		String ErrorMsg = "";
		OperationResult Result = new OperationResult();
		Result.requestID = requestID;
		Result.returnFlag = !m_Business.SuspendAccount(userId, out ErrorMsg);
		Result.returnMsg = ErrorMsg;
		Result.returnCode = "0";
		if (Result.returnFlag) Result.returnCode = "1";
		return Result;
	}

	[WebMethod]
	public OperationResult restoreAccount(String requestID, String userId, DateTime timeStamp) {
		String ErrorMsg = "";
		OperationResult Result = new OperationResult();
		Result.requestID = requestID;
		Result.returnFlag = !m_Business.RestoreAccount(userId, out ErrorMsg);
		Result.returnMsg = ErrorMsg;
		Result.returnCode = "0";
		if (Result.returnFlag) Result.returnCode = "1";
		return Result;
	}

	[WebMethod]
	public OperationResult searchAccount(String requestID, UserEntity userEntity, DateTime timeStamp) {
		//String ErrorMsg = "";
		OperationResult Result = new OperationResult();
		//Result.requestID = requestID;
		//Result.returnFlag = !m_Business.DeleteAccount(userId, out ErrorMsg);
		//Result.returnMsg = ErrorMsg;
		//Result.returnCode = "0";
		//if (Result.returnFlag) Result.returnCode = "1";
		return Result;
	}

}
