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
		<descr>Sub Bar 1</descr>
		<sketch x1="0" y1="2" x2="6" y2="2" />
	</frame>
	<frame pos="9">
		<descr>Sub Bar 2</descr>
		<sketch x1="7" y1="2" x2="11" y2="2" />
	</frame>
	<frame pos="10">
		<descr>Content 1 left</descr>
		<sketch x1="0" y1="3" x2="3" y2="3" />
	</frame>
	<frame pos="11">
		<descr>Content 1 center</descr>
		<sketch x1="4" y1="3" x2="7" y2="3" />
	</frame>
	<frame pos="12">
		<descr>Content 1 right</descr>
		<sketch x1="8" y1="3" x2="11" y2="3" />
	</frame>
	<frame pos="13">
		<descr>Content 2</descr>
		<sketch x1="0" y1="4" x2="11" y2="4" />
	</frame>
	<frame pos="14">
		<descr>Content 3</descr>
		<sketch x1="0" y1="5" x2="11" y2="5" />
	</frame>
	<frame pos="15">
		<descr>Footer</descr>
		<sketch x1="0" y1="6" x2="11" y2="6" />
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
              <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600" rel="stylesheet">

        <@c.import url="/WEB-INF/aps/jsp/models/inc/content_inline_editing.jsp" />
        <@c.import url="/WEB-INF/aps/jsp/models/inc/header-inclusions.jsp" />

    </head>
    <body class="pace-done mini-navbar">
        <div id="wrapper">

            <nav class="navbar-default navbar-static-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav metismenu" id="side-menu">
                        <li class="nav-header">
                            <div class="dropdown profile-element">
                                <span>
                                    <img alt="image" class="" src="/fsi-backoffice/resources/static/img/shield-logo.png">
                                </span>
                            </div>
                            <div class="logo-element">
                                <img alt="image" class="" src="/fsi-backoffice/resources/static/img/shield-logo.png">
                            </div>
                        </li>
                        <li class="active">
                            <!--<a href="<@wp.url page="customer_internal" />" ><i class="fa fa-th-large"></i></a>-->
                            <a href="#" ><i class="fa fa-tachometer"></i></a>
                        </li>
                        <li>
                            <!--<a href="<@wp.url page="customer_internal" />" ><i class="fa fa-diamond"></i></a>-->
                            <a href="#"><i class="fa fa-user"></i></a>
                        </li>
                    </ul>

                </div>
            </nav>

            <div id="page-wrapper" class="gray-bg dashbard-1">
                <div class="row border-bottom">
                    <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                        <div class="navbar-header">

                            <div class="logo-names">
                                <@wp.show frame=0 />

                                <b>FORTRESS -</b>
                                <span>Bank &amp; Loan</span>
                           
                            <@wp.ifauthorized groupName="account_executive">
                             <a class="btn btn-success btn-spacer-executive" href="<@wp.url page="form_mobile" />" >Add customer</a>
                            </@wp.ifauthorized>
                           
                            </div>

                        </div>
                        <ul class="nav navbar-top-links navbar-right">
                            <li>
                                <@wp.show frame=1 />
                                <span class="m-r-sm  welcome-message"></span>
                            </li>
                            <li class="dropdown">
                                <@wp.show frame=2 />

                                <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                                    <i class="fa fa-envelope"></i>  <span class="label label-warning">16</span>
                                </a>
                                <ul class="dropdown-menu dropdown-messages">
                                    <li>
                                        <div class="dropdown-messages-box">
                                            <a href="profile.html" class="pull-left">
                                                <img alt="image" class="img-circle" src="img/a7.jpg">
                                            </a>
                                            <div class="media-body">
                                                <small class="pull-right">46h ago</small>
                                                <strong>Mike Loreipsum</strong> started following <strong>Monica Smith</strong>. <br>
                                                <small class="text-muted">3 days ago at 7:58 pm - 10.06.2014</small>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <div class="dropdown-messages-box">
                                            <a href="profile.html" class="pull-left">
                                                <img alt="image" class="img-circle" src="img/a4.jpg">
                                            </a>
                                            <div class="media-body ">
                                                <small class="pull-right text-navy">5h ago</small>
                                                <strong>Chris Johnatan Overtunk</strong> started following <strong>Monica Smith</strong>. <br>
                                                <small class="text-muted">Yesterday 1:21 pm - 11.06.2014</small>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <div class="dropdown-messages-box">
                                            <a href="profile.html" class="pull-left">
                                                <img alt="image" class="img-circle" src="img/profile.jpg">
                                            </a>
                                            <div class="media-body ">
                                                <small class="pull-right">23h ago</small>
                                                <strong>Monica Smith</strong> love <strong>Kim Smith</strong>. <br>
                                                <small class="text-muted">2 days ago at 2:30 am - 11.06.2014</small>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <div class="text-center link-block">
                                            <a href="#">
                                                <i class="fa fa-envelope"></i> <strong>Read All Messages</strong>
                                            </a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <@wp.show frame=3 />

                                <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#" aria-expanded="false">
                                    <i class="fa fa-bell"></i>  <span class="label label-primary">8</span>
                                </a>
                                <ul class="dropdown-menu dropdown-alerts">
                                    <li>
                                        <a href="mailbox.html">
                                            <div>
                                                <i class="fa fa-envelope fa-fw"></i> You have 16 messages
                                                <span class="pull-right text-muted small">4 minutes ago</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="profile.html">
                                            <div>
                                                <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                                <span class="pull-right text-muted small">12 minutes ago</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="grid_options.html">
                                            <div>
                                                <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                                <span class="pull-right text-muted small">4 minutes ago</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <div class="text-center link-block">
                                            <a href="notifications.html">
                                                <strong>See All Alerts</strong>
                                                <i class="fa fa-angle-right"></i>
                                            </a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <@wp.show frame=4 />
                            </li>
                            <li>
                                <@wp.show frame=5 />
                            </li>
                        </ul>
                    </nav>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <div class="wrapper wrapper-content">


                            <@wp.ifauthorized groupName="knowledge_worker">
                            <div class="fsi-customer-header">
                                <h2>Hi Chandler Bing</h2>
                                <ol class="breadcrumb">
                                    <li>
                                        <a href="#"><@wp.currentPage param="title" /></a>
                                    </li>
                                </ol>
                            </div>
                            </@wp.ifauthorized>

                            <@wp.ifauthorized groupName="legal_worker">

                            <style>
                                .navbar-fixed-top, .navbar-static-top {
                                    background: #2A125A;
                                }
                                .metismenu > li.active {
                                    border-left: 4px solid #8959E9;
                                    background: #1B083F;
                                }
                                #wrapper {
                                    width: 100%;
                                    overflow-x: hidden;
                                    background: #2a125a;
                                }
                                .logo-element {
                                    text-align: center;
                                    font-size: 18px;
                                    font-weight: 600;
                                    color: white;
                                    display: none;
                                    padding: 9px 0;
                                    background: #2a125a;
                                }
                            </style>


                            <div class="fsi-customer-header">
                                <h2>Hi Monica Brown </h2>
                                <ol class="breadcrumb">
                                    <li>
                                        <a href="#"><@wp.currentPage param="title" /></a>
                                    </li>
                                </ol>
                            </div>
                            </@wp.ifauthorized>
                            <@wp.ifauthorized groupName="account_executive">
                            <div class="fsi-customer-header">
                                <h2>Hi John Williams </h2>
                                <ol class="breadcrumb">
                                    <li>
                                        <a href="#"><@wp.currentPage param="title" /></a>
                                    </li>
                                </ol>
                            </div>
                            </@wp.ifauthorized>

                            <div class="col-md-8">
                                <@wp.show frame=6 />
                            </div>
                            <div class="col-md-4">
                                <@wp.show frame=7 />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-7">
                                <@wp.show frame=8 />
                            </div>
                            <div class="col-md-5">
                                <@wp.show frame=9 />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <@wp.show frame=10 />
                            </div>
                            <div class="col-md-4">
                                <@wp.show frame=11/>
                            </div>
                            <div class="col-md-4">
                                <@wp.show frame=12 />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <@wp.show frame=13 />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <@wp.show frame=14 />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row" style="margin-top:3em;">
                   <@wp.show frame=15 />
                </div>
            </div>
        </div>
    </body>
