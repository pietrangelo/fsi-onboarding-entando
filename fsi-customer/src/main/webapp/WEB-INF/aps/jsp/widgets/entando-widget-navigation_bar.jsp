<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--<WP:HEADINFO TYPE="JS" INFO="ENTANDO-MISC-JQUERY/JQUERY-1.10.0.MIN.JS" />
<WP:HEADINFO TYPE="JS" INFO="ENTANDO-MISC-BOOTSTRAP/BOOTSTRAP.MIN.JS" />--%>

<wp:currentPage param="code" var="currentPageCode" />
<c:set var="currentPageCode" value="${currentPageCode}" />
<c:set var="previousPage" value="${null}" />
<!--<ul class="nav navbar-nav">-->
<wp:nav var="page">

    <c:if test="${previousPage.code != null}">
        <c:set var="previousLevel" value="${previousPage.level}" />
        <c:set var="level" value="${page.level}" />
        <%@ include file="entando-widget-navigation_bar_include.jsp" %>
    </c:if>

    <c:set var="previousPage" value="${page}" />
</wp:nav>

<c:if test="${previousPage != null}">
    <c:set var="previousLevel" value="${previousPage.level}" />
    <c:set var="level" value="${0}"  /> <%-- we are out, level is 0 --%>
    <%@ include file="entando-widget-navigation_bar_include.jsp" %>
    <c:if test="${previousLevel != 0}">
        <c:forEach begin="${0}" end="${previousLevel -1}"></ul></li></c:forEach>
    </c:if>
</c:if>

<!--</ul>-->
<#assign wp=JspTaglibs["/aps-core"]>
<div class="middle-box loginscreen animated fadeInDown">
    <#if (Session.currentUser.username != "guest") >
    <#if (Session.currentUser.entandoUser) >
    <#if (!Session.currentUser.credentialsNotExpired) >
    <div class="alert alert-block">
        <p>
            <@wp.i18n key="USER_STATUS_EXPIRED_PASSWORD" />:
            <a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/editPassword.action">
               <@wp.i18n key="USER_STATUS_EXPIRED_PASSWORD_CHANGE" /></a>
        </p>
    </div>
    </#if>
    </#if>
    <p>
        <script>window.location = "<@wp.url page="lender" />";</script>
    </p>
    <#else>
    <#if (accountExpired?? && accountExpired == true) >
    <div class="alert alert-block alert-error">
        <p><@wp.i18n key="USER_STATUS_EXPIRED" /></p>
    </div>
    </#if>
    <#if (wrongAccountCredential?? && wrongAccountCredential == true) >
    <div class="alert alert-block alert-error">
        <p><@wp.i18n key="USER_STATUS_CREDENTIALS_INVALID" /></p>
    </div>
    </#if>
    <p class="title-login"><@wp.i18n key="RESERVED_AREA" /></p>
    <form action="<@wp.url/>" method="post" class="m-t">
        <#if (RequestParameters.returnUrl??) >
        <input type="hidden" name="returnUrl" value="${RequestParameters.returnUrl}" />
        </#if>
        <div class="form-group">
            <label class="login-label"><@wp.i18n key="USERNAME" /></label>
            <input id="username" type="text" name="username" placeholder="<@wp.i18n key="USERNAME" />" class="form-control" />
        </div>
        <div class="form-group">
            <label class="login-label"><@wp.i18n key="PASSWORD" /></label>
            <input id="password" type="password" name="password" placeholder="<@wp.i18n key="PASSWORD" />" class="form-control" />
        </div>
        <div>
            <label> <input type="checkbox" class="i-checks"> Remember me </label>
        </div>
        <div class="form-actions text-center">
            <input type="submit" value="<@wp.i18n key="SIGNIN" />" class="btn btn-primary login-button" />
                   <p class="forget">Forgot your password or Email/Username?</p>
        </div>
    </form>
    </#if>
</div>
