<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="wp" uri="/aps-core"%>
<%@ taglib prefix="wpsf" uri="/apsadmin-form"%>


<div class="bpm-wrapper-background">
    <p class="title-welcome"> Complete registration </p>
    <p class="subtitle">Sign in </p>
    <p class="presentation">Hi . Type your and a password to complete the registration. </p>

    <form action="<wp:action path="/ExtStr2/do/FrontEnd/jpapplicant/Applicant/save.action" />" method="post" class="m-t">
        <s:if test="hasFieldErrors()">
            <div class="alert alert-error">
                <h2><s:text name="message.title.FieldErrors" /></h2>
                <ul>
                    <s:iterator value="fieldErrors">
                        <s:iterator value="value">
                            <li><s:property/></li>
                            </s:iterator>
                        </s:iterator>
                </ul>
            </div>
        </s:if>
        <s:if test="hasActionErrors()">
            <div class="alert alert-error">
                <h2><s:text name="message.title.ActionErrors" /></h2>
                <ul>
                    <s:iterator value="actionErrors">
                        <li><s:property/></li>
                        </s:iterator>
                </ul>
            </div>
        </s:if>

        <p class="sr-only">
            <wpsf:hidden name="strutsAction" />
            <wpsf:hidden name="id" />
        </p>

        <div class="form-group">
            <label class="login-label" for="applicant_firstname"><wp:i18n key="jpapplicant_APPLICANT_FIRSTNAME" /></label>
            <input type="text" name="firstname" id="applicant_firstname" value="<s:property value="firstname" />" class="form-control input-custom" />
        </div>
        <div class="form-group">
            <label class="login-label" for="applicant_lastname"><wp:i18n key="jpapplicant_APPLICANT_LASTNAME" /></label>
            <input type="text" name="lastname" id="applicant_lastname" value="<s:property value="lastname" />" class="form-control input-custom" />
        </div>
        <div class="form-group">
            <label class="login-label" for="applicant_company"><wp:i18n key="jpapplicant_APPLICANT_COMPANY" /></label>
            <input type="text" name="company" id="applicant_company" value="<s:property value="company" />" class="form-control input-custom" />
        </div>
        <div class="form-group">
            <label class="login-label" for="applicant_email"><wp:i18n key="jpapplicant_APPLICANT_EMAIL" /></label>
            <input type="text" name="email" id="applicant_email" value="<s:property value="email" />" class="form-control input-custom" />
        </div>
        <div class="form-group">
            <label class="login-label" for="applicant_pwd"><wp:i18n key="jpapplicant_APPLICANT_PWD" /></label>
            <input type="text" name="pwd" id="applicant_pwd" value="<s:property value="pwd" />" class="form-control input-custom" />
        </div>
        <div class="form-group">
            <label class="login-label" for="applicant_pwd"><wp:i18n key="jpapplicant_APPLICANT_PWD" /></label>
            <input type="text" name="pwd" id="applicant_pwd" value="<s:property value="pwd" />" class="form-control input-custom" />
        </div>
        <div class="right-side-button">
            <wpsf:submit type="button" cssClass="btn btn-primary login-button">
                <wp:i18n key="SAVE" />
            </wpsf:submit>
        </div>
    </form>
</div>

