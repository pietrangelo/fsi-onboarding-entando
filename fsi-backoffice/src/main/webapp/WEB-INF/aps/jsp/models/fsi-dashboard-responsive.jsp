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
        <c:import url="/WEB-INF/aps/jsp/models/inc/header-inclusions_1.jsp" />

    </head>
    <body class="mobile-background">
        <nav class="navbar navbar-default fsi-navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <i class="fa fa-ellipsis-v" aria-hidden="true"></i>
                    </button>
                    <a class="navbar-brand" href="#"></a>
                    <img class="brand-img" alt="Brand" src="/fsi-backoffice/resources/static/img/shield-logo.png">
                    <span class="brand-company">SIGN UP</span>
                    <p class="brand-company-subtitle">Register a new business</p>

                </div>

                <div class="collapse navbar-collapse" id="navbar-collapse">
                    <ul class="nav navbar-nav navbar-right ">
                        <wp:show frame="0" />
                        <wp:show frame="1" />
                        <wp:show frame="2"/>
                        <wp:show frame="4" />
                        <wp:show frame="5"/>
                </div>
            </div>
        </div>
    </nav>

    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="">

                    <div class="col-md-8">
                        <wp:show frame="6" />
                    </div>
                    <div class="col-md-4">
                        <wp:show frame="7" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-7">
                        <wp:show frame="8" />
                    </div>
                    <div class="col-md-5">
                        <wp:show frame="9" />
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
                        <wp:show frame="12" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <wp:show frame="13" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <wp:show frame="14" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <wp:show frame="15" />
        </div>
    </div>
</div>
</div>
</body>
</html>
