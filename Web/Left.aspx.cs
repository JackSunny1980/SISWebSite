using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogic.Admin;
using System.Text;
using DataEntity.Admin;

public partial class Left : BasePage {

	#region 私有成员

	private ModuleBusiness m_Module;
	private SysUserBusiness m_User;
	//private readonly 

	#endregion

	#region 重写方法

	protected override void OnLoad(EventArgs e) {
		base.OnLoad(e);
		if (!IsPostBack) {
			BuildMenu();
			//BuildTreeMenu("Root");
		}
	}

	protected override void OnInit(EventArgs e) {
		m_Module = new ModuleBusiness();
		m_User = new SysUserBusiness();
		base.OnInit(e);
	}

	protected override void OnUnload(EventArgs e) {
		m_Module.Dispose();
		m_Module = null;
		m_User.Dispose();
		m_User = null;
		base.OnUnload(e);
	}

	#endregion

	#region 私有方法

	private void BuildMenu() {
		StringBuilder sb = new StringBuilder();
		List<ModuleEntity> ModuleList, SubModuleList = new List<ModuleEntity>(); ;
		//SubModuleList = new List<ModuleEntity>();
		if (IsAdmin) {
			ModuleList = m_Module.GetModules("Root");
		}
		else {
			ModuleList = m_User.GetUserModules(UserNo, "Root");
		}
		sb.AppendLine("<div id=\"accordion\" style=\"margin: 0 auto; width: 240px;\">");
		foreach (ModuleEntity Module in ModuleList) {
			if (IsAdmin) {
				SubModuleList = m_Module.GetModules(Module.ModuleNo);
			}
			else {
				SubModuleList = m_User.GetUserModules(UserNo, Module.ModuleNo);
			}
			if (SubModuleList.Count > 0) {
				sb.AppendLine("<div>");
				sb.AppendLine("<h3>");
				sb.AppendLine(Module.ModuleName);
				sb.AppendLine("</h3>");
				sb.AppendLine("<div>");
				sb.AppendLine(BuildSubMenu(Module.ModuleNo));
				sb.AppendLine("</div>");
				sb.AppendLine("</div>");
			}
		}
		sb.AppendLine("</div>");
		lblMenu.Text = sb.ToString();
	}

	private String BuildSubMenu(String ParentModuleNo) {
		StringBuilder sb = new StringBuilder();
		List<ModuleEntity> ModuleList, SubModuleList = new List<ModuleEntity>();
		if (IsAdmin) {
			ModuleList = m_Module.GetModules(ParentModuleNo);
		}
		else {
			ModuleList = m_User.GetUserModules(UserNo, ParentModuleNo);
		}
		foreach (ModuleEntity Module in ModuleList) {
			if (IsAdmin) {
				SubModuleList = m_Module.GetModules(Module.ModuleNo);
			}
			else {
				SubModuleList = m_User.GetUserModules(UserNo, Module.ModuleNo);
			}
			if (SubModuleList.Count > 0) break;
		}
		if (SubModuleList.Count > 0) sb.AppendLine(BuildTreeMenu(ParentModuleNo, ModuleList));
		if (SubModuleList.Count <= 0) sb.AppendLine(BuildMenuItem(ModuleList));
		return sb.ToString();
	}

	private String BuildMenuItem(List<ModuleEntity> ModuleList) {
		StringBuilder sb = new StringBuilder();
		String URL, ModuleIcon, ModuleName;
		foreach (ModuleEntity Module in ModuleList) {
			sb.AppendLine("<p>");
			URL = /*ApplicationPath + "/" +*/ Module.URL;
			ModuleIcon = Module.ModuleIcon;
			ModuleName = Module.ModuleName;
			sb.AppendLine(String.Format("<img src=\"images/icons/{0}\" align=\"middle\" alt=\"\" />&nbsp;&nbsp;<span href=\"{1}\" target=\"mainFrame\">{2}</span>", ModuleIcon, URL, ModuleName));
			sb.AppendLine("</p>");
		}
		return sb.ToString();
	}

	#endregion

	#region 菜单树

	private String BuildTreeMenu(String ParentModuleNo, List<ModuleEntity> ModuleList) {
		StringBuilder sb = new StringBuilder();
		sb.AppendLine(String.Format("<ul id=\"Tree{0}\" class=\"filetree\">", ParentModuleNo));
		String URL, ModuleName;
		foreach (ModuleEntity Module in ModuleList) {
			URL = /*ApplicationPath + "/" + */Module.URL;
			if ((Module.URL == "#") || (Module.URL == "")) URL = "#";
			ModuleName = Module.ModuleName;
			sb.AppendLine("<li>");
			//sb.AppendLine("<span class=\"folder\">" + Module.ModuleName + "</span>");
			sb.AppendLine(String.Format("<span class=\"folder\" href=\"{0}\" target=\"mainFrame\">{1}</span>", URL, ModuleName));
			BuildTreeSubNode(sb, Module.ModuleNo);
			sb.AppendLine("</li>");
		}
		sb.AppendLine("</ul>");
		String JS = "<script type=\"text/javascript\">" +
								 "$(\"#Tree" + ParentModuleNo + "\").treeview({persist: \"location\"," +
								 "collapsed: true,unique: true});" +
								 "</script>";
		sb.AppendLine(JS);
		return sb.ToString();
	}

	private void BuildTreeSubNode(StringBuilder sb, String ParentModuleNo) {
		List<ModuleEntity> ModuleList ;
		if (IsAdmin) {
			ModuleList = m_Module.GetModules(ParentModuleNo);
		}
		else {
			ModuleList = m_User.GetUserModules(UserNo, ParentModuleNo);
		}

		if (ModuleList.Count > 0) {
			sb.AppendLine("<ul>");
			String URL, ModuleName;
			foreach (ModuleEntity Module in ModuleList) {
				URL = /*ApplicationPath + "/" + */Module.URL;
				if ((Module.URL == "#") || (Module.URL == "")) URL = "#";
				ModuleName = Module.ModuleName;
				sb.AppendLine("<li>");
				sb.AppendLine(String.Format("<span class=\"folder\" href=\"{0}\" target=\"mainFrame\">{1}</span>", URL, ModuleName));
				BuildTreeSubNode(sb, Module.ModuleNo);
				sb.AppendLine("</li>");
			}
			sb.AppendLine("</ul>");
		}
	}
	#endregion

}