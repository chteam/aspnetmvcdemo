<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
<%--    <script src="/Scripts/MicrosoftAjax.js" type="text/javascript"></script>  
    <script src="/Scripts/MicrosoftMvcAjax.js" type="text/javascript"></script>--%>

<script src="<%=Url.Content("~/Scripts/jquery-1.3.2.js")%>" type="text/javascript"></script>
<script src="<%=Url.Content("~/Scripts/jquery-mvc.js")%>" type="text/javascript"></script>
    <div id="udpatePanel" style="background:black"></div>
    <%=Ajax.ActionLink("载入页面到Div", "ChildPage", new AjaxOptions { UpdateTargetId = "udpatePanel"})%>
    <a href="javascript:void(0)" onclick="$.get('<%=Url.Action("ChildPage") %>',{},function(r){$('#udpatePanel').html(r)})">载入页面到Div</a>
    <%=Ajax.JActionLink("载入页面到Div", "ChildPage", new AjaxOptions { UpdateTargetId = "udpatePanel" })%>

    <%=Ajax.ActionLink("载入页面到Div,有确认弹出框", "ChildPage", new AjaxOptions { UpdateTargetId = "udpatePanel", Confirm = "确认加载" })%>
    <%=Ajax.ActionLink("载入失败", "ChildPage1", new AjaxOptions
{
    UpdateTargetId = "udpatePanel",
    OnFailure = "alert('失败')"
})%>
    <%=Ajax.ActionLink("载入成功", "ChildPage", new AjaxOptions
{
    UpdateTargetId = "udpatePanel",
    OnSuccess = "alert('成功')",
     OnBegin = "alert('开始载入')",
     OnComplete = "alert('完成')",    
})%>
 <%using (Ajax.BeginForm("ChildPage", new AjaxOptions { UpdateTargetId = "udpatePanel", Confirm="ddd" }))
   {%>
   <input type="submit" />
 <%} %>
    <div id="divLoading">
    </div>

</asp:Content>
