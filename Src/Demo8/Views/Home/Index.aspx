<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="/Scripts/MicrosoftAjax.js" type="text/javascript"></script>  
    <script src="/Scripts/MicrosoftMvcAjax.js" type="text/javascript"></script>
    <div id="udpatePanel" style="background:black"></div>
    <%=Ajax.ActionLink("载入页面到Div", "ChildPage", new AjaxOptions { UpdateTargetId = "udpatePanel"})%>
    <div id="divLoading">
    </div>
    
</asp:Content>
