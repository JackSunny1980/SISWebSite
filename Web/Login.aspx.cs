using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using BusinessLogic.Admin;
using System.Text.RegularExpressions;
using DataEntity.Admin;

public partial class Login : System.Web.UI.Page, ICallbackEventHandler {

	protected string ClientCallback;
	private string callBackResult = "";

	protected override void OnLoad(EventArgs e) {
		base.OnLoad(e);
		if (!IsPostBack) {
			ClientCallback = ClientScript.GetCallbackEventReference(this, "argument", "processCallback", "null");
		}
		//if (Request.IsAuthenticated) Server.Transfer(FormsAuthentication.DefaultUrl);
		//String head_oam_id = Request.Headers.Get("OAM_ID");                                 
		//String local_oam_id = "";
		//if (!String.IsNullOrEmpty(head_oam_id) && (local_oam_id != head_oam_id)) {
		//    //跳转到错误页面
		//}
	}

	protected override void OnInit(EventArgs e) {
		base.OnInit(e);
	}


	protected void btnOk_Click(Object sender, EventArgs e) {
		FormsAuthentication.SetAuthCookie("Admin", true);
		Server.Transfer(FormsAuthentication.DefaultUrl);

	}


	private void ShowMessage(string message) {
		ScriptManager.RegisterClientScriptBlock(this, GetType(), "Information", "alert('" + message + "')", true);
	}

	protected void btnAnonymous_Click(object sender, EventArgs e) {
		FormsAuthentication.SetAuthCookie("Anonymous", true);
		Server.Transfer(FormsAuthentication.DefaultUrl);
		WriteLoginLog("Anonymous");
	}



	#region ICallbackEventHandler 成员

	public string GetCallbackResult() {
		return callBackResult;
	}

	public void RaiseCallbackEvent(string eventArgument) {
		//匿名用户登录
		if (String.IsNullOrEmpty(eventArgument)) {
			FormsAuthentication.SetAuthCookie("Anonymous", true);
			callBackResult = FormsAuthentication.DefaultUrl;
			WriteLoginLog("Anonymous");
			return;
		}
		String[] arguments = eventArgument.Split(',');
		String userAccount = arguments[0];
		String password = FormsAuthentication.HashPasswordForStoringInConfigFile(arguments[1], "MD5");
		using (SysUserBusiness user = new SysUserBusiness()) {
			bool passed = user.Authentication(userAccount, password);
			if (passed) {
				FormsAuthentication.SetAuthCookie(userAccount, true);
				HttpCookie authCookie = FormsAuthentication.GetAuthCookie(userAccount, true);
				FormsAuthenticationTicket ticket = FormsAuthentication.Decrypt(authCookie.Value);
				FormsAuthenticationTicket newTicket = new FormsAuthenticationTicket(ticket.Version, ticket.Name, ticket.IssueDate, ticket.Expiration, ticket.IsPersistent, "");
				authCookie.Value = FormsAuthentication.Encrypt(newTicket);
				Response.Cookies.Add(authCookie);
				callBackResult = FormsAuthentication.DefaultUrl;
				WriteLoginLog(userAccount);
			}
		}
	}

	private void WriteLoginLog(String UserAccount) {
		UserLoginLogEntity log = new UserLoginLogEntity();
		log.Username = UserAccount;
		log.Ip = GetUserIp();
		log.Action = "登录SIS系统";
		log.ActionDate = DateTime.Now;
		log.Remark = "";
	}

	/// <summary>
	/// 获取用户真实IP地址
	/// </summary>
	/// <returns></returns>
	public  string GetUserIp() {
		string ip = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
		if (ip == null || ip.Length == 0 || ip.ToLower().IndexOf("unknown") > -1) {
			ip = Request.ServerVariables["REMOTE_ADDR"];
		}
		else {
			if (ip.IndexOf(',') > -1) {
				ip = ip.Substring(0, ip.IndexOf(','));
			}
			if (ip.IndexOf(';') > -1) {
				ip = ip.Substring(0, ip.IndexOf(';'));
			}
		}
		Regex regex = new Regex("[^0-9.]");
		if (ip == null || ip.Length == 0 || regex.IsMatch(ip)) {
			ip = HttpContext.Current.Request.UserHostAddress;
			if (ip == null || ip.Length == 0 || regex.IsMatch(ip)) {
				ip = "0.0.0.0";
			}
		}
		return ip;	
	}


	#endregion

}