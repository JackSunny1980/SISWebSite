using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogic.Admin;
using DataEntity.Admin;

public partial class Admin_DepartmentPage : BasePage {

	#region 私有成员

	private DepartmentBusiness m_Dept;
	

	#endregion

	#region 属性

	private string DeptNo {
		get {
			if (ViewState["DeptNo"] == null) return string.Empty;
			return (string)ViewState["DeptNo"];
		}
		set {
			ViewState["DeptNo"] = value;
		}
	}



	#endregion

	#region 重写方法

	protected override void OnLoad(EventArgs e) {
		base.OnLoad(e);
		if (!IsPostBack) {			
			DataBind();
			SetUIState("Default");
		}
	}

	protected override void OnInit(EventArgs e) {
		m_Dept = new DepartmentBusiness();
		base.OnInit(e);
	}

	protected override void OnUnload(EventArgs e) {
		m_Dept.Dispose();
		m_Dept = null;
		base.OnUnload(e);
	}

	/// <summary>
	/// 系统用户数据绑定
	/// </summary>
	public override void DataBind() {
		DepartmentRepeater.DataSource = m_Dept.GetDepartments();
		base.DataBind();
	}
	/// <summary>
	/// 设置系统用户界面控件显示状态
	/// </summary>
	/// <param name="Enabled"></param>
	private void SetUIStatus(bool Enabled) {
		ControlCollection Controls = UP2.ContentTemplateContainer.Controls;
		foreach (Control ctrl in Controls) {
			if (ctrl is WebControl) ((WebControl)ctrl).Enabled = Enabled;
		}
	}
	/// <summary>
	/// 设置系统用户界面按钮显示状态
	/// </summary>
	/// <param name="State"></param>
	private void SetUIState(string State) {		
		if (State == "Default") {
			SetUIStatus(false);
			btnNew.Enabled = CanEditData;
			btnEdit.Enabled = CanEditData;
			btnDelete.Enabled = CanEditData;
			btnSave.Enabled = false;
		}
		if (State == "New") {
			SetUIStatus(true);
			btnNew.Enabled = false;
			btnEdit.Enabled = false;
			btnDelete.Enabled = false;
			btnSave.Enabled = true;
		}

		if (State == "Edit") {
			SetUIStatus(true);
			btnNew.Enabled = false;
			btnEdit.Enabled = false;
			btnDelete.Enabled = false;
			btnSave.Enabled = true;
		}		
	}

	#endregion

	#region 私有成员

	/// <summary>
	/// 重置系统用户界面
	/// </summary>
	private void ClearUserUI() {
		DeptNo = "";
		txtDeptName.Text = "";
		txtDeptDescription.Text = "";
		//txtOrderNo.Text = "";
	}
	/// <summary>
	/// 填充系统用户界面
	/// </summary>
	private void SetUserUI() {
		DepartmentEntity Result = m_Dept.GetDepartment(DeptNo);
		if (Result == null) return;
		DeptNo = Result.DeptNo;
		txtDeptName.Text = Result.DeptName;
		txtDeptDescription.Text = Result.DeptDescription;		  
	}

	/// <summary>
	/// 从界面获取系统用户对象
	/// </summary>
	/// <returns></returns>
	private DepartmentEntity GetUserUI() {
		DepartmentEntity Result = new DepartmentEntity();
		Result.DeptNo = DeptNo;
		Result.DeptName = txtDeptName.Text.Trim();
		Result.DeptDescription = txtDeptDescription.Text;		
		return Result;
	}

	#endregion

	#region 事件

	protected void btnSaveUser_Click(object sender, EventArgs e) {
		DepartmentEntity Result = GetUserUI();		
		int Succeed = m_Dept.SaveDepartment(Result);
		if (Succeed > 0) ShowMessage("系统用户数据保存成功!");
		if (Succeed < 0) ShowMessage("系统用户数据保存失败!");
		DataBind();
		SetUIState("Default");
	}

	protected void btnNewUser_Click(object sender, EventArgs e) {
		ClearUserUI();
		btnSave.Enabled = CanEditData;
		SetUIState("New");
	}

	protected void btnDeleteUser_Click(object sender, EventArgs e) {
		int Succeed = m_Dept.DeleteDepartment(GetUserUI());
		if (Succeed > 0) ShowMessage("系统用户数据删除成功!");
		if (Succeed < 0) ShowMessage("系统用户数据删除失败!");
		DataBind();
		SetUIState("Default");
	}
	protected void btnEditUser_Click(object sender, EventArgs e) {
		SetUIState("Edit");
	}

	protected void btnCancelUser_Click(object sender, EventArgs e) {
		SetUIState("Default");
	}

	protected void btnSearch_Click(object sender, EventArgs e) {
		DataBind();
	}

	protected void UserItemCommand(object source, RepeaterCommandEventArgs e) {
		if (e.CommandName.ToLower() == "select") {
			Literal lblDeptNo = (Literal)e.Item.FindControl("lblDeptNo");
			DeptNo = lblDeptNo.Text;
			SetUserUI();
			SetUIState("Default");
		}
	}

	#endregion
}