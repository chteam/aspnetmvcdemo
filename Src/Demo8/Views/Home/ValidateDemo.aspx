<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<UserInfo>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ValidateDemo
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../../Scripts/MicrosoftAjax.js" type="text/javascript"></script>
    <script src="../../Scripts/MicrosoftMvcAjax.js" type="text/javascript"></script>
    <script src="../../Scripts/MicrosoftMvcValidation.js" type="text/javascript"></script>
    
    <%Html.EnableClientValidation();%> 
    <%= Html.ValidationSummary("111") %> 

    <form action="" method="post">
     <%=Html.TextBox("Name") %>
    <%=Html.ValidationMessage("Name","*")%>
    
        <%=Html.TextBox("Age") %>
    <%=Html.ValidationMessage("Age","*")%>
  
    <input type="submit" />
    </form>
 
</asp:Content>
