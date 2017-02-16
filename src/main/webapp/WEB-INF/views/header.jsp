<%--
  Created by IntelliJ IDEA.
  User: Gourav
  Date: 1/25/2017
  Time: 3:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- Navigation -->
<div id="navigation">
    <nav class="navbar navbar-custom" role="navigation">
        <div class="container">
            <div class="row">
                <div class="col-md-2 mob-logo">
                    <div class="row">
                        <div class="site-logo">
                            <a href="index#gallery" style="text-decoration: none;"><h5>Set Your Style</h5></a>
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
                                <li class="active"><a href="index#gallery">Home</a></li>
                                <li ><a href="user_signin">Login</a></li>
                                <li class="dropdown nav-toggle">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Men<b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a class="external" href="Hairstyles">Hair Style</a></li>
                                        <li><a class="external" href="ViewSkinTreatments">Skin Treatments</a></li>
                                        <li><a class="external" href="hairtrt">Hair Treatments</a></li>
                                        <li><a class="external" href="spa">Spa</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown nav-toggle">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Woman<b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a class="external" href="Hairstyles">Hair Style</a></li>
                                        <li><a class="external" href="ViewSkinTreatments">Skin Treatments</a></li>
                                        <li><a class="external" href="hairtrt">Hair Treatments</a></li>
                                        <li><a class="external" href="spa">Spa</a></li>
                                    </ul>
                                </li>
                                <li><a href="#about">About Us</a></li>
                                <li><a href="#contact">Contact</a></li>
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
</body>
</html>
