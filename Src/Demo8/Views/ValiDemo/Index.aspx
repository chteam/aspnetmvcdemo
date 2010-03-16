<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ValidateDemo
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script src="/Scripts/MicrosoftAjax.js" type="text/javascript"></script>
    <script src="/Scripts/MicrosoftMvcAjax.js" type="text/javascript"></script>
    <script src="/Scripts/MicrosoftMvcValidation.js" type="text/javascript"></script>
    <%//Html.EnableClientValidation();%>
    
<%--    <form action="<%=Url.Action("Process") %>" method="post">
    姓名：<%=Html.TextBox("Name") %>
    <%=Html.ValidationMessage("Name", "姓名不能为空")%><br />
    年龄：<%=Html.TextBox("Age")%>
    <%=Html.ValidationMessage("Age", "年龄不正确")%><br />
    邮箱：<%=Html.TextBox("Email")%>
    <%=Html.ValidationMessage("Email", "Email格式不正确")%><br />
    <input type="submit" />
    </form>--%>
    <%= Html.ValidationSummary() %>
    <form action="<%=Url.Action("Process") %>" method="post">
    姓名：<%=Html.TextBox("Name") %>
    <%=Html.ValidationMessage("Name", "*")%><br />
    年龄：<%=Html.TextBox("Age")%>
    <%=Html.ValidationMessage("Age", "*")%><br />
    邮箱：<%=Html.TextBox("Email")%>
    <%=Html.ValidationMessage("Email", "*")%><br />
    <input type="submit" />
    </form>
</asp:Content>
