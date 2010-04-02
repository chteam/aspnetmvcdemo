<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<UserInfo>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ValidateDemo
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<%--   <script src="<%= Url.Content("~/Scripts/MicrosoftAjax.debug.js") %>" type="text/javascript">
    </script>
    <script src="<%= Url.Content("~/Scripts/MicrosoftMvcAjax.debug.js") %>" type="text/javascript">
    </script>
    <script src="<%= Url.Content("~/Scripts/MicrosoftMvcValidation.debug.js") %>" type="text/javascript">
    </script>--%>

    <script src="/Scripts/jquery-1.3.2.js" type="text/javascript"></script>
    <script src="/Scripts/jquery.validate.js" type="text/javascript"></script>
    <script src="/Scripts/MicrosoftMvcJQueryValidation.js" type="text/javascript"></script>
    
    
<%--    <form action="<%=Url.Action("Process") %>" method="post">
    姓名：<%=Html.TextBox("Name") %>
    <%=Html.ValidationMessage("Name", "姓名不能为空")%><br />
    年龄：<%=Html.TextBox("Age")%>
    <%=Html.ValidationMessage("Age", "年龄不正确")%><br />
    邮箱：<%=Html.TextBox("Email")%>
    <%=Html.ValidationMessage("Email", "Email格式不正确")%><br />
    <input type="submit" />
    </form>--%>
<%-- <%= Html.ValidationSummary() %>
    <form action="<%=Url.Action("Process") %>" method="post">
    姓名：<%=Html.TextBox("Name") %>
    <%=Html.ValidationMessage("Name", "*")%><br />
    年龄：<%=Html.TextBox("Age")%>
    <%=Html.ValidationMessage("Age", "*")%><br />
    邮箱：<%=Html.TextBox("Email")%>
    <%=Html.ValidationMessage("Email", "*")%><br />
    <input type="submit" />
    </form>--%>
<%--     <%= Html.ValidationSummary() %>
    <form action="<%=Url.Action("ProcessCustom") %>" method="post">
    UID：<%=Html.TextBox("uid") %>
    <%=Html.ValidationMessage("uid", "*")%><br />
    <input type="submit" />
    </form>--%>
      <%Html.EnableClientValidation();%>
    <%using (Html.BeginForm("Process", "ValiDemo"))
      { %>
    姓名：<%=Html.TextBoxFor(c=>c.Name)%>
    <%=Html.ValidationMessageFor(c=>c.Name)%><br />
    年龄：<%=Html.TextBoxFor(c=>c.Age)%>
    <%=Html.ValidationMessageFor(c=>c.Age)%><br />
    邮箱：<%=Html.TextBoxFor(c=>c.Email)%>
    <%=Html.ValidationMessageFor(c=>c.Email)%><br />

   <input type="submit" />

    <%} %>
</asp:Content>
