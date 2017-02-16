<%@ page import="com.springmaven.model.Vendor" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Gourav
  Date: 11/26/2016
  Time: 10:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
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
                                    <li class="active"><a href="">Dashboard</a></li>
                                    <% if (session.getAttribute("vendor") == null) {
                                        response.sendRedirect("/VendorSignin");
                                    }
                                    %>
                                    <c:forEach var="service" items="${vendor.services}">

                                        <c:if test="${service == 'HairStyles'}">
                                            <li><a href="ViewVendorHairStyles">Hair Styles</a></li>
                                        </c:if>
                                        <c:if test="${service == 'HairTreatments'}">
                                            <li><a href="ViewVendorHairTreatments">Hair Treatments</a></li>
                                        </c:if>
                                        <c:if test="${service == 'SkinTreatments'}">
                                            <li><a href="ViewVendorSkinTreatments">Skin Treatments</a></li>
                                        </c:if>
                                        <c:if test="${service == 'Spa'}">
                                            <li><a href="ViewVendorSpa">SPA</a></li>
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

                                            <li><a class="external" href="VendorLogout"><i class="fa fa-power-off"
                                                                                           aria-hidden="true"></i>&nbsp;Log
                                                out</a>
                                            </li>
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
</body>
</html>
