<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Gourav
  Date: 11/29/2016
  Time: 2:00 PM
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
    <title>Successfully Submitted</title>

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
<jsp:include page="vendor_header.jsp"/>

<c:if test="${service == 'RegisterSuccess'}">
    <div class="container" style="padding: 5%; margin: 2%;">
        <div class="well" style=" padding: 5%;">
            <img src="<%=path%>/images/success.png" class="img-responsive"
                 style="display: block; margin-left: auto;margin-right: auto;"/>
            <h2 style="text-align: center;">You have been successfully registered as vendor with '${vendor.email}'
                email address</h2>
            <p style="font-size: 20px;">Verification mail has been sent to your email address.
                To Activate your account please verify your email address. </p>
            <div class="row">
                <div class="col-xs-4"></div>
                <div class="col-xs-4">
                    <a href="#" class="btn btn-primary"
                       style="display: block; margin-left: auto;margin-right: auto;">Home</a>
                </div>
                <div class="col-xs-4"></div>
            </div>

        </div>
    </div>
</c:if>
<c:if test="${service == 'UpdatePasswordSuccess'}">
    <div class="container" style="padding: 5%; margin: 2%;">
        <div class="well" style=" padding: 5%;">
            <img src="<%=path%>/images/success.png" class="img-responsive"
                 style="display: block; margin-left: auto;margin-right: auto;"/>
            <h2 style="text-align: center;">Password is successfully updated</h2>
            <div class="row">
                <div class="col-xs-4"></div>
                <div class="col-xs-4">
                    <a href="VendorSignin" class="btn btn-primary"
                       style="display: block; margin-left: auto;margin-right: auto;">VENDOR SIGNIN</a>
                </div>
                <div class="col-xs-4"></div>
            </div>

        </div>
    </div>
</c:if>
<c:if test="${service == 'addHairstyle'}">
    <div class="container" style="padding: 5%; margin: 2%;">
        <div class="well" style=" padding: 5%;">
            <img src="<%=path%>/images/success.png" class="img-responsive"
                 style="display: block; margin-left: auto;margin-right: auto;"/>
            <h2 style="text-align: center;">Hairstyle added successfully</h2>
            <div class="row">
                <div class="col-xs-3"></div>
                <div class="col-xs-3">
                    <a class="btn btn-primary" href="AddHairstyle">Add one more Hairstyle</a>
                </div>
                <div class="col-xs-3">
                    <a class="btn btn-primary" href="ViewVendorHairStyles">View Hairstyles</a>
                </div>
                <div class="col-xs-3"></div>
            </div>
        </div>
    </div>
</c:if>
<c:if test="${service == 'addHairTreatment'}">
    <div class="container" style="padding: 5%; margin: 2%;">
        <div class="well" style=" padding: 5%;">
            <img src="<%=path%>/images/success.png" class="img-responsive"
                 style="display: block; margin-left: auto;margin-right: auto;"/>
            <h2 style="text-align: center;">Hair Treatment added successfully</h2>
            <div class="row">
                <div class="col-xs-3"></div>
                <div class="col-xs-3">
                    <a class="btn btn-primary" href="AddHairTreatment">Add one more Hair Treatment</a>
                </div>
                <div class="col-xs-3">
                    <a class="btn btn-primary" href="ViewVendorHairTreatments">View Hair Treatment</a>
                </div>
                <div class="col-xs-3"></div>
            </div>
        </div>
    </div>
</c:if>
<c:if test="${service == 'addSkinTreatment'}">
<div class="container" style="padding: 5%; margin: 2%;">
    <div class="well" style=" padding: 5%;">
        <img src="<%=path%>/images/success.png" class="img-responsive"
             style="display: block; margin-left: auto;margin-right: auto;"/>
        <h2 style="text-align: center;">Skin treatment added successfully</h2>
        <div class="row">
            <div class="col-xs-3"></div>
            <div class="col-xs-3">
                <a class="btn btn-primary" href="AddSkinTreatment">Add one more Skin Treatment</a>
            </div>
            <div class="col-xs-3">
                <a class="btn btn-primary" href="ViewVendorSkinTreatments">View Skin Treatments</a>
            </div>
            <div class="col-xs-3"></div>
        </div>
    </div>
</div>
</c:if>
<c:if test="${service == 'addSpa'}">
    <div class="container" style="padding: 5%; margin: 2%;">
        <div class="well" style=" padding: 5%;">
            <img src="<%=path%>/images/success.png" class="img-responsive"
                 style="display: block; margin-left: auto;margin-right: auto;"/>
            <h2 style="text-align: center;">Spa added successfully</h2>
            <div class="row">
                <div class="col-xs-3"></div>
                <div class="col-xs-3">
                    <a class="btn btn-primary" href="AddSpa">Add one more Spa</a>
                </div>
                <div class="col-xs-3">
                    <a class="btn btn-primary" href="ViewVendorSpa">View all Spa</a>
                </div>
                <div class="col-xs-3"></div>
            </div>
        </div>
    </div>
</c:if>
<c:if test="${service =='updateHairstyle'}">
    <div class="well" style="margin: 5%;">
        <h1 style="text-align: center; margin-top: 2%; margin-bottom: 2%;">Updated Hair Style details
            successfully</h1>
        <div class="row">
            <div class="col-xs-3"></div>
            <div class="col-xs-3">
                <a class="btn btn-primary" href="ViewVendorHairStyles">View Hairstyles</a>
            </div>
            <div class="col-xs-3"></div>
            <div class="col-xs-3"></div>
        </div>
    </div>
</c:if>
<c:if test="${service =='updateHairTreatment'}">
    <div class="well" style="margin: 5%;">
        <h1 style="text-align: center; margin-top: 2%; margin-bottom: 2%;">Updated Hair Treatment details
            successfully</h1>
        <div class="row">
            <div class="col-xs-3"></div>
            <div class="col-xs-3">
                <a class="btn btn-primary" href="ViewVendorHairTreatments">View Hair Treatments</a>
            </div>
            <div class="col-xs-3"></div>
            <div class="col-xs-3"></div>
        </div>
    </div>
</c:if>
<c:if test="${service =='updateSkinTreatment'}">
    <div class="well" style="margin: 5%;">
        <h1 style="text-align: center; margin-top: 2%; margin-bottom: 2%;">Updated Skin Treatment details
            successfully</h1>
        <div class="row">
            <div class="col-xs-3"></div>
            <div class="col-xs-3">
                <a class="btn btn-primary" href="ViewVendorSkinTreatments">View Skin Treatments</a>
            </div>
            <div class="col-xs-3"></div>
            <div class="col-xs-3"></div>
        </div>
    </div>
</c:if>
<c:if test="${service =='updateSpa'}">
    <div class="well" style="margin: 5%;">
        <h1 style="text-align: center; margin-top: 2%; margin-bottom: 2%;">Updated Spa details
            successfully</h1>
        <div class="row">
            <div class="col-xs-3"></div>
            <div class="col-xs-3">
                <a class="btn btn-primary" href="ViewVendorSpa">View Spa</a>
            </div>
            <div class="col-xs-3"></div>
            <div class="col-xs-3"></div>
        </div>
    </div>
</c:if>
<jsp:include page="vendor_footer.jsp"/>

<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/wow.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap-multiselect.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/AdminJS.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/vendor.js"></script>
</body>
</html>
