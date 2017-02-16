<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Gourav
  Date: 11/1/2016
  Time: 5:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" href="<%=request.getContextPath()%>/img/favicon.ico">
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
    <title>Vendor SignUp | Set Your Style</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<main id="vSignUp">
    <div class="container" style="padding-right: 10%; padding-left: 10%;">
        <div class="card-form" style="border-radius: 10px; background: white;
        box-shadow: 0 27px 55px 0 rgba(0, 0, 0, 0.3), 0 17px 17px 0 rgba(0, 0, 0, 0.15);">
            <form class="form-vertical" id="vendorSubmitForm" action='vendorSignupSubmitForm' method="post"
                  enctype="multipart/form-data">
                <fieldset>
                    <div id="form-title" style="height:4em; width:100%; display: flex; align-items: center; justify-content: center;
                 font-size: 2em; font-weight: bold; background: #3588c6; border-radius: 5px 5px 0 0;
                 color: #ffffff">VENDOR REGISTRATION
                    </div>
                    <div class="form-body" style="padding: 20px;">
                        <div class="row">
                            <div class="col-xs-8">
                                <div class="saloonName">
                                    <input id="saloon_name" name="saloonName" class="form-control" type="text"
                                           placeholder="Enter Saloon Name *"
                                           required>
                                </div>
                                <br/>
                                <input id="owner_name" name="ownerName" class="form-control" type="text"
                                       placeholder="Enter Owner Name *"
                                       required><br/>
                                <textarea id="description" name="description" class="form-control" rows="5"
                                          placeholder="Write few lines about Saloon *" required></textarea>
                            </div>
                            <div class="col-xs-4">
                                <div id="addSaloonImage">
                                    <div id="addSaloonImage1">
                                        <div class="picture-container">
                                            <div class="picture">
                                                <div id="ad">
                                                    <img src="<%=path%>/images/addpicture.png" title="Add Image">
                                                </div>
                                                <input class="form-control" type="file" name="file" id="addImgBtn"
                                                       title="Add Saloon Image" accept=".jpg,.png,.jpeg"/>
                                                <div id="addSaloonImageLabel">
                                                    <label>Add Saloon Image</label><br/>
                                                    <small>Preferred Size: 400 x 350</small>
                                                </div>
                                                <img src="" class="picture-src" id="wizardPicturePrw" title=""
                                                     style="visibility: hidden;">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br/>
                        <legend>Services</legend>
                        <div class="well">
                            <div class="row">
                                <div class="col-xs-7">
                                    <label>Types of services provided </label>
                                    <div style="margin-left: 3em;">
                                        <label class="checkbox-inline">
                                            <input name="services" class="service"
                                                   type="checkbox" value="HairStyles">Hair Styling</label>
                                        <label class="checkbox-inline">
                                            <input name="services" class="service"
                                                   type="checkbox" value="HairTreatments">Hair Treatments
                                        </label>
                                        <label class="checkbox-inline">
                                            <input name="services" class="service"
                                                   type="checkbox" value="SkinTreatments">Skin Treatments
                                        </label>
                                        <label class="checkbox-inline">
                                            <input name="services" class="service"
                                                   type="checkbox" value="Spa">Spa
                                        </label>
                                    </div>
                                </div>
                                <div class="col-xs-5">
                                    <label>Services provided for </label>
                                    <div style="margin-left: 5em;">
                                        <label class="checkbox-inline">
                                            <input name="servicesfor" type="checkbox" value="Men">Men
                                        </label>
                                        <label class="checkbox-inline">
                                            <input name="servicesfor" type="checkbox" value="Women">Women
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <legend>Contact Details</legend>
                        <div class="well">
                            <div class="row">
                                <div class="col-xs-6">
                                    <label>Email ID </label>
                                    <input id="email" name="email" class="form-control" type="email"
                                           placeholder="Enter Email ID *"
                                           required>
                                </div>
                                <div class="col-xs-6">
                                    <label>Mobile No/Landline No </label>
                                    <input id="phno" name="phoneNo" class="form-control" type="number"
                                           placeholder="Enter Phone Number *"
                                           required>
                                </div>
                            </div>
                            <br/>
                            <label>Address</label>
                            <div class="row">
                                <div class="col-md-6">
                                    <input id="addr1" name="addr1" class="form-control" type="text"
                                           placeholder="Enter Address Line1 *"
                                           required>
                                </div>
                                <div class="col-md-6">
                                    <input id="addr_landmark" name="landmark" class="form-control" type="text"
                                           placeholder="Enter Landmark *"
                                           required>
                                </div>
                            </div>
                            <br/>
                            <div class="row">
                                <div class="col-xs-6">
                                    <input id="addr_street" name="street" class="form-control" type="text"
                                           placeholder="Enter Street Name *"
                                           required>
                                </div>
                                <div class="col-xs-6">
                                    <input id="pinCode" name="pincode" class="form-control" pattern="[0-9]*"
                                           type="number"
                                           placeholder="Enter Pincode *" required>
                                </div>
                            </div>
                            <br/>
                            <div class="row">
                                <div class="col-xs-6">
                                    <input id="city" name="city" class="form-control" type="text"
                                           placeholder="Enter City *"
                                           required>
                                </div>
                                <div class="col-xs-6">
                                    <input id="state" name="state" class="form-control" type="text"
                                           placeholder="Enter State *"
                                           required>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="text-align: center">
                            <div class="col-xs-3"></div>
                            <div class="col-xs-3">
                                <button class="btn btn-lg btn-primary btn-block" type="submit">Register</button>
                            </div>
                            <div class="col-xs-3">
                                <button class="btn btn-lg btn-primary btn-block" type="reset">Clear</button>
                            </div>
                            <div class="col-xs-3"></div>
                        </div>
                    </div>
                </fieldset>
            </form>
            <div style="align-content: center; text-align: center;">
                <p>already registered? <a href="VendorSignin">Click here</a></p>
            </div>
            <br/><br/>
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
