<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="<%=request.getContextPath()%>/img/favicon.ico">
    <meta charset="UTF-8">
    <title>Add HairStyle | Vendor </title>

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
        <form class="form-horizontal" id="addHairStyleForm" action='addHairstyleForm' method="POST"
              enctype="multipart/form-data">
            <div class="well well-lg" style="margin: 1.5%; border-radius: 0; box-shadow: 0 0 30px black;">
                <h1 style="text-align: center;">ADD HAIRSTYLE DETAILS</h1><br/>
                <fieldset>
                    <legend></legend>
                    <div id="addImages">
                        <div id="addImage1" style="width: 65%;height: 89%;">
                            <div class="picture-container">
                                <div class="picture">
                                    <div id="ad1">
                                        <img src="<%=path%>/images/addpicture.png" title="Add Image"
                                             style="margin-top: 38%;">
                                    </div>
                                    <input class="form-control" name="files" type="file" id="addImgBtn1"
                                           title="Add Hairstyle Image 1" accept=".jpg,.png,.jpeg"/>
                                    <div id="addImage1Label1">
                                        <label>Add Hairstyle Image 1</label><br/>
                                        <small>Preferred Size: 400 x 350</small>
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
                                        <img src="<%=path%>/images/addpicture.png" title="Add Image"
                                             style="margin-top: 28%;">
                                    </div>
                                    <input class="form-control" name="files" type="file" id="addImgBtn2"
                                           title="Add Hairstyle Image 2" accept=".jpg,.png,.jpeg"/>
                                    <div id="addImage2Label2">
                                        <label>Add Hairstyle Image 2</label><br/>
                                        <small>Preferred Size: 400 x 350</small>
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
                                        <img src="<%=path%>/images/addpicture.png" title="Add Image"
                                             style="margin-top: 28%;">
                                    </div>
                                    <input class="form-control" name="files" type="file" id="addImgBtn3"
                                           title="Add Hairstyle Image 3" accept=".jpg,.png,.jpeg"/>
                                    <div id="addImage3Label3">
                                        <label>Add Hairstyle Image 3</label><br/>
                                        <small>Preferred Size: 400 x 350</small>
                                    </div>
                                    <img src="" class="picture-src" id="wizardPicturePrw3" title=""
                                         style="visibility: hidden;" name="file">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-12 col-lg-12 form-group">
                        <label class="col-xs-2 col-md-2 col-lg-2">HairStyle Name</label>
                        <div class="col-xs-4 col-md-4 col-lg-4">
                            <input name="hairstyleName" type="text" id="hairstyleName" placeholder=""
                                   class="form-control name">
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-12 col-lg-12 form-group">
                        <label class="col-xs-2 col-md-2 col-lg-2">HairStyle for</label>
                        <div class="col-xs-4 col-md-4 col-lg-4">
                            <input type="radio" checked name="hairstyleFor" class="input-xlarge"
                                   value="Men"><span>&nbsp;Men</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" name="hairstyleFor" class="input-xlarge"
                                   value="Women"><span>&nbsp;Women</span>
                        </div>
                    </div>

                    <div class="col-xs-12 col-md-12 col-lg-12 form-group">
                        <label class="col-xs-2 col-md-2 col-lg-2" for="suitableFor">Suitable for <span><br><small>(Face shape)</small></span>
                        </label>

                        <div class="col-xs-4 col-md-4 col-lg-4">
                            <select id="suitableFor" name="suitableFor" multiple="multiple">
                                <option value="Round">Round</option>
                                <option value="Oval">Oval</option>
                                <option value="Triangle">Triangle</option>
                                <option value="Long">Long</option>
                                <option value="Oblong">Oblong</option>
                                <option value="Heart">Heart</option>
                                <option value="Diamond">Diamond</option>
                                <option value="Square">Square</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-12 col-lg-12 form-group">
                        <label class="col-xs-2 col-md-2 col-lg-2">Price</label>
                        <div class="col-xs-4 col-md-4 col-lg-4">
                            <input type="number" name="actualPrice" placeholder="" class="form-control name">
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-12 col-lg-12 form-group">
                        <label class="col-xs-2 col-md-2 col-lg-2">Discount</label>
                        <div class="col-xs-4 col-md-4 col-lg-4">
                            <input type="number" name="discount" step="0.01" placeholder="0.00" max="1"
                                   class="form-control name">
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-12 col-lg-12 form-group margin50">
                        <label class="col-xs-2 col-md-2 col-lg-2">Hairstyle Description </label>
                        <div class="col-xs-4 col-md-4 col-lg-4">
                            <textarea rows="5" placeholder="" name="hairstyleDescription"
                                      class="form-control name"></textarea>
                        </div>
                    </div>
                    <div class="row">
                        <label class="col-xs-4 col-md-4 col-lg-4 control-label"></label>

                        <div class="col-xs-4 col-md-4 col-lg-4">
                            <button id="submit" type="submit" class="btn btn-primary acount-btn">ADD HAIRSTYLE</button>
                            &nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;
                            <button type="reset" class="btn btn-primary acount-btn">CLEAR</button>
                        </div>
                        <label class="col-xs-4 col-md-4 col-lg-4 control-label"></label>
                    </div>
                    <input type="text" name="saloonName" value="${vendor.getSaloonName()}" style="visibility: hidden"/>
                    <input type="text" name="saloonEmail" value="${vendor.getEmail()}" style="visibility: hidden"/>
                    <%--<input class="form-control" name="files" type="file" id="im1"--%>
                    <%--title="Add Hairstyle Image 2" accept=".jpg,.png,.jpeg" style="visibility: hidden;"/>--%>
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
