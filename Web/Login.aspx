<%@ Page Language="C#" MasterPageFile="~/MasterPage/ContentMasterPage.master" AutoEventWireup="true"
    CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
    <!--
    body {
	    margin-left: 0px;
	    margin-top: 0px;
	    margin-right: 0px;
	    margin-bottom: 0px;	
	    font-family: 宋体;
        font-size: 13px;	
    }

    #Container{
	    background-image:url(images/login_bg.png);
	    background-repeat:no-repeat;
	    width:100%;
	    height:614px;
    }

    .inputNormalCss{	    
	    height:25px;
	    width: 200px;    
	    background-color:#FFFFCC;
	    border: 1px solid #3362BC;
    }
    .inputSelectedCss{	    
	    height:25px;
	    width: 200px;    
	    background-color:#FFFFCC;
	    border: 1px solid #82D958;
    }

    .labelCss{
	    color:#272727; 
	    font-size:16px;
	    text-align:center;
    }
    </style>
    <script language="javascript" type="text/javascript">
// <!CDATA[

        function btnLogin_onclick() {
            var argument = $("#txtUserAccount").val() + "," + $("#txtPassWord").val();            
            <%=ClientCallback %>;             
        }
        function btnBrowse_onclick(){
            var argument = "";            
            <%=ClientCallback %>;   
        }
        
        function processCallback(result,context){             
            if (result!="") top.location = result;
            if (result =="") alert("用户名或密码不正确请重新输入！");             
        }
        
        $(function(){
            $("#txtPassword").keypress(function(){                
                if(event.keyCode==13) $("#btnLogin").click();
            });
        });

         $(function () {
            $("#btnLogin").bind("click", btnLogin_onclick);
            $("#btnBrowse").bind("click",btnBrowse_onclick);
			$("#btnLogin").hover(
			  function () {
				$(this).attr("src","images/btn_login_selected.png");
			  },
			  function () {
				$(this).attr("src","images/btn_login_normal.png");
			  }
			);
			$("#btnBrowse").hover(
			  function () {
				$(this).attr("src","images/btn_browse_selected.png");
			  },
			  function () {
				$(this).attr("src","images/btn_browse_normal.png");
			  }
			);
			
			$("#txtUserAccount").hover(
			  function () {
				$(this).addClass("inputSelectedCss");
			  },
			  function () {
				$(this).removeClass("inputSelectedCss");
			  }
			);
			
			$("#txtPassWord").hover(
			  function () {
				$(this).addClass("inputSelectedCss");
			  },
			  function () {
				$(this).removeClass("inputSelectedCss");
			  }
			);

            $("#Container").css({ 
			    position: "absolute", 
			    left: ($(window).width() - $("#Container").outerWidth())/2, 
			    top: ($(window).height() - $("#Container").outerHeight())/2 
		    });   
			
		});

	   $(window).resize(function(){ 	   
		$("#Container").css({ 
			position: "absolute", 
			left: ($(window).width() - $("#Container").outerWidth())/2, 
			top: ($(window).height() - $("#Container").outerHeight())/2 
		});        
	}); 
        

// ]]>
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div id="Container">
        <table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
            <tr>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td height="33" colspan="4" align="center">
                </td>
            </tr>
            <tr>
                <td height="33">
                </td>
                <td height="33">
                </td>
                <td height="33">
                </td>
                <td height="33">
                </td>
            </tr>
            <tr>
                <td height="33" colspan="4" align="center">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td height="33" colspan="4" align="center">
                    <strong class="labelCss">账号：</strong>
                    <input type="text" class="inputNormalCss" id="txtUserAccount"  />
                    <strong class="labelCss">密码：</strong>
                    <input type="password" class="inputNormalCss" id="txtPassWord" />&nbsp;
                    <img src="images/btn_login_normal.png" align="middle" id="btnLogin" alt=""/>&nbsp;&nbsp;<img
                        src="images/btn_browse_normal.png" align="middle" id="btnBrowse" alt="" />
                </td>
            </tr>
            <tr>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td height="33" colspan="4" align="center" style="line-height: 150%; font-family: 宋体;
                    font-size: 13px;">
                    Copyright &copy; 2014-2016 神华国华北京热电厂 All Rights Reserved.<br />
                    技术支持：北京北斗兴业信息技术有限公司&nbsp;&nbsp;&nbsp; 电话：010-65569686-8081&nbsp;&nbsp;&nbsp; 传真：010-68415289&nbsp;&nbsp;&nbsp;
                    值班手机：13910053356
                </td>
            </tr>
            <tr>
                <td height="33" colspan="4" align="center">
                </td>
            </tr>
            <tr>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
                <td height="33">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td height="20">
                    &nbsp;
                </td>
                <td height="20">
                    &nbsp;
                </td>
                <td height="20">
                    &nbsp;
                </td>
                <td height="20">
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
