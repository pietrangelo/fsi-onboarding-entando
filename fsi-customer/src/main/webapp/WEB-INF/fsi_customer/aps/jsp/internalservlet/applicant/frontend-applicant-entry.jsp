<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="wpsf" uri="/apsadmin-form" %>


<div class="bpm-wrapper-background">
    <p class="title-welcome"> Complete registration </p>
    <p class="subtitle">Register for a new account</p>
    <p class="presentation">Please create a username & password for login</p>

    <form action="<wp:action path="/ExtStr2/do/FrontEnd/jpapplicant/Applicant/save.action" />" method="post"fr
          class="m-t">
        <s:if test="hasActionErrors()">
            <div class="alert alert-danger alert-dismissable alert-custom">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                    <span class="pficon pficon-close"></span>
                </button>
                <span class="pficon pficon-error-circle-o"></span>
                <strong><s:text name="message.title.ActionErrors"/>
                </strong>
                <ul class="list-unstyled">
                    <s:iterator value="actionErrors">
                        <li><s:property escapeHtml="false"/></li>
                        </s:iterator>
                </ul>
            </div>
        </s:if>
        <s:if test="hasFieldErrors()">
            <div class="alert alert-danger alert-dismissable alert-custom">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                    <span class="pficon pficon-close"></span>
                </button>
                <span class="pficon pficon-error-circle-o"></span>
                <strong>
                    <s:text name="message.title.FieldErrors"/>
                </strong>
                <ul class="list-unstyled">
                    <s:iterator value="fieldErrors">
                        <s:iterator value="value">
                            <li><s:property escapeHtml="false"/></li>
                            </s:iterator>
                        </s:iterator>
                </ul>
            </div>
        </s:if>
        <s:if test="hasActionMessages()">
            <div class="alert alert-success alert-custom">
                <span class="pficon pficon-ok"></span>
                <strong><s:text name="messages.confirm"/></strong>
                <ul class="list-unstyled">
                    <s:iterator value="actionMessages">
                        <li><s:property escapeHtml="false"/></li>
                        </s:iterator>
                </ul>
            </div>
        </s:if>
        <p class="sr-only">
            <wpsf:hidden name="strutsAction"/>
            <wpsf:hidden name="id"/>
        </p>

        <div class="form-group">
            <label class="login-label" for="applicant_username">Username</label>
            <!--            <label class="login-label" for="applicant_username"><wp:i18n key="jpapplicant_APPLICANT_USERNAME" /></label>-->
            <input type="text" name="username" id="applicant_username" value="<s:property value="username" />"
                   class="form-control input-custom"/>
        </div>
        <div class="form-group">
            <label class="login-label" for="applicant_pwd"><wp:i18n key="jpapplicant_APPLICANT_PWD"/></label>
            <input type="password" name="pwd" id="applicant_pwd" value="<s:property value="pwd" />"
                   class="form-control input-custom"/>
        </div>
        <div class="form-group">
            <label class="login-label" for="applicant_cnfpwd">Confirm password</label>
            <!--            <label class="login-label" for="applicant_cnfpwd"><wp:i18n key="jpapplicant_APPLICANT_CNFPWD" /></label>-->
            <input type="password" name="cnfpwd" id="applicant_cnfpwd" value="<s:property value="cnfpwd" />"
                   class="form-control input-custom"/>
        </div>

        <div class="form-group">
            <label class="login-label" for="applicant_firstname"><wp:i18n
                    key="jpapplicant_APPLICANT_FIRSTNAME"/></label>
            <input type="text" name="firstname" id="applicant_firstname" value="<s:property value="firstname" />"
                   class="form-control input-custom"/>
        </div>
        <div class="form-group">
            <label class="login-label" for="applicant_lastname"><wp:i18n key="jpapplicant_APPLICANT_LASTNAME"/></label>
            <input type="text" name="lastname" id="applicant_lastname" value="<s:property value="lastname" />"
                   class="form-control input-custom"/>
        </div>
        <div class="form-group">
            <label class="login-label" for="applicant_company"><wp:i18n key="jpapplicant_APPLICANT_COMPANY"/></label>
            <input type="text" name="company" id="applicant_company" value="<s:property value="company" />"
                   class="form-control input-custom"/>
        </div>
        <div class="form-group">
            <label class="login-label" for="applicant_email"><wp:i18n key="jpapplicant_APPLICANT_EMAIL"/></label>
            <input type="text" name="email" id="applicant_email" value="<s:property value="email" />"
                   class="form-control input-custom"/>
        </div>

        <div class="form-group">
            <input type="hidden" name="procid" id="applicant_procid" value="<s:property value="procid" />">
            <input type="hidden" name="type" id="applicant_type" value="">
        </div>
        <div class="right-side-button">
            <wpsf:submit type="button" cssClass="btn btn-primary login-button">
                <wp:i18n key="SAVE"/>
            </wpsf:submit>
        </div>
    </form>
</div>

<s:if test="hasActionMessages()">
<script>
// redirect to login page showing the toastr
var url = '<wp:url page="homepage" />';
url += '#flashToast=success|Please login to continue your application';
window.location = url;
</script>
</s:if>
<script>
    function getQueryVariable(variable) {
        var query = window.location.search.substring(1);
        var vars = query.split("&");
        for (var i = 0; i < vars.length; i++) {
            var pair = vars[i].split("=");
            if (pair[0] == variable) {
                return pair[1];
            }
        }
        return "";
    };

    var maps = {
        applicant_firstname: getQueryVariable("fname"),
        applicant_lastname: getQueryVariable("lame"),
        applicant_company: getQueryVariable("company"),
        applicant_email: getQueryVariable("email"),
        applicant_username: "",
        applicant_pwd: "",
        applicant_cnfpwd: "",
        applicant_procid: getQueryVariable("pid"),
        applicant_type: "BIG_BUSINESS"
    }

    for (var key in maps) {
        if (document.getElementById(key).value === '') {
            document.getElementById(key).value = maps[key];
        }
    }
</script>
