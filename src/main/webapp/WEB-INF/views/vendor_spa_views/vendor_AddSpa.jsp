<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.springmaven.model.Vendor" %><%--
  Created by IntelliJ IDEA.
  User: Gourav
  Date: 11/16/2016
  Time: 4:10 PM
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
    <title>Add Spa | Vendor </title>

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
<jsp:include page="../vendor_header.jsp"/>

<div id="main" style=" background: linear-gradient( rgba(0, 0, 0, 0.3),rgba(0, 0, 0, 0.3)),
                    url(/images/addHairStyleBG.jpg) no-repeat center fixed; background-size: 100% 100%;  ">
    <div class="container">
        <form class="form-horizontal" id="addSpaForm" action='addSpaForm' method="POST"
              enctype="multipart/form-data">
            <div class="well well-lg" style="margin: 1%; border-radius: 0; box-shadow: 0 0 30px black;">
                <h1 style="text-align: center;">ADD SPA DETAILS</h1><br/>
                <fieldset>
                    <legend></legend>
                    <div id="addImages">
                        <div id="addImage1" style="width: 65%;height: 89%;">
                            <div class="picture-container">
                                <div class="picture">
                                    <div id="ad1">
                                        <div style="margin-top: 35%;">
                                            <br/>
                                            <img src="<%=path%>/images/addpicture.png" title="Add Image">
                                            <input class="form-control" name="files" type="file" id="addImgBtn1"
                                                   title="Add Spa Image 1" accept=".jpg,.png,.jpeg"/>
                                            <br/>
                                            <label>Add Spa Image 1</label><br/>
                                            <%--<small>Preferred Size: 400 x 350</small>--%>
                                        </div>
                                    </div>
                                    <img src="" class="picture-src" id="wizardPicturePrw1" title=""
                                         style="visibility: hidden;" name="file">
                                </div>
                            </div>
                        </div>
                        <div id="addImage2">
                            <div class="picture-container">
                                <div class="picture">
                                    <div id="ad2">
                                        <div style="margin-top: 35%;">
                                            <img src="<%=path%>/images/addpicture.png" title="Add Image">
                                            <input class="form-control" name="files" type="file" id="addImgBtn2"
                                                   title="Add Spa Image 2" accept=".jpg,.png,.jpeg"/>
                                            <br/>
                                            <label>Add Spa Image 2</label><br/>
                                        </div>
                                    </div>
                                    <img src="" class="picture-src" id="wizardPicturePrw2" title=""
                                         style="visibility: hidden;" name="file">
                                </div>
                            </div>
                        </div>
                        <div id="addImage3">
                            <div class="picture-container">
                                <div class="picture">
                                    <div id="ad3">
                                        <div style="margin-top: 35%;">
                                            <img src="<%=path%>/images/addpicture.png" title="Add Image">
                                            <input class="form-control" name="files" type="file" id="addImgBtn3"
                                                   title="Add Spa Image 3" accept=".jpg,.png,.jpeg"/>
                                            <br/>
                                            <label>Add Spa Image 3</label><br/>
                                            <%--<small>Preferred Size: 400 x 350</small>--%>
                                        </div>
                                    </div>
                                    <img src="" class="picture-src" id="wizardPicturePrw3" title=""
                                         style="visibility: hidden;" name="file">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-12 col-lg-12 form-group">
                    </div>
                    <div class="col-xs-12 col-md-12 col-lg-12 form-group">
                        <label class="col-xs-2 col-md-2 col-lg-2">Spa Name</label>
                        <div class="col-xs-4 col-md-4 col-lg-4">
                            <input name="spaName" type="text" id="spaName" placeholder=""
                                   class="form-control name">
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-12 col-lg-12 form-group">
                    </div>
                    <div class="col-xs-12 col-md-12 col-lg-12 form-group">
                        <label class="col-xs-2 col-md-2 col-lg-2">Spa For</label>
                        <div class="col-xs-4 col-md-4 col-lg-4">
                            <input type="radio" checked name="spaFor" class="input-xlarge"
                                   value="Men"><span>&nbsp;Men</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" name="spaFor" class="input-xlarge"
                                   value="Women"><span>&nbsp;Women</span>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-12 col-lg-12 form-group">
                    </div>
                    <div class="col-xs-12 col-md-12 col-lg-12 form-group margin50">
                        <label class="col-xs-2 col-md-2 col-lg-2">Description </label>
                        <div class="col-xs-4 col-md-4 col-lg-4">
                            <textarea rows="5" placeholder="" name="spaDesc"
                                      class="form-control name"></textarea>
                        </div>
                    </div>

                    <div class="col-xs-12 col-md-12 col-lg-12 form-group">
                        <label class="col-xs-2 col-md-2 col-lg-2">Price</label>
                        <div class="col-xs-4 col-md-4 col-lg-4">
                            <input type="number" name="spaPrice" placeholder="" class="form-control name">
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-12 col-lg-12 form-group">
                        <label class="col-xs-2 col-md-2 col-lg-2">Discount</label>
                        <div class="col-xs-4 col-md-4 col-lg-4">
                            <input type="number" name="spaDiscount" step="0.01" placeholder="0.00" max="1"
                                   class="form-control name">
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-12 col-lg-12 form-group">
                    </div>
                    <div class="row">
                        <label class="col-xs-4 col-md-4 col-lg-4 control-label"></label>

                        <div class="col-xs-4 col-md-4 col-lg-4">
                            <button id="submit" type="submit" class="btn btn-primary acount-btn">ADD SPA
                            </button>
                            &nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;
                            <button type="reset" class="btn btn-primary acount-btn">CLEAR</button>
                        </div>
                        <label class="col-xs-4 col-md-4 col-lg-4 control-label"></label>
                    </div>
                    <input type="text" name="vendorSaloonName" value="${vendor.getSaloonName()}"
                           style="visibility: hidden"/>
                    <input type="text" name="vendorEmail" value="${vendor.getEmail()}" style="visibility: hidden"/>
                </fieldset>
            </div>
        </form>
    </div>
</div><!--END OF MAIN DIV-->
<jsp:include page="../vendor_footer.jsp"/>

<script type="text/javascript" src="<%=path%>/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/wow.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/bootstrap-multiselect.js"></script>
<script type="text/javascript" src="<%=path%>/js/AdminJS.js"></script>
<script type="text/javascript" src="<%=path%>/js/vendor.js"></script>
</body>
</html>