</html>
');
INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('fsi-dashboard-responsive','FSI Dashboard responsive','<?xml version="1.0" encoding="UTF-8"?>
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
		<descr>Sub Bar 1</descr>
		<sketch x1="0" y1="2" x2="6" y2="2" />
	</frame>
	<frame pos="9">
		<descr>Sub Bar 2</descr>
		<sketch x1="7" y1="2" x2="11" y2="2" />
	</frame>
	<frame pos="10">
		<descr>Content 1 left</descr>
		<sketch x1="0" y1="3" x2="3" y2="3" />
	</frame>
	<frame pos="11">
		<descr>Content 1 center</descr>
		<sketch x1="4" y1="3" x2="7" y2="3" />
	</frame>
	<frame pos="12">
		<descr>Content 1 right</descr>
		<sketch x1="8" y1="3" x2="11" y2="3" />
	</frame>
	<frame pos="13">
		<descr>Content 2</descr>
		<sketch x1="0" y1="4" x2="11" y2="4" />
	</frame>
	<frame pos="14">
		<descr>Content 3</descr>
		<sketch x1="0" y1="5" x2="11" y2="5" />
	</frame>
	<frame pos="15">
		<descr>Footer</descr>
		<sketch x1="0" y1="6" x2="11" y2="6" />
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
              <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600" rel="stylesheet">

        <@c.import url="/WEB-INF/aps/jsp/models/inc/content_inline_editing.jsp" />
        <@c.import url="/WEB-INF/aps/jsp/models/inc/header-inclusions_1.jsp" />

    </head>
     <body class="mobile-background">
        <nav class="navbar navbar-default fsi-navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"></a>
                    <img class="brand-img" alt="Brand" src="/fsi-backoffice/resources/static/img/shield-logo.png">
                    <span class="brand-company">FORTRESS - <span>Bank &amp; Loan </span></span>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                   <ul class="nav navbar-nav navbar-right">
                        <@wp.show frame=0 />
                        <@wp.show frame=1 />
                        <@wp.show frame=2 />
                        <@wp.show frame=4 />
                        <@wp.show frame=5 />
                     </div>
                </div>
            </div>
        </nav>

 <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="">

                    <div class="col-md-8">
                        <@wp.show frame=6 />
                    </div>
                    <div class="col-md-4">
                        <@wp.show frame=7 />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-7">
                        <@wp.show frame=8 />
                    </div>
                    <div class="col-md-5">
                        <@wp.show frame=9 />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <@wp.show frame=10 />
                    </div>
                    <div class="col-md-4">
                        <@wp.show frame=11/>
                    </div>
                    <div class="col-md-4">
                        <@wp.show frame=12 />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <@wp.show frame=13 />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <@wp.show frame=14 />
                    </div>
                </div>
            </div>
        </div>
       </div> 
        <div class="row">
            <div class="col-md-12">
                <@wp.show frame=15 />
            </div>
        </div>
    </div>
</div>
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
        <div id="">
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
INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('fsi-client-onboarding','FSI Client Onboarding','<?xml version="1.0" encoding="UTF-8"?>
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
		<sketch x1="0" y1="2" x2="3" y2="2" />
	</frame>
	<frame pos="8">
		<descr>Sub Bar 1</descr>
		<sketch x1="4" y1="2" x2="7" y2="2" />
	</frame>
	<frame pos="9">
		<descr>Sub Bar 2</descr>
		<sketch x1="8" y1="2" x2="11" y2="2" />
	</frame>
	<frame pos="10">
		<descr>Content 1 left</descr>
		<sketch x1="0" y1="3" x2="3" y2="3" />
	</frame>
	<frame pos="11">
		<descr>Content 1 center</descr>
		<sketch x1="4" y1="3" x2="7" y2="3" />
	</frame>
	<frame pos="12">
		<descr>Content 1 right</descr>
		<sketch x1="8" y1="3" x2="11" y2="3" />
	</frame>
	<frame pos="13">
		<descr>Content 2</descr>
		<sketch x1="0" y1="4" x2="11" y2="4" />
	</frame>
	<frame pos="14">
		<descr>Content 3</descr>
		<sketch x1="0" y1="5" x2="11" y2="5" />
	</frame>
	<frame pos="15">
		<descr>Footer</descr>
		<sketch x1="0" y1="6" x2="11" y2="6" />
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
              <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600" rel="stylesheet">

        <@c.import url="/WEB-INF/aps/jsp/models/inc/content_inline_editing.jsp" />
        <@c.import url="/WEB-INF/aps/jsp/models/inc/header-inclusions.jsp" />

    </head>
    <body class="pace-done mini-navbar">
        <div id="wrapper">

            <nav class="navbar-default navbar-static-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav metismenu" id="side-menu">
                        <li class="nav-header">
                            <div class="dropdown profile-element">
                                <span>
                                    <img alt="image" class="" src="/fsi-backoffice/resources/static/img/shield-logo.png">
                                </span>
                            </div>
                            <div class="logo-element">
                                <img alt="image" class="" src="/fsi-backoffice/resources/static/img/shield-logo.png">
                            </div>
                        </li>
                        <li class="active">
                            <!--<a href="<@wp.url page="customer_internal" />" ><i class="fa fa-th-large"></i></a>-->
                            <a href="#" ><i class="fa fa-tachometer"></i></a>
                        </li>
                        <li>
                            <!--<a href="<@wp.url page="customer_internal" />" ><i class="fa fa-diamond"></i></a>-->
                            <a href="#"><i class="fa fa-user"></i></a>
                        </li>
                    </ul>
                </div>
            </nav>
            <div id="page-wrapper" class="gray-bg dashbard-1">
                <div class="row border-bottom">
                    <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                        <div class="navbar-header">
                            <div class="logo-names">
                                <@wp.show frame=0 />
                                <b>FORTRESS -</b>
                                <span>Bank &amp; Loan</span>
                            </div>
                        </div>
                        <ul class="nav navbar-top-links navbar-right">
                            <li>
                                <@wp.show frame=1 />
                                <span class="m-r-sm  welcome-message"></span>
                            </li>
                            <li class="dropdown">
                                <@wp.show frame=2 />

                                <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                                    <i class="fa fa-envelope"></i>  <span class="label label-warning">16</span>
                                </a>
                                <ul class="dropdown-menu dropdown-messages">
                                    <li>
                                        <div class="dropdown-messages-box">
                                            <a href="profile.html" class="pull-left">
                                                <img alt="image" class="img-circle" src="img/a7.jpg">
                                            </a>
                                            <div class="media-body">
                                                <small class="pull-right">46h ago</small>
                                                <strong>Mike Loreipsum</strong> started following <strong>Monica Smith</strong>. <br>
                                                <small class="text-muted">3 days ago at 7:58 pm - 10.06.2014</small>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <div class="dropdown-messages-box">
                                            <a href="profile.html" class="pull-left">
                                                <img alt="image" class="img-circle" src="img/a4.jpg">
                                            </a>
                                            <div class="media-body ">
                                                <small class="pull-right text-navy">5h ago</small>
                                                <strong>Chris Johnatan Overtunk</strong> started following <strong>Monica Smith</strong>. <br>
                                                <small class="text-muted">Yesterday 1:21 pm - 11.06.2014</small>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <div class="dropdown-messages-box">
                                            <a href="profile.html" class="pull-left">
                                                <img alt="image" class="img-circle" src="img/profile.jpg">
                                            </a>
                                            <div class="media-body ">
                                                <small class="pull-right">23h ago</small>
                                                <strong>Monica Smith</strong> love <strong>Kim Smith</strong>. <br>
                                                <small class="text-muted">2 days ago at 2:30 am - 11.06.2014</small>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <div class="text-center link-block">
                                            <a href="#">
                                                <i class="fa fa-envelope"></i> <strong>Read All Messages</strong>
                                            </a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <@wp.show frame=3 />
                                <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#" aria-expanded="false">
                                    <i class="fa fa-bell"></i>  <span class="label label-primary">8</span>
                                </a>
                                <ul class="dropdown-menu dropdown-alerts">
                                    <li>
                                        <a href="mailbox.html">
                                            <div>
                                                <i class="fa fa-envelope fa-fw"></i> You have 16 messages
                                                <span class="pull-right text-muted small">4 minutes ago</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="profile.html">
                                            <div>
                                                <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                                <span class="pull-right text-muted small">12 minutes ago</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="grid_options.html">
                                            <div>
                                                <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                                <span class="pull-right text-muted small">4 minutes ago</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <div class="text-center link-block">
                                            <a href="notifications.html">
                                                <strong>See All Alerts</strong>
                                                <i class="fa fa-angle-right"></i>
                                            </a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <@wp.show frame=4 />
                            </li>
                            <li>
                                <@wp.show frame=5 />
                            </li>
                        </ul>
                    </nav>
                </div>

                <div class="">

                    <div class="wrapper wrapper-content">
                        <@wp.ifauthorized groupName="client_manager">
                        <style>
                            .navbar-fixed-top, .navbar-static-top {
                                background: #3A3E46;
                            }
                            .metismenu > li.active {
                                border-left: 4px solid #1CB295;
                                background: #292D35;
                            }
                            #wrapper {
                                width: 100%;
                                overflow-x: hidden;
                                background: #3A3E46;
                            }
                            .logo-element {
                                text-align: center;
                                font-size: 18px;
                                font-weight: 600;
                                color: white;
                                display: none;
                                padding: 9px 0;
                                background: #3A3E46;
                            }
                        </style>
                        <div class="fsi-customer-header">
                            <h2>Hi John William</h2>
                            <ol class="breadcrumb">
                                <li>
                                    <a href="#"><@wp.currentPage param="title" /></a>
                                </li>
                            </ol>
                        </div>
                        </@wp.ifauthorized>
                        <div class="col-md-12">
                            <@wp.show frame=6 />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <@wp.show frame=7 />
                        </div>
                        <div class="col-md-4">
                            <@wp.show frame=8 />
                        </div>
                        <div class="col-md-4">
                            <@wp.show frame=9 />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <@wp.show frame=10 />
                        </div>
                        <div class="col-md-4">
                            <@wp.show frame=11/>
                        </div>
                        <div class="col-md-4">
                            <@wp.show frame=12 />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <@wp.show frame=13 />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <@wp.show frame=14 />
                        </div>
                    </div>
                    <div class="row" style="margin-top:3em;">
                        <@wp.show frame=15 />
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
');
