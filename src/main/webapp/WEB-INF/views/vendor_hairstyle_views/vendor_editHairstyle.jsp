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
    <title>Edit HairStyle | Vendor</title>

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
url(/images/addHairStyleBG.jpg) no-repeat center fixed; background-size: 100% 100%; ">
    <div class="container">
        <form class="form-horizontal" action='updateHairstyleForm' method="POST"
              enctype="multipart/form-data">
            <div class="well well-lg" style="margin: 1.5%; border-radius: 0; box-shadow: 0 0 30px black;">
                <h1 style="text-align: center;">EDIT HAIRSTYLE DETAILS</h1><br/>
                <fieldset>
                    <legend></legend>
                    <div id="addImages">
                        <div style="width: 65%;height: 89%; margin-top: 0px; content: 'Add Image 1'; position: absolute; float: left; margin-left: 0; border: dashed #2e6da4;
    box-shadow: 0.5px 0.5px 0.5px 0.5px #888888;">
                            <div class="picture-container">
                                <div class="picture">
                                    <input class="form-control" name="files" type="file" id="addImgBtn1"
                                           title="Add Hairstyle Image 1" accept=".jpg,.png,.jpeg"/>
                                    <img src="<%=path%>/showImage/${hairstyle.hairstylePics[0]}" class="picture-src"
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
                                    <img src="<%=path%>/showImage/${hairstyle.hairstylePics[1]}" class="picture-src"
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
                                    <img src="<%=path%>/showImage/${hairstyle.hairstylePics[2]}" class="picture-src"
                                         id="wizardPicturePrw3" title=""
                                         style="object-fit: contain; " name="file">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-12 col-lg-12 form-group">
                        <label class="col-xs-2 col-md-2 col-lg-2">HairStyle Name</label>
                        <div class="col-xs-4 col-md-4 col-lg-4">
                            <input name="hairstyleName" type="text" id="hairstyleName"
                                   value="${hairstyle.hairstyleName}"
                                   class="form-control name">
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-12 col-lg-12 form-group">
                        <label class="col-xs-2 col-md-2 col-lg-2">HairStyle for</label>
                        <div class="col-xs-4 col-md-4 col-lg-4">
                            <c:choose>
                                <c:when test="${hairstyle.hairstyleFor == 'Men'}">
                                    <input type="radio" checked name="hairstyleFor" class="input-xlarge"
                                           value="Men"><span>&nbsp;Men</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="hairstyleFor" class="input-xlarge"
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

                    <div class="col-xs-12 col-md-12 col-lg-12 form-group">
                        <label class="col-xs-2 col-md-2 col-lg-2" for="sFor">Suitable for <span><br><small>(Face shape)</small></span>
                        </label>
                        <div class="col-xs-4 col-md-4 col-lg-4">
                            <select id="sFor" name="suitableFor" multiple="multiple">
                                <c:forEach var="s" items="${hairstyle.suitableFor}">
                                    <c:if test="${s =='Round'}">
                                        <option value="Round" selected>Round</option>
                                    </c:if>
                                    <c:if test="${s =='Oval'}">
                                        <option value="Oval" selected>Oval</option>
                                    </c:if>
                                    <c:if test="${s =='Triangle'}">
                                        <option value="Triangle" selected>Triangle</option>
                                    </c:if>
                                    <c:if test="${s =='Long'}">
                                        <option value="Long" selected>Long</option>
                                    </c:if>
                                    <c:if test="${s =='Oblong'}">
                                        <option value="Oblong" selected>Oblong</option>
                                    </c:if>
                                    <c:if test="${s =='Heart'}">
                                        <option value="Heart" selected>Heart</option>
                                    </c:if>
                                    <c:if test="${s =='Diamond'}">
                                        <option value="Diamond" selected>Diamond</option>
                                    </c:if>
                                    <c:if test="${s =='Square'}">
                                        <option value="Square" selected>Square</option>
                                    </c:if>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-12 col-lg-12 form-group">
                        <label class="col-xs-2 col-md-2 col-lg-2">Price</label>
                        <div class="col-xs-4 col-md-4 col-lg-4">
                            <input type="number" name="actualPrice" value="${hairstyle.actualPrice}"
                                   class="form-control name">
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-12 col-lg-12 form-group">
                        <label class="col-xs-2 col-md-2 col-lg-2">Discount</label>
                        <div class="col-xs-4 col-md-4 col-lg-4">
                            <input type="number" name="discount" step="0.01" value="${hairstyle.discount}" max="1"
                                   class="form-control name">
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-12 col-lg-12 form-group margin50">
                        <label class="col-xs-2 col-md-2 col-lg-2">Hairstyle Description </label>
                        <div class="col-xs-4 col-md-4 col-lg-4">
    <textarea rows="5" placeholder="" name="hairstyleDescription"
              class="form-control name">${hairstyle.hairstyleDescription}</textarea>
                        </div>
                    </div>


                    <div class="row">
                        <label class="col-xs-3 col-md-3 col-lg-3 control-label"></label>

                        <div class="col-xs-6 col-md-6 col-lg-6">
                            <button id="submit" type="submit" class="btn btn-primary acount-btn">UPDATE HAIRSTYLE
                                DETAILS
                            </button>
                            &nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;
                            <a href="ViewVendorHairStyles" class="btn btn-primary acount-btn">CANCEL</a>
                        </div>
                        <label class="col-xs-3 col-md-3 col-lg-3 control-label"></label>
                    </div>
                    <input type="text" name="saloonName" value="${vendor.getSaloonName()}" style="visibility: hidden"/>
                    <input type="text" name="saloonEmail" value="${vendor.getEmail()}" style="visibility: hidden"/>
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
<script type="text/javascript" src="<%=path%>/js/vendor.js"></script>
</body>
</html>
