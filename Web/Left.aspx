<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/ContentMasterPage.master"
    AutoEventWireup="true" CodeFile="Left.aspx.cs" Inherits="Left" EnableViewState="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <link rel="stylesheet" href="css/jquery.treeview.css" />
    <script src="js/jquery.cookie.js" type="text/javascript"></script>
    <script src="js/jquery.treeview.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $("#browser").treeview();
            // Accordion
            $("#accordion").accordion({
                header: "h3",
                autoHeight: false,
                navigation: true
            });
            $("div span").addClass("menuItem");
            $("div span").click(function () {
                $("div span").removeClass("ItemSelected");
                $(this).addClass("ItemSelected");
                var url = $(this).attr("href");
                var target = $(this).attr("target");
                if ((url==null)||(url == "#")||(url=="")) return;
                open(url, target, null, false);
                //alert($(this).attr("href"));
            });
        });

       
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">       
    <asp:Literal ID="lblMenu" runat="server" />
</asp:Content>
