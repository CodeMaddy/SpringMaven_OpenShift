<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.springmaven.model.Vendor" %>
<%@ page import="java.io.File" %><%--
  Created by IntelliJ IDEA.
  User: Gourav
  Date: 11/22/2016
  Time: 12:54 PM
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
    <title>Skin Treatments | Set Your Style</title>

    <!-- core CSS -->
    <%String path = request.getContextPath();%>
    <link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="<%=path%>/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css">
    <link href="<%=path%>/css/font-awesome.min.css" rel="stylesheet">
    <link href="<%=path%>/css/VendorAdmin.css" rel="stylesheet" type="text/css"/>
    <link href="<%=path%>/color/default.css" rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp"/>
<div id="main">
    <div style="padding: 2%;">
        <div class="row">
            <div id="sideBar" class="col-xs-2 col-md-2 col-lg-2 well well-lg"
                 style="float:left; margin-top:1%;">
                <div id="filters" class="sections">
                    <div class="filter">
                        <strong>For</strong>
                        <div class="filter-elements" style="margin-left: 10px;">
                            <label for="gen"><input type="checkbox" id="gen"
                                                    name="gen"/></label><span>&nbsp;Show all</span><br>

                            <label for="gen1"><input type="checkbox" id="gen1" name="gen"></label><span>&nbsp;Men</span><br>
                            <label for="gen2"><input type="checkbox" id="gen2"
                                                     name="gen"></label><span>&nbsp;Women</span><br>
                        </div>
                    </div>
                </div>
                <div class="filter">
                    <strong>Face Shape</strong>
                    <div class="filter-elements" style="margin-left: 10px;">
                        <label for="f1"><input type="checkbox" id="f1"
                                               value="Round"></label><span>&nbsp;Round</span><br>
                        <label for="f2"><input type="checkbox" id="f2" value="Oval"></label><span>&nbsp;Oval</span><br>
                        <label for="f3"><input type="checkbox" id="f3"
                                               value="Triangle"></label><span>&nbsp;Triangle</span><br>
                        <label for="f4"><input type="checkbox" id="f4" value="Long"></label><span>&nbsp;Long</span><br>
                        <label for="f5"><input type="checkbox" id="f5"
                                               value="Oblong"></label><span>&nbsp;Oblong</span><br>
                        <label for="f6"><input type="checkbox" id="f6"
                                               value="Heart"></label><span>&nbsp;Heart</span><br>
                        <label for="f7"><input type="checkbox" id="f7"
                                               value="Diamond"></label><span>&nbsp;Diamond</span><br>
                        <label for="f8"><input type="checkbox" id="f8"
                                               value="Square"></label><span>&nbsp;Square</span><br>
                    </div>
                </div>
                <div class="filter">
                    <strong>Price</strong>
                    <div class="filter-elements" style="margin-left: 10px;">
                        <label for="v1"><input type="checkbox" id="v1"
                                               value="<100"></label><span>&nbsp;Under ₹100</span><br>
                        <label for="v2"><input type="checkbox" id="v2"
                                               value="100-200"></label><span>&nbsp;₹100 - ₹200</span><br>
                        <label for="v3"><input type="checkbox" id="v3"
                                               value="200-300"></label><span>&nbsp;₹200 - ₹300</span><br>
                        <label for="v4"><input type="checkbox" id="v4"
                                               value="300-500"></label><span>&nbsp;₹300 - ₹500</span><br>
                        <label for="v5"><input type="checkbox" id="v5"
                                               value=">500"></label><span>&nbsp;₹500 and above</span><br>
                    </div>
                </div>
                <div class="filter">
                    <strong>Discount</strong>
                    <div class="filter-elements" style="margin-left: 10px;">
                        <label for="of1"><input type="checkbox" id="of1"
                                                value="10off"></label><span>&nbsp;10% Off</span><br>
                        <label for="of2"><input type="checkbox" id="of2"
                                                value="25off"></label><span>&nbsp;25% Off </span><br>
                        <label for="of3"><input type="checkbox" id="of3"
                                                value="50off"></label><span>&nbsp;50% Off or More</span><br>
                    </div>
                </div>
            </div>
            <div class="col-xs-10 col-md-10 col-lg-10" style="margin-top:1%;">
                <div class="well well-lg" style="padding: 2%;">
                    <%--<button type="submit" class="btn" style="position: fixed; bottom: 20px; right: 20px; border-radius: 50%; background-color: #2e6da4;"><i class="fa fa-plus-circle"></i> </button>--%>
                    <h3 style="display: inline-block">Skin Treatment</h3>&nbsp;
                    <div class="btn-group">
                        <a href="#" id="list" class="btn btn-default btn-sm">
                            <span class="glyphicon glyphicon-th-list"></span>List
                        </a>
                        <a href="#" id="grid" class="btn btn-default btn-sm">
                            <span class="glyphicon glyphicon-th"></span>Grid
                        </a>
                    </div>
                    <c:choose>
                        <c:when test="${skinTreatments.size() == 0}">
                            <div>
                                <h1>No Skin Treatments available</h1>
                            </div>

                        </c:when>
                        <c:otherwise>
                            <small style="display: block;"><em>Showing 1 - 12 of ${skinTreatments.size()} Results</em>
                            </small>
                            <div id="products" class="row list-group">
                                <c:forEach var="i" begin="0" end="${skinTreatments.size()-1}">
                                    <div class="item col-xs-3 col-lg-3">
                                        <div class="thumbnail">
                                            <img class="group list-group-image"
                                                 src="/showImage/${skinTreatments.get(i).stPics[0]}"
                                                 alt="Image Not Displayed"/>
                                            <div class="caption">
                                                <h5 class="group inner list-group-item-heading">
                                                        ${skinTreatments.get(i).stName}</h5>
                                                <div class="row">
                                                    <div class="col-xs-12 col-md-6">
                                                        <p class="lead">
                                                            <em><i class="fa fa-inr"
                                                                   aria-hidden="true"></i>${skinTreatments.get(i).stPrice}
                                                            </em></p>
                                                    </div>
                                                    <%--<div class="col-xs-12 col-md-6">--%>
                                                        <%--<button class="btn btn-success" data-toggle="modal"--%>
                                                           <%--data-target="#${skinTreatments.get(i).stId}"--%>
                                                           <%--href="">View Details</button>--%>
                                                    <%--</div>--%>
                                                    <div>
                                                        <a class="btn btn-success" data-toggle="modal"
                                                           data-target="#skinquickview${i}"
                                                           href="">View Details</a>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- BEGIN # MODAL -->
                                    <div class="modal fade detail-modal" id="skinquickview${i}"
                                         tabindex="-1"
                                         role="dialog" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="row">
                                                    <!--<div class="modal-header" align="center">-->
                                                    <button type="button" class="close" data-dismiss="modal"
                                                            aria-label="Close">
                                                        <span class="fa fa-times-circle-o" aria-hidden="true"></span>
                                                    </button>
                                                    <!--</div>-->
                                                    <div class="col-xs-5 col-lg-5">
                                                        <div class="well well-lg">
                                                            <!--style="height: 450px; background-color: #1b6d85;">-->
                                                            <div id='carousel-custom' class='carousel slide'
                                                                 data-ride='carousel'>
                                                                <div class='carousel-outer'>
                                                                    <!-- me art lab slider -->
                                                                    <div class='carousel-inner '>
                                                                        <div class='item active'>
                                                                            <img src='<%=path%>/showImage/${skinTreatments.get(i).stPics[0]}'
                                                                                 alt='' id="zoom_05"
                                                                                 data-zoom-image="/showImage/${skinTreatments.get(i).stPics[0]}"/>
                                                                        </div>
                                                                        <div class='item' id="zoom_0">
                                                                            <img src='<%=path%>/showImage/${skinTreatments.get(i).stPics[1]}'
                                                                                 alt=''
                                                                                 data-zoom-image="/showImage/${skinTreatments.get(i).stPics[1]}"/>
                                                                        </div>
                                                                        <div class='item'>
                                                                            <img src='<%=path%>/showImage/${skinTreatments.get(i).stPics[2]}'
                                                                                 alt=''
                                                                                 data-zoom-image="/showImage/${skinTreatments.get(i).stPics[2]}"/>
                                                                        </div>

                                                                        <script>
                                                                            $("#zoom_05").elevateZoom({
                                                                                zoomType: "inner",
                                                                                cursor: "crosshair"
                                                                            });
                                                                        </script>
                                                                    </div>

                                                                    <!-- sag sol -->
                                                                    <a class='left carousel-control'
                                                                       href='#carousel-custom' data-slide='prev'>
                                                                        <span class='glyphicon glyphicon-chevron-left'></span>
                                                                    </a>
                                                                    <a class='right carousel-control'
                                                                       href='#carousel-custom' data-slide='next'>
                                                                        <span class='glyphicon glyphicon-chevron-right'></span>
                                                                    </a>
                                                                </div>

                                                                <!-- thumb -->
                                                                <ol class='carousel-indicators mCustomScrollbar meartlab'>
                                                                    <li data-target='#carousel-custom' data-slide-to='0'
                                                                        class='active'><img
                                                                            src='<%=path%>/showImage/${skinTreatments.get(i).stPics[0]}'
                                                                            alt=''/></li>
                                                                    <li data-target='#carousel-custom'
                                                                        data-slide-to='1'><img
                                                                            src='<%=path%>/showImage/${skinTreatments.get(i).stPics[1]}'
                                                                            alt=''/></li>
                                                                    <li data-target='#carousel-custom'
                                                                        data-slide-to='2'><img
                                                                            src='<%=path%>/showImage/${skinTreatments.get(i).stPics[2]}'
                                                                            alt=''/></li>
                                                                </ol>
                                                            </div>

                                                            <script type="text/javascript">

                                                                $(document).ready(function () {
                                                                    $(".mCustomScrollbar").mCustomScrollbar({axis: "x"});
                                                                });
                                                            </script>

                                                        </div>
                                                    </div>
                                                    <div class="col-xs-7 col-lg-7">
                                                        <div class="modal-title">
                                                            <h3 id="skintreatmentname">${skinTreatments.get(i).stName}</h3>
                                                        </div>
                                                        <p><strong>Description</strong></p>
                                                        <p> ${skinTreatments.get(i).stDesc} </p>
                                                        <p> Actual Price &nbsp;:&nbsp;
                                                        <h6 id="sprice"> ${skinTreatments.get(i).stPrice} </h6>
                                                        </p>
                                                        <p>
                                                            <strong>Discount&nbsp;:&nbsp;</strong>${skinTreatments.get(i).stDiscount}
                                                        </p>
                                                        <div class="modal-footer">
                                                            <div class="row">
                                                                <div class="col-xs-3"></div>
                                                                <div class="col-xs-3"></div>
                                                                <div class="col-xs-6">
                                                                    <div class="row">
                                                                        <div class="col-xs-4">


                                                                            <form action="BookSkinTreatment" method="get">
                                                                                <fieldset>
                                                                                    <input type="hidden" name="skintreatmentId"
                                                                                           value="${skinTreatments.get(i).stId}">

                                                                                        <%--<input type="button" class="btn btn-primary btn-block" id="boo" value="Book Now">--%>
                                                                                    <button type="submit" class="btn btn-primary btn-block"
                                                                                            style="margin-top:20px;width:350px;background-color:#CCCCCC;">
                                                                                        <b> Book Now</b></button>
                                                                                </fieldset>
                                                                            </form>

                                                                                <%--<button id="" d="boo"--%>
                                                                                <%--class="btn btn-primary btn-block">--%>
                                                                                <%--book now--%>
                                                                                <%--</button>--%>


                                                                                <%--<input name="hairstyleId" type="text" value="${hairstyles.get(i).hairstyleId}" style="visibility: hidden;">--%>
                                                                                <%--<button type="submit" class="btn btn-default btn-lg"--%>
                                                                                <%--style="margin-top:20px;width:350px;background-color:#CCCCCC;">--%>
                                                                                <%--<b>View Details & Book The Stylist</b></button>--%>


                                                                        </div>

                                                                        <%--<div class="col-xs-4">--%>
                                                                            <%--<button type="button"--%>
                                                                                    <%--class="btn btn-primary btn-block">--%>
                                                                                <%--Close--%>
                                                                            <%--</button>--%>
                                                                        <%--</div>--%>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>



                                <ul class="pagination" style="margin-left: 78%;">
                                        <%--<li><a href="#">&laquo;</a></li>--%>
                                        <%--<li class="active"><a href="#">1</a></li>--%>
                                        <%--<li><a href="#">2</a></li>--%>
                                        <%--<li><a href="#">3</a></li>--%>
                                        <%--<li><a href="#">4</a></li>--%>
                                        <%--<li><a href="#">5</a></li>--%>
                                        <%--<li><a href="#">&raquo;</a></li>--%>
                                </ul>
                            </div>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </div>
    </div>
    <c:forEach var="i" begin="0" end="${skinTreatments.size()-1}">

        </c:forEach>

    <!-- END OF MODAL -->
</div>
<%--<% }%>--%>
<!--END OF MAIN DIV-->

<jsp:include page="vendor_footer.jsp"/>


<script type="text/javascript" src="<%=path%>/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/wow.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/bootstrap-multiselect.js"></script>
<script type="text/javascript" src="<%=path%>/js/AdminJS.js"></script>
<script type="text/javascript" src="<%=path%>/js/vendor.js"></script>

</body>
<script>


    $(document).ready(function () {
        $('#book').click(function () {
            var sname = $('#skintreatmentname').text()
            var rate = $('#sprice').text()
            var mp = sname+" "+"Rs."+rate;
            sessionStorage.setItem("skinkwy", mp);
         //   alert("bookwed");
            var url = "http://localhost:8080/BookSkinTreatment";
          document.location.href = url;
        });
    });
</script>

</html>
