
var Sys = {
    Mvc: {
        AsyncHyperlink: {
            handleClick: function (s, e, json) {
                if (e.preventDefault) {
                    e.preventDefault();
                }
                else if (window.event) {
                    e.returnValue = false;
                }
                if (json.confirm) {
                    if (!confirm(json.confirm)) {
                        return;
                    }
                }
                var href = $(s).attr("href");
                //$(s).attr("href", "javascript:void(0);");

                $.get(href, {}, function (r) { $('#' + json.updateTargetId).html(r); });
                return false;
            }
        },
        InsertionMode: { replace: '' }
    },
    UI: { DomEvent: function (e) { return e; } }
};
 
