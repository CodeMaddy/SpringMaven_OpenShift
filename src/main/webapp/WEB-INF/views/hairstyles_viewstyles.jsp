<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Gourav
  Date: 12/2/2016
  Time: 11:11 AM
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
    <title>View Hairstyles | Set Your Style</title>
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
<div class="jumbotron" style="background-color:transparent;background-attachment:fixed;">
    <div class="row" style="margin-left: 3px;">
        <div class="col-md-1"></div>
        <div class="col-md-4"
             style="opacity:0.8;padding-top:20px;margin-left: 20px;background-color: #cc99ff;height: 180px;width: 300px">
            <h1 style="font-family: 'Trebuchet MS', Arial, Helvetica, sans-serif;margin-top:90px;text-align: center;font-size: xx-large">
                <B>S T Y L E S</B></h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <p style="margin-top:20px;margin-left:15px;background-color:#d9b3ff;height: 10px; "></p>
        </div>
        <div class="col-md-2">
            <p style="margin-top:20px;margin-left:15px;background-color:#d9b3ff;height: 10px; "></p>
        </div>
        <div class="col-md-3">
            <p style="margin-top:20px;margin-left:15px;background-color:#d9b3ff;height: 10px; "></p>

        </div>
        <div class="col-md-1">
            <p style="margin-top:20px;margin-left:15px;background-color:#d9b3ff;height: 10px; "></p>

        </div>
    </div>
</div>
<div>
    <div class="row">
        <%--<div class="col-md-1"></div>--%>
        <div class="col-md-10" style="margin-left: 50px">
            <c:choose>
                <c:when test="${hairstyles.size() == 0}">
                    <div>
                        <h1>No Hairstyles available please add hairstyles</h1>
                    </div>

                </c:when>
                <c:otherwise>
                    <%--<small style="display: block;"><em>Showing 1 - 12 of ${hairstyles.size()} Results</em>--%>
                    <%--</small>--%>
                    <div id="products" class="row list-group">
                        <c:forEach var="i" begin="0" end="${hairstyles.size()-1}">
                            <div class="item col-xs-3 col-lg-3">
                                <div class="thumbnail">
                                    <img class="group list-group-image"
                                         src="/showImage/${hairstyles.get(i).hairstylePics[0]}"
                                         alt="Image Not Displayed"
                                    />
                                    <div class="caption">
                                        <h5 class="group inner list-group-item-heading">
                                                ${hairstyles.get(i).hairstyleName}</h5>
                                        <div class="row">
                                            <div class="col-xs-12 col-md-6">
                                                <p class="lead">
                                                    <em><i class="fa fa-inr"
                                                           aria-hidden="true"></i>${hairstyles.get(i).actualPrice}
                                                    </em></p>
                                            </div>

                                        </div>
                                        <div>
                                            <a class="btn btn-success" data-toggle="modal"
                                               data-target="#quickview${i}"
                                               href="">View Details</a>
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
<c:forEach var="i" begin="0" end="${hairstyles.size()-1}">
    <!-- quickviewstyle Modal---- STYLE="background-image: url('backpicofmodel.jpeg')"-->
    <div class="modal fade" id="quickview${i}" role="dialog">
        <div class="modal-dialog" style="width: 1200px">
            <!-- quickview Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close"
                            data-dismiss="modal">&times;</button>
                    <h4 class="modal-title" align="center"><span
                            class="glyphicon glyphicon-send"></span>&nbsp;Quick
                        View </h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6"
                             style="border: 10px solid transparent;background-color: transparent;">
                            <img src="/showImage/${hairstyles.get(i).hairstylePics[0]}"
                                 class="img-responsive "
                                 style="opacity: 0.8;width:650px;height: 550px;">
                        </div>
                        <div class="col-md-3">
                            <h2>${hairstyles.get(i).hairstyleName}</h2>
                            <h5 class="text-info"><code>Coupon Code : ASD456</code></h5>
                            <br>
                            <h3 style="font-family:Book Antiqua;"><kbd>Hairstyle For </kbd>
                                &nbsp;</h3>
                            <h3 class="text-muted"
                                style="font-family:Book Antiqua;">${hairstyles.get(i).hairstyleFor}</h3>

                            <h3 style="font-family:Book Antiqua;"><kbd>Price</kbd> &nbsp;
                            </h3>
                                <%--<% double price = ${hairstyles.get(i).actualPrice} * ${hairstyles.get(i).discount};%>--%>
                            <h3 class="text-muted"
                                style="font-family:Book Antiqua;">${hairstyles.get(i).actualPrice}&nbsp;&nbsp;
                                    ${hairstyles.get(i).discount} %</h3>
                            <h3 style="font-family:Book Antiqua;"><kbd>Discount</kbd> &nbsp;
                            </h3>
                                <%--<% double price = ${hairstyles.get(i).actualPrice} * ${hairstyles.get(i).discount};%>--%>
                            <h3 class="text-muted"
                                style="font-family:Book Antiqua;">${hairstyles.get(i).discount}
                                %</h3>
                            <form action="showDetailedPage" method="get">
                                <fieldset>
                                    <input name="hairstyleId" type="text" value="${hairstyles.get(i).hairstyleId}" style="visibility: hidden;">
                                    <button type="submit" class="btn btn-default btn-lg"
                                            style="margin-top:20px;width:350px;background-color:#CCCCCC;">
                                        <b>View Details & Book The Stylist</b></button>
                                </fieldset>
                            </form>

                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-1">
                            <img src="/showImage/${hairstyles.get(i).hairstylePics[0]}"
                                 class="img-thumbnail img-responsive">

                        </div>
                        <div class="col-md-1">
                            <img src="/showImage/${hairstyles.get(i).hairstylePics[1]}"
                                 class="img-thumbnail img-responsive">
                        </div>
                        <div class="col-md-1">
                            <img src="/showImage/${hairstyles.get(i).hairstylePics[2]}"
                                 class="img-thumbnail img-responsive">
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </div>
</c:forEach>
<jsp:include page="footer.jsp"/>
<script type="text/javascript" src="<%=path%>/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/wow.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/bootstrap-multiselect.js"></script>
<script type="text/javascript" src="<%=path%>/js/AdminJS.js"></script>
<script type="text/javascript" src="<%=path%>/js/vendor.js"></script>
</body>
</html>
