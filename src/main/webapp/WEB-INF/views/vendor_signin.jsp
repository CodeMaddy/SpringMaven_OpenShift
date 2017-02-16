<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Gourav
  Date: 11/18/2016
  Time: 11:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" href="<%=request.getContextPath()%>/img/favicon.ico">
    <!-- core CSS -->
    <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/css/bootstrap-multiselect.css" rel="stylesheet" text="text/css">
    <link href="<%=request.getContextPath()%>/css/font-awesome.min.css" rel="stylesheet">

    <link href="<%=request.getContextPath()%>/css/VendorAdmin.css" rel="stylesheet" type="text/css"/>
    <title>Vendor SignIn | Set Your Style</title>
</head>
<body>
<% if (session.getAttribute("vendor") != null) {
    response.sendRedirect("/ViewVendorHairStyles");
}
%>
<jsp:include page="header.jsp"/>
<main style="margin-top: 2%; margin-bottom: 2%">
    <div class="content">
        <div class="container">
            <div class="login-page">
                <div class="account_grid">
                    <div class="col-md-6 login-left wow fadeInLeft" data-wow-delay="0.4s">
                        <h2>WANT TO MAKE YOUR SALOON BUSINESS BIGGER ??</h2>
                        <p>By creating an vendor account with our website, you will be able to post your services like
                            hairstyles,
                            hair treatments, spa, skin treatments or skin products provided at your saloon</p>
                        <div style="align-content: center; text-align: center;">
                            <a class="acount-btn" href="VendorSignUp">Create a Vendor Account</a>
                        </div>
                        <br/>
                        <p>Interested in Joining Us? Click on Above Vendor button </p>

                    </div>
                    <div class="col-md-1"></div>
                    <div class="col-md-5 login-right wow fadeInRight" data-wow-delay="0.4s">
                        <h3>REGISTERED VENDORS LOGIN</h3>
                        <p>If you have an vendor account with us, please log in using your credentials.</p>
                        <div id="venloginError"></div>
                        <form id="venLoginForm" method="post" action="authenticateVendorLogin">
                            <fieldset>
                                <div>
                                    <div style="color:red;align-content: center; text-align: center;">${error}</div>
                                    <span>Email Address<label>*</label></span>
                                    <input type="text" id="email" name="email">
                                </div>
                                <div>
                                    <span>Password<label>*</label></span>
                                    <input type="password" id="password" name="password">
                                </div>
                                <div style="align-content: center; text-align: center;">
                                    <input type="submit" value="Login"><br/><br/>
                                    <a class="forgot" href="#">Forgot Your Password?</a>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>


    </div>
</main>
<footer>
    <div class="container">
        <div class="footer_top">
            <div class="span_of_4">
                <div class="col-md-3 span1_of_4">
                    <h4>Try'em</h4>
                    <a href="#">Hair Treatment</a><br>
                    <a href="#">Skin Treatment</a><br>
                    <a href="#">Hair Styles</a><br>
                    <a href="#">Spa</a><br>
                </div>
                <div class="col-md-3 span1_of_4">
                    <h4>help</h4>
                    <a href="#help"> Help me</a>
                </div>
                <div class="col-md-3 span1_of_4">
                    <h4>account</h4>
                    <a href="signin.html">login</a><br>
                    <a href="signup.html">create an account</a><br>
                </div>
                <div class="col-md-3 span1_of_4">
                    <h4>popular</h4>
                    <a href="#gallery">Trending Hair Styles</a><br>
                    <a href="#">men</a><br>
                    <a href="#">women</a><br>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="text-center">
                    <a href="#intro" class="totop"><i class="pe-7s-angle-up pe-3x"></i></a>
                    <div class="social-widget">
                        <ul class="team-social">
                            <li class="social-facebook"><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li class="social-twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li class="social-google"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            <li class="social-dribbble"><a href="#"><i class="fa fa-dribbble"></i></a></li>
                        </ul>
                    </div>
                    <p>Set Your Style<br/>
                        &copy;Copyright 2016 - Set Your Style All rights reserved. | Designed by MSIT Team</p>
                </div>
            </div>
        </div>
    </div>
</footer>

<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/wow.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap-multiselect.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/AdminJS.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/vendor.js"></script>
</body>
</html>
