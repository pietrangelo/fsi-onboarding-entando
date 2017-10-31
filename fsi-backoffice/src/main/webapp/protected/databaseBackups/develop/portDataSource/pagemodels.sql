INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('service','Service Page','<frames>
	<frame pos="0">
		<descr>Sample Frame</descr>
	</frame>
</frames>',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
	<title><@wp.currentPage param="title" /></title>
</head>
<body>
<h1><@wp.currentPage param="title" /></h1>
<a href="<@wp.url page="homepage" />" >Home</a><br>
<div><@wp.show frame=0 /></div>
</body>
</html>');
INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('fsi-landing','FSI Landing','<?xml version="1.0" encoding="UTF-8"?>
<frames>
	<frame pos="0">
		<descr>Top bar 1</descr>
		<sketch x1="0" y1="0" x2="1" y2="0" />
	</frame>
	<frame pos="1">
		<descr>Top Bar 2</descr>
		<sketch x1="2" y1="0" x2="3" y2="0" />
	</frame>
	<frame pos="2">
		<descr>Top Bar 3</descr>
		<sketch x1="4" y1="0" x2="5" y2="0" />
	</frame>
	<frame pos="3">
		<descr>Top Bar 4</descr>
		<sketch x1="6" y1="0" x2="7" y2="0" />
	</frame>
	<frame pos="4">
		<descr>Top Bar 5</descr>
		<sketch x1="8" y1="0" x2="9" y2="0" />
	</frame>
	<frame pos="5">
		<descr>Top Bar 6</descr>
		<sketch x1="10" y1="0" x2="11" y2="0" />
	</frame>
	<frame pos="6">
		<descr>Main Bar 1</descr>
		<sketch x1="0" y1="1" x2="11" y2="1" />
	</frame>
	<frame pos="7">
		<descr>Main Bar 2</descr>
		<sketch x1="0" y1="2" x2="11" y2="2" />
	</frame>
	<frame pos="8">
		<descr>Content 1 left</descr>
		<sketch x1="0" y1="3" x2="3" y2="3" />
	</frame>
	<frame pos="9">
		<descr>Content 2 center</descr>
		<sketch x1="4" y1="3" x2="7" y2="3" />
	</frame>
	<frame pos="10">
		<descr>Content 2 right</descr>
		<sketch x1="8" y1="3" x2="11" y2="3" />
	</frame>
	<frame pos="11">
		<descr>Content 3</descr>
		<sketch x1="0" y1="4" x2="11" y2="4" />
	</frame>
	<frame pos="12">
		<descr>Footer</descr>
		<sketch x1="0" y1="5" x2="11" y2="5" />
	</frame>
	<frame pos="13">
		<descr>Footer</descr>
		<sketch x1="0" y1="6" x2="11" y2="6" />
	</frame>
	<frame pos="14">
		<descr>Footer</descr>
		<sketch x1="0" y1="7" x2="11" y2="7" />
	</frame>
	<frame pos="15">
		<descr>Footer</descr>
		<sketch x1="0" y1="8" x2="11" y2="8" />
	</frame>
	<frame pos="16">
		<descr>Footer</descr>
		<sketch x1="0" y1="9" x2="11" y2="9" />
	</frame>
	<frame pos="17">
		<descr>Footer</descr>
		<sketch x1="0" y1="10" x2="11" y2="10" />
	</frame>
	<frame pos="18">
		<descr>Footer</descr>
		<sketch x1="0" y1="11" x2="11" y2="11" />
	</frame>
</frames>

',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>
            <@wp.currentPage param="title" /> - <@wp.i18n key="PORTAL_TITLE" />
        </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link rel="icon" href="<@wp.info key="systemParam" paramName="applicationBaseURL" />
              favicon.png" type="image/png" />
              <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
              <!--[if lt IE 9]>
              <script src="<@wp.resourceURL />static/js/entando-misc-html5-essentials/html5shiv.js"></script>
              <![endif]-->
              <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600" rel="stylesheet">

        <@c.import url="/WEB-INF/aps/jsp/models/inc/content_inline_editing.jsp" />
        <@c.import url="/WEB-INF/aps/jsp/models/inc/header-inclusions.jsp" />

    </head>
    <body>
        <div id="wrapper">
            <div class="row header-custom">
                <div class="fsi-header">
                    <div class="col-md-2 col-md-offset-1">
                        <div class="logo-names">
                            <@wp.show frame=0 />
                            <img alt="image" class="" src="/fsi-backoffice/resources/static/img/shield-logo.png">&nbsp;
                            <b>FORTRESS -</b>
                            <span>Bank &amp; Loan</span>
                        </div>
                    </div>
                    <div class="col-md-6 col-md-offset-2">
                        <@wp.show frame=1 />
                        <div class="logo-menu-pages">
                            <a href="<@wp.url page="customer_internal" />" >personal</a>
                        </div>
                        <div class="logo-menu-pages">
                            <@wp.show frame=2 />
                            <b>small business</b>
                        </div>
                        <div class="logo-menu-pages">
                            <@wp.show frame=3 />
                            <b>Account</b>
                        </div>
                        <div class="logo-menu-pages">
                            <@wp.show frame=4 />
                            <a href="<@wp.url page="dashboard_internal" />" >dashboard</a>
                        </div>
                        <div class="logo-menu-pages">
                            <@wp.show frame=5 />
                        </div>
                    </div>
                </div>

                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <@wp.show frame=6 />
                        </div>
                        <div class="col-md-12">
                            <@wp.show frame=7 />
                        </div>
                        <div class="col-md-4">
                            <@wp.show frame=8 />
                        </div>
                        <div class="col-md-4">
                            <@wp.show frame=9 />
                        </div>
                        <div class="col-md-4">
                            <@wp.show frame=10 />
                        </div>
                        <div class="col-md-12">
                            <@wp.show frame=11 />
                        </div>
                        <div class="col-md-12">
                            <@wp.show frame=12 />
                        </div>
                        <div class="col-md-12">
                            <@wp.show frame=13 />
                        </div>
                        <div class="col-md-12">
                            <@wp.show frame=14 />
                        </div>
                        <div class="col-md-12">
                            <@wp.show frame=15 />
                        </div>
                        <div class="col-md-12">
                            <@wp.show frame=16 />
                        </div>
                        <div class="col-md-12">
                            <@wp.show frame=17 />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <@wp.show frame=18 />
                    </div>
                </div>

            </div>
    </body>
</html>');
INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('fsi-dashboard','FSI Dashboard','<?xml version="1.0" encoding="UTF-8"?>
<frames>
	<frame pos="0">
		<descr>Top bar 1</descr>
		<sketch x1="0" y1="0" x2="1" y2="0" />
	</frame>
	<frame pos="1">
		<descr>Top Bar 2</descr>
		<sketch x1="2" y1="0" x2="3" y2="0" />
	</frame>
	<frame pos="2">
		<descr>Top Bar 3</descr>
		<sketch x1="4" y1="0" x2="5" y2="0" />
	</frame>
	<frame pos="3">
		<descr>Top Bar 4</descr>
		<sketch x1="6" y1="0" x2="7" y2="0" />
	</frame>
	<frame pos="4">
		<descr>Top Bar 5</descr>
		<sketch x1="8" y1="0" x2="9" y2="0" />
	</frame>
	<frame pos="5">
		<descr>Top Bar 6</descr>
		<sketch x1="10" y1="0" x2="11" y2="0" />
	</frame>
	<frame pos="6">
		<descr>Main Bar 1</descr>
		<sketch x1="0" y1="1" x2="7" y2="1" />
	</frame>
	<frame pos="7">
		<descr>Main Bar 2</descr>
		<sketch x1="8" y1="1" x2="11" y2="1" />
	</frame>
	<frame pos="8">
		<descr>Content 1 left</descr>
		<sketch x1="0" y1="2" x2="3" y2="2" />
	</frame>
	<frame pos="9">
		<descr>Footer</descr>
		<sketch x1="4" y1="2" x2="7" y2="2" />
	</frame>
	<frame pos="10">
		<descr>Footer</descr>
		<sketch x1="8" y1="2" x2="11" y2="2" />
	</frame>
	<frame pos="11">
		<descr>Content 2</descr>
		<sketch x1="0" y1="3" x2="11" y2="3" />
	</frame>
	<frame pos="12">
		<descr>Footer</descr>
		<sketch x1="0" y1="4" x2="11" y2="4" />
	</frame>
	<frame pos="13">
		<descr>Footer</descr>
		<sketch x1="0" y1="5" x2="11" y2="5" />
	</frame>
</frames>

',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>
            <@wp.currentPage param="title" /> - <@wp.i18n key="PORTAL_TITLE" />
        </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link rel="icon" href="<@wp.info key="systemParam" paramName="applicationBaseURL" />
              favicon.png" type="image/png" />
              <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
              <!--[if lt IE 9]>
              <script src="<@wp.resourceURL />static/js/entando-misc-html5-essentials/html5shiv.js"></script>
              <![endif]-->
              <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600" rel="stylesheet">

        <@c.import url="/WEB-INF/aps/jsp/models/inc/content_inline_editing.jsp" />
        <@c.import url="/WEB-INF/aps/jsp/models/inc/header-inclusions.jsp" />

    </head>
    <body>
        <div id="wrapper">
            <div class="row header-custom">
                <div class="fsi-header">
                    <div class="col-md-2 col-md-offset-1">
                        <div class="logo-names">
                            <@wp.show frame=0 />
                            <img alt="image" class="" src="/fsi-backoffice/resources/static/img/shield-logo.png">&nbsp;
                            <b>FORTRESS -</b>
                            <span>Bank &amp; Loan</span>
                        </div>
                    </div>
                    <div class="col-md-6 col-md-offset-2">
                        <@wp.show frame=1 />
                        <div class="logo-menu-pages">

                        </div>
                        <div class="logo-menu-pages">
                            <@wp.show frame=2 />

                        </div>
                        <div class="logo-menu-pages">
                            <@wp.show frame=3 />

                        </div>
                        <div class="logo-menu-pages">
                            <@wp.show frame=4 />

                        </div>
                        <div class="logo-menu-pages">
                            <@wp.show frame=5 />
                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="col-md-8">
                        <@wp.show frame=6 />
                    </div>
                    <div class="col-md-4">
                        <@wp.show frame=7 />
                    </div>
                </div>
                <div class="row">

                    <div class="col-md-4">
                        <@wp.show frame=9 />
                    </div>
                    <div class="col-md-4">
                        <@wp.show frame=10 />
                    </div>
                    <div class="col-md-4">
                        <@wp.show frame=11 />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <@wp.show frame=12 />
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col-md-12">
                    <@wp.show frame=13 />
                </div>
            </div>

        </div>
    </body>
</html>');
