using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Text;

/// <summary>
///ItemTemplate 的摘要说明
/// </summary>
public class ItemTemplate : ITemplate {

	private Page m_Page;

	public ItemTemplate(Page page) {
		m_Page = page;
	}

	public void InstantiateIn(Control container) {
		TableRow tr = new TableRow();
		TableCell td = new TableCell();
		tr.ID = "ItemControls";
		tr.Cells.Add(td);
		td = new TableCell();
		tr.Cells.Add(td);
		tr.DataBinding += new EventHandler(RowDataBinding);//关键在这里
		container.Controls.Add(tr);
	}

	private void RowDataBinding(Object sender, EventArgs e) {
		//Literal lbl = (Literal)sender;
		TableRow tr = (TableRow)sender;
		TableCell td1 = tr.Cells[0];
		TableCell td2 = tr.Cells[1];
		TextBox txtAttribute = new TextBox();
		txtAttribute.Width = 160;
		td1.Text = DataBinder.Eval(((RepeaterItem)tr.NamingContainer).DataItem, "AttributeName").ToString();
		txtAttribute.Text = DataBinder.Eval(((RepeaterItem)tr.NamingContainer).DataItem, "AttributeValue").ToString();
		td2.Controls.Add(txtAttribute);
		//td1.Attributes.Add("align", "center");
		//td2.Attributes.Add("align", "center");
		//if (DataBinder.Eval(((DataListItem)lbl.NamingContainer).DataItem, "HaveImg").ToString() == "False")

		if (td1.Text == "07. 责任班组") {
			HtmlGenericControl imgControl = new HtmlGenericControl();
			imgControl.ID = "imgSelectGroup";
			imgControl.TagName = "img";
			imgControl.Attributes.Add("onclick", "onSelectGroup();");
			imgControl.Attributes.Add("src", "../images/Distract.gif");
			td2.Controls.Add(imgControl);
			HiddenField hGroupID = new HiddenField();
			td2.Controls.Add(hGroupID);
			txtAttribute.ReadOnly = true;
			String script = GetClientScript(hGroupID.ClientID, txtAttribute.ClientID);
			ScriptManager.RegisterClientScriptBlock(m_Page, this.GetType(), "dd", script, true);
		}
	}

	private String GetClientScript(String valueClientID, String displayClientID) {
		StringBuilder javaScriptBuilder = new StringBuilder();
		javaScriptBuilder.AppendLine(" function onSelectGroup() {");
		javaScriptBuilder.AppendLine("   var sURL = \"GroupsTree.aspx?rand=\" + Math.random();");
		javaScriptBuilder.AppendLine("   var urlValue = window.showModalDialog(sURL, null, \"dialogWidth=300px;dialogHeight=400px\");");
		javaScriptBuilder.AppendLine("   if (urlValue != null || urlValue != undefined) {");
		javaScriptBuilder.AppendLine("      $(\"#" + valueClientID + ">\").val(urlValue[0]);");
		javaScriptBuilder.AppendLine("      $(\"#" + displayClientID + "\").val(urlValue[1]);");
		javaScriptBuilder.AppendLine("   }");
		javaScriptBuilder.AppendLine(" }");
		return javaScriptBuilder.ToString();
	}

}