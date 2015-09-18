<%@ Page Language="C#" MasterPageFile="~/MasterPage/ContentMasterPage.master" AutoEventWireup="true"
    CodeFile="DepartmentPage.aspx.cs" Inherits="Admin_DepartmentPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <script type="text/javascript">
        $(function () {
            $("#tabs").tabs();            
        });

        function onSelected(index) {
            $("#tabs").tabs("option", "active", index);
        }       
        
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div id="tabs">
        <ul>
            <li><a href="#tabs-1">浏览</a></li>
            <li><a href="#tabs-2">编辑</a></li>
        </ul>
        <div id="tabs-1">
            <asp:UpdatePanel ID="UP1" runat="Server">
                <ContentTemplate>
                    <asp:Repeater ID="DepartmentRepeater" runat="server" OnItemCommand="UserItemCommand">
                        <HeaderTemplate>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <th>
                                        序号
                                    </th>
                                    <th>
                                        部门名称
                                    </th>
                                    <th>
                                        部门职责
                                    </th>
                                    <th>
                                        操作
                                    </th>
                                </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr class="tr1" onmouseover="javascript:this.className;this.className='tr3';" onmouseout="javascript:this.className='tr1'">
                                <td class="VLine" align="center">
                                    <%# Container.ItemIndex + 1 %>
                                </td>
                                <td class="VLine" align="center">
                                    <%# Eval("DeptName") %>
                                    <asp:Literal runat="server" ID="lblDeptNo" Text='<%# Eval("DeptNo") %>' Visible="false" />
                                </td>
                                <td class="VLine" align="center">
                                    <%# Eval("DeptDescription")%>
                                </td>
                                <td class="VLine" align="center">
                                    <asp:Button ID="btnDetail" runat="server" Text="查看" CommandName="Select" CssClass="buttonCss"
                                        OnClientClick="onSelected(1)" />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <AlternatingItemTemplate>
                            <tr class="tr2" onmouseover="javascript:this.className;this.className='tr3';" onmouseout="javascript:this.className='tr2'">
                                <td class="VLine" align="center">
                                    <%# Container.ItemIndex + 1 %>
                                </td>
                                <td class="VLine" align="center">
                                    <%# Eval("DeptName") %>
                                    <asp:Literal runat="server" ID="lblDeptNo" Text='<%# Eval("DeptNo") %>' Visible="false" />
                                </td>
                                <td class="VLine" align="center">
                                    <%# Eval("DeptDescription")%>
                                </td>
                                <td class="VLine" align="center">
                                    <asp:Button ID="btnDetail1" runat="server" Text="查看" CommandName="Select" CssClass="buttonCss"
                                        OnClientClick="onSelected(1)" />
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>                   
                </ContentTemplate>
            </asp:UpdatePanel>           
        </div>
        <div id="tabs-2">
            <asp:UpdatePanel ID="UP2" runat="Server">
                <ContentTemplate>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td class="HVLine">
                                用户名
                            </td>
                            <td class="HVLine" colspan="3">
                                <asp:TextBox CssClass="textbox41" ID="txtDeptName" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="VLine">
                                部门职责
                            </td>
                            <td class="VLine" colspan="3">
                                <asp:TextBox CssClass="inputCss" TextMode="MultiLine" Height="150px" Width="99%"
                                    ID="txtDeptDescription" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4" align="center" class="VLine">
                                <asp:Button CssClass="buttonCss" ID="btnNew" runat="server" Text="新建" OnClick="btnNewUser_Click" />
                                <asp:Button CssClass="buttonCss" ID="btnEdit" runat="server" Text="编辑" OnClick="btnEditUser_Click" />
                                <asp:Button CssClass="buttonCss" ID="btnDelete" runat="server" Text="删除" OnClick="btnDeleteUser_Click"
                                    OnClientClick="javascript:return confirm('你确定要删除该数据吗？')" />
                                <asp:Button CssClass="buttonCss" ID="btnSave" runat="server" Text="保存" OnClick="btnSaveUser_Click" />
                                <asp:Button CssClass="buttonCss" ID="btnCancel" runat="server" Text="取消" OnClick="btnCancelUser_Click" />
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
