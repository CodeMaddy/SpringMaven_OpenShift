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
    <title>Edit Hair Treatment | Vendor </title>

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
<jsp:include page="../vendor_header.jsp" />
<%Vendor vendor = (Vendor) session.getAttribute("vendor");%>
<div id="main">
    <div class="container">
        <form class="form-horizontal" id="" action='updateHairTreatmentForm' method="POST"
              enctype="multipart/form-data">
            <div class="well well-lg" style="margin: 1.5%; border-radius: 0; box-shadow: 0 0 30px black;">
                <h1 style="text-align: center;">EDIT HAIR TREATMENT DETAILS</h1><br/>
                <fieldset>
                    <legend></legend>
                    <div id="addImages">
                        <div style="width: 65%;height: 89%; margin-top: 0px; content: 'Add Image 1'; position: absolute; float: left; margin-left: 0; border: dashed #2e6da4;
    box-shadow: 0.5px 0.5px 0.5px 0.5px #888888;">
                            <div class="picture-container">
                                <div class="picture">
                                    <input class="form-control" name="files" type="file" id="addImgBtn1"
                                           title="Add Hairstyle Image 1" accept=".jpg,.png,.jpeg"/>
                                    <img src="<%=path%>/showImage/${hairTreatment.htPics[0]}" class="picture-src"
                                         id="wizardPicturePrw1" title=""
                                         style="object-fit: contain;" name="file">
                                </div>
                            </div>
                        </div>
                        <div style="position: absolute; width: 31%; height: 44%; float: right; right: 1%; border: dashed #2e6da4;
    box-shadow: 0.5px 0.5px 0.5px 0.5px #888888;">
                            <div class="picture-container">
                                <div class="picture">
                                    <input class="form-control" name="files" type="file" id="addImgBtn2"
                                           title="Add Hairstyle Image 2" accept=".jpg,.png,.jpeg"/>
                                    <img src="<%=path%>/showImage/${hairTreatment.htPics[1]}" class="picture-src"
                                         id="wizardPicturePrw2" title=""
                                         style="object-fit: contain;" name="file">
                                </div>
                            </div>
                        </div>
                        <div style="position: absolute; width: 31%; height: 44%; float: right; top: 45%; right: 1%; border: dashed #2e6da4;
    box-shadow: 0.5px 0.5px 0.5px 0.5px #888888;">
                            <div class="picture-container">
                                <div class="picture">
                                    <input class="form-control" name="files" type="file" id="addImgBtn3"
                                           title="Add Hairstyle Image 3" accept=".jpg,.png,.jpeg"/>
                                    <img src="<%=path%>/showImage/${hairTreatment.htPics[2]}" class="picture-src"
                                         id="wizardPicturePrw3" title=""
                                         style="object-fit: contain; " name="file">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-12 col-lg-12 form-group">
                        <label class="col-xs-2 col-md-2 col-lg-2">HairStyle Name</label>
                        <div class="col-xs-4 col-md-4 col-lg-4">
                            <input name="htName" type="text" id="htName"
                                   value="${hairTreatment.htName}"
                                   class="form-control name">
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-12 col-lg-12 form-group">
                        <label class="col-xs-2 col-md-2 col-lg-2">HairStyle for</label>
                        <div class="col-xs-4 col-md-4 col-lg-4">
                            <c:choose>
                                <c:when test="${hairTreatment.htFor == 'Men'}">
                                    <input type="radio" checked name="htFor" class="input-xlarge" value="Men"><span>&nbsp;Men</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="htFor" class="input-xlarge"
                                           value="Women"><span>&nbsp;Women</span>
                                </c:when>
                                <c:otherwise>
                                    <input type="radio" name="hairstyleFor" class="input-xlarge" value="Men"><span>&nbsp;Men</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="radio" checked name="hairstyleFor" class="input-xlarge"
                                           value="Women"><span>&nbsp;Women</span>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>

                    <div class="col-xs-12 col-md-12 col-lg-12 form-group margin50">
                        <label class="col-xs-2 col-md-2 col-lg-2">Description </label>
                        <div class="col-xs-4 col-md-4 col-lg-4">
                            <textarea rows="3" placeholder="" name="htDesc"
                                      class="form-control name">${hairTreatment.htDesc}</textarea>
                        </div>
                    </div>

                    <div class="col-xs-12 col-md-12 col-lg-12 form-group margin50">
                        <label class="col-xs-2 col-md-2 col-lg-2">Instructions to use</label>
                        <div class="col-xs-4 col-md-4 col-lg-4">
                            <textarea rows="3" placeholder="" name="htInstruct"
                                      class="form-control name">${hairTreatment.htInstruct}</textarea>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-12 col-lg-12 form-group">
                        <label class="col-xs-2 col-md-2 col-lg-2">Quantity</label>
                        <div class="col-xs-4 col-md-4 col-lg-4">
                            <input type="number" name="htQty" step="0.10" value="${hairTreatment.htQty}"
                                   class="form-control name">
                        </div>
                    </div>

                    <div class="col-xs-12 col-md-12 col-lg-12 form-group">
                        <label class="col-xs-2 col-md-2 col-lg-2">Price</label>
                        <div class="col-xs-4 col-md-4 col-lg-4">
                            <input type="number" name="htPrice" value="${hairTreatment.htPrice}" class="form-control name">
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-12 col-lg-12 form-group">
                        <label class="col-xs-2 col-md-2 col-lg-2">Discount</label>
                        <div class="col-xs-4 col-md-4 col-lg-4">
                            <input type="number" name="htDiscount" step="0.01" placeholder="0.00" max="1" value="${hairTreatment.htDiscount}"
                                   class="form-control name">
                        </div>
                    </div>

                    <div class="row">
                        <label class="col-xs-4 col-md-4 col-lg-4 control-label"></label>

                        <div class="col-xs-4 col-md-4 col-lg-4">
                            <button id="submit" type="submit" class="btn btn-primary acount-btn">UPDATE HAIR TREATMENT
                            </button>
                            &nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;
                            <button type="reset" class="btn btn-primary acount-btn">CLEAR</button>
                        </div>
                        <label class="col-xs-4 col-md-4 col-lg-4 control-label"></label>
                    </div>
                    <input type="text" name="vendorSaloonName" value="${vendor.saloonName}"
                           style="visibility: hidden"/>
                    <input type="text" name="vendorEmail" value="${vendor.email}" style="visibility: hidden"/>
                </fieldset>
            </div>
        </form>
    </div>
</div><!--END OF MAIN DIV-->


<jsp:include page="../vendor_footer.jsp" />

<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/wow.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap-multiselect.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/AdminJS.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/vendor.js"></script>
</body>
</html>
