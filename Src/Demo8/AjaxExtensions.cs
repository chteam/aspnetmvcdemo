using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Mvc.Html;
using System.Web.Mvc.Ajax;

namespace Demo8
{
    static public class AjaxExtensions
    {
        static public MvcHtmlString JActionLink(this AjaxHelper ajax,string text,string actionName,AjaxOptions options) { 
            var urlHelper=new UrlHelper(ajax.ViewContext.RequestContext);
           var url= urlHelper.Action(actionName);
           return MvcHtmlString.Create(string.Format(@"<a href=""javascript:void(0)""
onclick=""$.get('{0}',{{}},function(r){{$('#{1}').html(r)}});"">{2}</a>", url, options.UpdateTargetId, text));
        }
    }
}