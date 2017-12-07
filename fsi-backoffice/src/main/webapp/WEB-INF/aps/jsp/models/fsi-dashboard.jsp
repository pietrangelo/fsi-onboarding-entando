<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>
            <wp:currentPage param="title" /> - <wp:i18n key="PORTAL_TITLE" />
        </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link rel="icon" href="<wp:info key="systemParam" paramName="applicationBaseURL" />
              favicon.png" type="image/png" />
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600" rel="stylesheet">

        <c:import url="/WEB-INF/aps/jsp/models/inc/content_inline_editing.jsp" />
        <c:import url="/WEB-INF/aps/jsp/models/inc/header-inclusions.jsp" />
        <c:import url="/WEB-INF/aps/jsp/models/inc/fsi-dashboard-style.jsp" />

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
                            <!--<a href="<wp:url page="customer_internal" />" ><i class="fa fa-th-large"></i></a>-->
                            <a href="#" ><i class="fa fa-tachometer"></i></a>
                        </li>
                        <li>
                            <!--<a href="<wp:url page="customer_internal" />" ><i class="fa fa-diamond"></i></a>-->
                            <a href="#"><i class="fa fa-user"></i></a>
                        </li>
                    </ul>

                </div>
            </nav>

            <div id="page-wrapper" class="gray-bg dashbard-1">
                <div class="row border-bottom">
                    <nav class="navbar navbar-inverse navbar-static-top">
                      <div class="container-fluid">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                          </button>
                          <a class="navbar-brand" href="#">
                            <div class="logo-names">
                              <b>FORTRESS - </b>
                              <span>Bank &amp; Loan</span>
                            </div>
                          </a>
                        </div>

                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                          <ul class="nav navbar-nav navbar-top-links navbar-right">

                            <li>
                                <wp:show frame="1" />
                                <span class="m-r-sm  welcome-message"></span>
                            </li>
                            <li class="dropdown">
                                <wp:show frame="2" />

                                <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                                    <i class="fa fa-envelope-o"></i>  <span class="label label-warning">16</span>
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
                                                <i class="fa fa-envelope-o"></i> <strong>Read All Messages</strong>
                                            </a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <wp:show frame="3" />

                                <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#" aria-expanded="false">
                                    <i class="fa fa-bell-o"></i>  <span class="label label-primary">8</span>
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
                                <wp:show frame="4" />
                            </li>
                            <li>
                                <wp:show frame="5" />
                            </li>
                          </ul><!-- /.navbar-right -->
                        </div><!-- /.navbar-collapse -->
                      </div><!-- /.container-fluid -->
                    </nav>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <div class="wrapper wrapper-content">


                            <wp:ifauthorized groupName="knowledge_worker">
                                <div class="fsi-customer-header">
                                    <h2>Hi Chandler Bing</h2>
                                    <ol class="breadcrumb">
                                        <li>
                                            <a href="#"><wp:currentPage param="title" /></a>
                                        </li>
                                    </ol>
                                </div>
                            </wp:ifauthorized>

                            <wp:ifauthorized groupName="legal_worker">

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
                                            <a href="#"><wp:currentPage param="title" /></a>
                                        </li>
                                    </ol>
                                </div>
                            </wp:ifauthorized>
                            <wp:ifauthorized groupName="account_executive">
                                <div class="fsi-customer-header">
                                    <h2>Hi John Williams </h2>
                                    <ol class="breadcrumb">
                                        <li>
                                            <a href="#"><wp:currentPage param="title" /></a>
                                        </li>
                                    </ol>
                                </div>
                            </wp:ifauthorized>

                            <div class="col-md-8">
                                <wp:show frame="6" />
                            </div>
                            <div class="col-md-4">
                                <wp:show frame="7"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-7">
                                <wp:show frame="8"/>
                            </div>
                            <div class="col-md-5">
                                <wp:show frame="9"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <wp:show frame="10" />
                            </div>
                            <div class="col-md-4">
                                <wp:show frame="11"/>
                            </div>
                            <div class="col-md-4">
                                <wp:show frame="12"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <wp:show frame="13"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <wp:show frame="14"/>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row" style="margin-top:3em;">
                    <wp:show frame="15"/>
                </div>
            </div>
        </div>
    </body>
</html>
