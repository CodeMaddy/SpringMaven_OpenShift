<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Harsha
  Date: 11/21/2016
  Time: 10:24 AM
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
    <title>User Signin | Set Your Style</title>

    <!-- CSS Files -->
    <%String path = request.getContextPath();%>
    <link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="<%=path%>/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="<%=path%>/css/stylistDetails.css" rel="stylesheet">
    <link href="<%=path%>/css/hairtrt.css" rel="stylesheet" type="text/css">
    <link href="<%=path%>/color/default.css" rel="stylesheet">
    <link href="<%=path%>/css/VendorAdmin.css" rel="stylesheet">
</head>

<body>
<jsp:include page="header.jsp"/>

<!-- content-section-starts -->
<div class="content" style="margin: 4%;">
    <div class="container">
        <div class="login-page">
            <div class="account_grid">
                <div class="col-md-6 login-left wow fadeInLeft" data-wow-delay="0.4s">
                    <h2>NEW CUSTOMERS</h2><br/>
                    <p>By creating an account with our store, you will be able to move through the checkout process
                        faster</p><br/>
                    <a class="acount-btn" href="user_signup">Create an Account</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a class="acount-btn" href="VendorSignUp">Create a Vendor Account</a><br/><br/>
                    <p>Interested in Joining Us? Click on Above Create Vendor Account button </p>
                </div>
                <div class="col-md-1"></div>
                <div class="col-md-5 login-right wow fadeInRight" data-wow-delay="0.4s">
                    <h3>REGISTERED CUSTOMERS</h3>
                    <p>If you have an account with us, please log in.</p>
                    <form id="venLoginForm" method="post" action="authenticateuserLogin">
                        <div>
                            <span>Email Address<label>*</label></span>
                            <input type="text" id="email" name="email">
                        </div>
                        <div>
                            <span>Password<label>*</label></span>
                            <input type="password" id="password" name="password">
                        </div>
                        <a class="forgot" href="#">Forgot Your Password?</a><br/>
                        <span style="text-align: center;"><input type="submit" value="Login"></span>
                        <p style="text-align: center;">Looking for Vendor Signin ??<a href="VendorSignin"> Click here </a></p>
                    </form>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"/>
<script type="text/javascript" src="<%=path%>/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/bootstrap-multiselect.js"></script>
<script src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script type="text/javascript" src="<%=path%>/js/jquery.sticky.js"></script>
<script type="text/javascript" src="<%=path%>/js/slippry.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="<%=path%>/js/morphext.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/gmap.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery.mb.YTPlayer.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery.easing.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery.scrollTo.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery.appear.js"></script>
<script type="text/javascript" src="<%=path%>/js/stellar.js"></script>
<script type="text/javascript" src="<%=path%>/js/wow.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/owl.carousel.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/nivo-lightbox.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery.nicescroll.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/custom.js"></script>
<script type="text/javascript" src="<%=path%>/js/vendor.js"></script>
</body>
</html>
