<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.springmaven.model.Vendor" %><%--
  Created by IntelliJ IDEA.
  User: Gourav
  Date: 11/22/2016
  Time: 5:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="<%=request.getContextPath()%>/img/favicon.ico">
    <meta charset="UTF-8">
    <title>Edit Spa | Vendor </title>

    <!-- core CSS -->
    <%String path = request.getContextPath();%>
    <link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="<%=path%>/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css">
    <link href="<%=path%>/css/font-awesome.min.css" rel="stylesheet">
    <link href="<%=path%>/css/VendorAdmin.css" rel="stylesheet" type="text/css"/>
    <link href="<%=path%>/css/nivo-lightbox.css" rel="stylesheet"/>
    <link href="<%=path%>/css/nivo-lightbox-theme/default/default.css" rel="stylesheet"
          type="text/css"/>
    <link href="<%=path%>/css/owl.carousel.css" rel="stylesheet" media="screen"/>
    <link href="<%=path%>/css/owl.theme.css" rel="stylesheet" media="screen"/>
    <link href="<%=path%>/color/default.css" rel="stylesheet">
</head>
<body>
<header>
    <!-- Navigation -->
    <div id="navigation">
        <nav class="navbar navbar-custom" role="navigation">
            <div class="container">
                <div class="row">
                    <div class="col-md-2 mob-logo">
                        <div class="row">
                            <div class="site-logo">
                                <h5>Set Your Style</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-10 mob-menu">
                        <div class="row">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu">
                                    <i class="fa fa-bars"></i>
                                </button>
                            </div>
                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse" id="menu">
                                <ul class="nav navbar-nav navbar-right">
                                    <li class="active"><a href="Vendor_MainPage.html">Dashboard</a></li>

                                    <% if (session.getAttribute("vendor") == null) {
                                        response.sendRedirect("/VendorSignin");
                                    }
                                        Vendor v = (Vendor) request.getAttribute("vendor");
                                    %>
                                    <c:forEach var="service" items="${vendor.getServices()}">

                                        <c:if test="${service == 'HairStyles'}">
                                            <li class="dropdown nav-toggle">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Hair
                                                    Styles<b
                                                            class="caret"></b></a>
                                                <ul class="dropdown-menu">
                                                    <li><a class="external" href="AddHairstyle">Add a Hairstyle</a>
                                                    </li>
                                                    <li><a class="external" href="EditHairstyleDetails">Edit Hairstyle Details</a></li>
                                                    <li><a class="external" href="ViewHairstyles">View HairStyles</a></li>
                                                    <li><a class="external" href="#">Delete a Hairstyle</a></li>
                                                </ul>
                                            </li>
                                        </c:if>
                                        <c:if test="${service == 'HairTreatments'}">
                                            <li class="dropdown nav-toggle">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Hair
                                                    Treatment<b
                                                            class="caret"></b></a>
                                                <ul class="dropdown-menu">
                                                    <li><a class="external" href="#">Add a Hair Treatment</a></li>
                                                    <li><a class="external" href="#">Edit a Hair Treatment</a></li>
                                                    <li><a class="external" href="#">View Hair Treatments</a></li>
                                                    <li><a class="external" href="#">Delete a Hair Treatment</a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </c:if>
                                        <c:if test="${service == 'SkinTreatments'}">
                                            <li class="dropdown nav-toggle">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Skin
                                                    Treatment<b
                                                            class="caret"></b></a>
                                                <ul class="dropdown-menu">
                                                    <li><a class="external" href="#">Add a Skin Treatment</a></li>
                                                    <li><a class="external" href="#">Edit a Skin Treatment</a></li>
                                                    <li><a class="external" href="#">View Skin Treatments</a></li>
                                                    <li><a class="external" href="#">Delete a Skin Treatment</a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </c:if>
                                        <c:if test="${service == 'Spa'}">
                                            <li class="dropdown nav-toggle">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Spa <b
                                                        class="caret"></b></a>
                                                <ul class="dropdown-menu">
                                                    <li><a class="external" href="#">Add a Spa</a></li>
                                                    <li><a class="external" href="#">Edit a Spa</a></li>
                                                    <li><a class="external" href="#">View Spa</a></li>
                                                    <li><a class="external" href="#">Delete Spa</a></li>
                                                </ul>
                                            </li>
                                        </c:if>
                                    </c:forEach>

                                    <li class="dropdown nav-toggle">

                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="uIcon">
                                            <span>Welcome ${vendor.getOwnerName()},</span>&nbsp;
                                            <i class="fa fa-user" aria-hidden="true"></i>
                                            <b class="caret"></b>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a class="external" href="#"><i class="fa fa-pencil"
                                                                                aria-hidden="true"></i>&nbsp;Edit
                                                Profile</a></li>
                                            <li><a class="external" href="#"><i class="fa fa-cog"
                                                                                aria-hidden="true"></i>&nbsp;Settings</a>
                                            </li>

                                            <li><a class="external" href="/VendorLogout"><i class="fa fa-power-off"
                                                                                            aria-hidden="true"></i>&nbsp;Log
                                                out</a>
                                            </li>
                                            <%--<% }%>--%>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <!-- /.Navbar-collapse -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.container -->
        </nav>
    </div>
    <!-- /Navigation -->
</header>


<div id="main">
<h1> EDIT HAIRSTYLE DETAILS PAGE</h1>
</div>


<jsp:include page="../vendor_footer.jsp" />

<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/wow.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap-multiselect.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/AdminJS.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/vendor.js"></script>
</body>
</html>
