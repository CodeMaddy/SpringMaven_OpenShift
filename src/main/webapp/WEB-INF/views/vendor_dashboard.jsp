<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Gourav
  Date: 1/24/2017
  Time: 4:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8">
    <title>Vendor | Edit HairStyle</title>

    <!-- core CSS -->
    <%String path = request.getContextPath();%>
    <link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="<%=path%>/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css">
    <link href="<%=path%>/css/font-awesome.min.css" rel="stylesheet">
    <link href="<%=path%>/css/stylistDetails.css" rel="stylesheet">
    <link href="<%=path%>/css/VendorAdmin.css" rel="stylesheet" type="text/css"/>
    <link href="<%=path%>/color/default.css" rel="stylesheet">
</head>
<body>
<jsp:include page="vendor_header.jsp"/>
<div class="container" style="margin-top: 2%; margin-bottom: 2%;">
    <c:catch var="exception">${hairstyles.get(0).hairstyleName}</c:catch>
    <c:if test="${not empty exception}">Attribute not available.</c:if>
    <%--<c:if test="${not empty hairstyles}">--%>
        <%--<h1>Hair Styles</h1>--%>
    <%--</c:if>--%>
    <%--<div class="row">--%>
        <%--<div class="row">--%>
            <%--<div class="col-md-9">--%>
                <%--<h3>--%>
                    <%--Carousel Product Cart Slider</h3>--%>
            <%--</div>--%>
            <%--<div class="col-md-3">--%>
                <%--<!-- Controls -->--%>
                <%--<div class="controls pull-right hidden-xs">--%>
                    <%--<a class="left fa fa-chevron-left btn btn-success" href="#carousel-example"--%>
                       <%--data-slide="prev"></a><a class="right fa fa-chevron-right btn btn-success"--%>
                                                <%--href="#carousel-example"--%>
                                                <%--data-slide="next"></a>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div id="carousel-example" class="carousel slide hidden-xs" data-ride="carousel">--%>
            <%--<!-- Wrapper for slides -->--%>
            <%--<div class="carousel-inner">--%>
                <%--<div class="item active">--%>
                    <%--<div class="row">--%>
                        <%--<div class="col-sm-3">--%>
                            <%--<div class="col-item">--%>
                                <%--<div class="photo">--%>
                                    <%--<img src="http://placehold.it/350x260" class="img-responsive" alt="a"/>--%>
                                <%--</div>--%>
                                <%--<div class="info">--%>
                                    <%--<div class="row">--%>
                                        <%--<div class="price col-md-6">--%>
                                            <%--<h5>--%>
                                                <%--Sample Product</h5>--%>
                                            <%--<h5 class="price-text-color">--%>
                                                <%--$199.99</h5>--%>
                                        <%--</div>--%>
                                        <%--<div class="rating hidden-sm col-md-6">--%>
                                            <%--<i class="price-text-color fa fa-star"></i><i--%>
                                                <%--class="price-text-color fa fa-star">--%>
                                        <%--</i><i class="price-text-color fa fa-star"></i><i--%>
                                                <%--class="price-text-color fa fa-star">--%>
                                        <%--</i><i class="fa fa-star"></i>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="separator clear-left">--%>
                                        <%--<p class="btn-add">--%>
                                            <%--<i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com"--%>
                                                                                  <%--class="hidden-sm">Add to cart</a></p>--%>
                                        <%--<p class="btn-details">--%>
                                            <%--<i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com"--%>
                                                                         <%--class="hidden-sm">More details</a></p>--%>
                                    <%--</div>--%>
                                    <%--<div class="clearfix">--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="col-sm-3">--%>
                            <%--<div class="col-item">--%>
                                <%--<div class="photo">--%>
                                    <%--<img src="http://placehold.it/350x260" class="img-responsive" alt="a"/>--%>
                                <%--</div>--%>
                                <%--<div class="info">--%>
                                    <%--<div class="row">--%>
                                        <%--<div class="price col-md-6">--%>
                                            <%--<h5>--%>
                                                <%--Product Example</h5>--%>
                                            <%--<h5 class="price-text-color">--%>
                                                <%--$249.99</h5>--%>
                                        <%--</div>--%>
                                        <%--<div class="rating hidden-sm col-md-6">--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="separator clear-left">--%>
                                        <%--<p class="btn-add">--%>
                                            <%--<i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com"--%>
                                                                                  <%--class="hidden-sm">Add to cart</a></p>--%>
                                        <%--<p class="btn-details">--%>
                                            <%--<i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com"--%>
                                                                         <%--class="hidden-sm">More details</a></p>--%>
                                    <%--</div>--%>
                                    <%--<div class="clearfix">--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="col-sm-3">--%>
                            <%--<div class="col-item">--%>
                                <%--<div class="photo">--%>
                                    <%--<img src="http://placehold.it/350x260" class="img-responsive" alt="a"/>--%>
                                <%--</div>--%>
                                <%--<div class="info">--%>
                                    <%--<div class="row">--%>
                                        <%--<div class="price col-md-6">--%>
                                            <%--<h5>--%>
                                                <%--Next Sample Product</h5>--%>
                                            <%--<h5 class="price-text-color">--%>
                                                <%--$149.99</h5>--%>
                                        <%--</div>--%>
                                        <%--<div class="rating hidden-sm col-md-6">--%>
                                            <%--<i class="price-text-color fa fa-star"></i><i--%>
                                                <%--class="price-text-color fa fa-star">--%>
                                        <%--</i><i class="price-text-color fa fa-star"></i><i--%>
                                                <%--class="price-text-color fa fa-star">--%>
                                        <%--</i><i class="fa fa-star"></i>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="separator clear-left">--%>
                                        <%--<p class="btn-add">--%>
                                            <%--<i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com"--%>
                                                                                  <%--class="hidden-sm">Add to cart</a></p>--%>
                                        <%--<p class="btn-details">--%>
                                            <%--<i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com"--%>
                                                                         <%--class="hidden-sm">More details</a></p>--%>
                                    <%--</div>--%>
                                    <%--<div class="clearfix">--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="col-sm-3">--%>
                            <%--<div class="col-item">--%>
                                <%--<div class="photo">--%>
                                    <%--<img src="http://placehold.it/350x260" class="img-responsive" alt="a"/>--%>
                                <%--</div>--%>
                                <%--<div class="info">--%>
                                    <%--<div class="row">--%>
                                        <%--<div class="price col-md-6">--%>
                                            <%--<h5>--%>
                                                <%--Sample Product</h5>--%>
                                            <%--<h5 class="price-text-color">--%>
                                                <%--$199.99</h5>--%>
                                        <%--</div>--%>
                                        <%--<div class="rating hidden-sm col-md-6">--%>
                                            <%--<i class="price-text-color fa fa-star"></i><i--%>
                                                <%--class="price-text-color fa fa-star">--%>
                                        <%--</i><i class="price-text-color fa fa-star"></i><i--%>
                                                <%--class="price-text-color fa fa-star">--%>
                                        <%--</i><i class="fa fa-star"></i>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="separator clear-left">--%>
                                        <%--<p class="btn-add">--%>
                                            <%--<i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com"--%>
                                                                                  <%--class="hidden-sm">Add to cart</a></p>--%>
                                        <%--<p class="btn-details">--%>
                                            <%--<i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com"--%>
                                                                         <%--class="hidden-sm">More details</a></p>--%>
                                    <%--</div>--%>
                                    <%--<div class="clearfix">--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="item">--%>
                    <%--<div class="row">--%>
                        <%--<div class="col-sm-3">--%>
                            <%--<div class="col-item">--%>
                                <%--<div class="photo">--%>
                                    <%--<img src="http://placehold.it/350x260" class="img-responsive" alt="a"/>--%>
                                <%--</div>--%>
                                <%--<div class="info">--%>
                                    <%--<div class="row">--%>
                                        <%--<div class="price col-md-6">--%>
                                            <%--<h5>--%>
                                                <%--Product with Variants</h5>--%>
                                            <%--<h5 class="price-text-color">--%>
                                                <%--$199.99</h5>--%>
                                        <%--</div>--%>
                                        <%--<div class="rating hidden-sm col-md-6">--%>
                                            <%--<i class="price-text-color fa fa-star"></i><i--%>
                                                <%--class="price-text-color fa fa-star">--%>
                                        <%--</i><i class="price-text-color fa fa-star"></i><i--%>
                                                <%--class="price-text-color fa fa-star">--%>
                                        <%--</i><i class="fa fa-star"></i>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="separator clear-left">--%>
                                        <%--<p class="btn-add">--%>
                                            <%--<i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com"--%>
                                                                                  <%--class="hidden-sm">Add to cart</a></p>--%>
                                        <%--<p class="btn-details">--%>
                                            <%--<i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com"--%>
                                                                         <%--class="hidden-sm">More details</a></p>--%>
                                    <%--</div>--%>
                                    <%--<div class="clearfix">--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="col-sm-3">--%>
                            <%--<div class="col-item">--%>
                                <%--<div class="photo">--%>
                                    <%--<img src="http://placehold.it/350x260" class="img-responsive" alt="a"/>--%>
                                <%--</div>--%>
                                <%--<div class="info">--%>
                                    <%--<div class="row">--%>
                                        <%--<div class="price col-md-6">--%>
                                            <%--<h5>--%>
                                                <%--Grouped Product</h5>--%>
                                            <%--<h5 class="price-text-color">--%>
                                                <%--$249.99</h5>--%>
                                        <%--</div>--%>
                                        <%--<div class="rating hidden-sm col-md-6">--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="separator clear-left">--%>
                                        <%--<p class="btn-add">--%>
                                            <%--<i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com"--%>
                                                                                  <%--class="hidden-sm">Add to cart</a></p>--%>
                                        <%--<p class="btn-details">--%>
                                            <%--<i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com"--%>
                                                                         <%--class="hidden-sm">More details</a></p>--%>
                                    <%--</div>--%>
                                    <%--<div class="clearfix">--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="col-sm-3">--%>
                            <%--<div class="col-item">--%>
                                <%--<div class="photo">--%>
                                    <%--<img src="http://placehold.it/350x260" class="img-responsive" alt="a"/>--%>
                                <%--</div>--%>
                                <%--<div class="info">--%>
                                    <%--<div class="row">--%>
                                        <%--<div class="price col-md-6">--%>
                                            <%--<h5>--%>
                                                <%--Product with Variants</h5>--%>
                                            <%--<h5 class="price-text-color">--%>
                                                <%--$149.99</h5>--%>
                                        <%--</div>--%>
                                        <%--<div class="rating hidden-sm col-md-6">--%>
                                            <%--<i class="price-text-color fa fa-star"></i><i--%>
                                                <%--class="price-text-color fa fa-star">--%>
                                        <%--</i><i class="price-text-color fa fa-star"></i><i--%>
                                                <%--class="price-text-color fa fa-star">--%>
                                        <%--</i><i class="fa fa-star"></i>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="separator clear-left">--%>
                                        <%--<p class="btn-add">--%>
                                            <%--<i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com"--%>
                                                                                  <%--class="hidden-sm">Add to cart</a></p>--%>
                                        <%--<p class="btn-details">--%>
                                            <%--<i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com"--%>
                                                                         <%--class="hidden-sm">More details</a></p>--%>
                                    <%--</div>--%>
                                    <%--<div class="clearfix">--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="col-sm-3">--%>
                            <%--<div class="col-item">--%>
                                <%--<div class="photo">--%>
                                    <%--<img src="http://placehold.it/350x260" class="img-responsive" alt="a"/>--%>
                                <%--</div>--%>
                                <%--<div class="info">--%>
                                    <%--<div class="row">--%>
                                        <%--<div class="price col-md-6">--%>
                                            <%--<h5>--%>
                                                <%--Product with Variants</h5>--%>
                                            <%--<h5 class="price-text-color">--%>
                                                <%--$199.99</h5>--%>
                                        <%--</div>--%>
                                        <%--<div class="rating hidden-sm col-md-6">--%>
                                            <%--<i class="price-text-color fa fa-star"></i><i--%>
                                                <%--class="price-text-color fa fa-star">--%>
                                        <%--</i><i class="price-text-color fa fa-star"></i><i--%>
                                                <%--class="price-text-color fa fa-star">--%>
                                        <%--</i><i class="fa fa-star"></i>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="separator clear-left">--%>
                                        <%--<p class="btn-add">--%>
                                            <%--<i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com"--%>
                                                                                  <%--class="hidden-sm">Add to cart</a></p>--%>
                                        <%--<p class="btn-details">--%>
                                            <%--<i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com"--%>
                                                                         <%--class="hidden-sm">More details</a></p>--%>
                                    <%--</div>--%>
                                    <%--<div class="clearfix">--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
    <%--<div class="row">--%>
        <%--<div class="row">--%>
            <%--<div class="col-md-9">--%>
                <%--<h3>--%>
                    <%--Carousel Product Cart Slider</h3>--%>
            <%--</div>--%>
            <%--<div class="col-md-3">--%>
                <%--<!-- Controls -->--%>
                <%--<div class="controls pull-right hidden-xs">--%>
                    <%--<a class="left fa fa-chevron-left btn btn-primary" href="#carousel-example-generic"--%>
                       <%--data-slide="prev"></a><a class="right fa fa-chevron-right btn btn-primary"--%>
                                                <%--href="#carousel-example-generic"--%>
                                                <%--data-slide="next"></a>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div id="carousel-example-generic" class="carousel slide hidden-xs" data-ride="carousel">--%>
            <%--<!-- Wrapper for slides -->--%>
            <%--<div class="carousel-inner">--%>
                <%--<div class="item active">--%>
                    <%--<div class="row">--%>
                        <%--<div class="col-sm-4">--%>
                            <%--<div class="col-item">--%>
                                <%--<div class="photo">--%>
                                    <%--<img src="http://placehold.it/350x260" class="img-responsive" alt="a"/>--%>
                                <%--</div>--%>
                                <%--<div class="info">--%>
                                    <%--<div class="row">--%>
                                        <%--<div class="price col-md-6">--%>
                                            <%--<h5>--%>
                                                <%--Sample Product</h5>--%>
                                            <%--<h5 class="price-text-color">--%>
                                                <%--$199.99</h5>--%>
                                        <%--</div>--%>
                                        <%--<div class="rating hidden-sm col-md-6">--%>
                                            <%--<i class="price-text-color fa fa-star"></i><i--%>
                                                <%--class="price-text-color fa fa-star">--%>
                                        <%--</i><i class="price-text-color fa fa-star"></i><i--%>
                                                <%--class="price-text-color fa fa-star">--%>
                                        <%--</i><i class="fa fa-star"></i>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="separator clear-left">--%>
                                        <%--<p class="btn-add">--%>
                                            <%--<i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com"--%>
                                                                                  <%--class="hidden-sm">Add to cart</a></p>--%>
                                        <%--<p class="btn-details">--%>
                                            <%--<i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com"--%>
                                                                         <%--class="hidden-sm">More details</a></p>--%>
                                    <%--</div>--%>
                                    <%--<div class="clearfix">--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="col-sm-4">--%>
                            <%--<div class="col-item">--%>
                                <%--<div class="photo">--%>
                                    <%--<img src="http://placehold.it/350x260" class="img-responsive" alt="a"/>--%>
                                <%--</div>--%>
                                <%--<div class="info">--%>
                                    <%--<div class="row">--%>
                                        <%--<div class="price col-md-6">--%>
                                            <%--<h5>--%>
                                                <%--Product Example</h5>--%>
                                            <%--<h5 class="price-text-color">--%>
                                                <%--$249.99</h5>--%>
                                        <%--</div>--%>
                                        <%--<div class="rating hidden-sm col-md-6">--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="separator clear-left">--%>
                                        <%--<p class="btn-add">--%>
                                            <%--<i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com"--%>
                                                                                  <%--class="hidden-sm">Add to cart</a></p>--%>
                                        <%--<p class="btn-details">--%>
                                            <%--<i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com"--%>
                                                                         <%--class="hidden-sm">More details</a></p>--%>
                                    <%--</div>--%>
                                    <%--<div class="clearfix">--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="col-sm-4">--%>
                            <%--<div class="col-item">--%>
                                <%--<div class="photo">--%>
                                    <%--<img src="http://placehold.it/350x260" class="img-responsive" alt="a"/>--%>
                                <%--</div>--%>
                                <%--<div class="info">--%>
                                    <%--<div class="row">--%>
                                        <%--<div class="price col-md-6">--%>
                                            <%--<h5>--%>
                                                <%--Next Sample Product</h5>--%>
                                            <%--<h5 class="price-text-color">--%>
                                                <%--$149.99</h5>--%>
                                        <%--</div>--%>
                                        <%--<div class="rating hidden-sm col-md-6">--%>
                                            <%--<i class="price-text-color fa fa-star"></i><i--%>
                                                <%--class="price-text-color fa fa-star">--%>
                                        <%--</i><i class="price-text-color fa fa-star"></i><i--%>
                                                <%--class="price-text-color fa fa-star">--%>
                                        <%--</i><i class="fa fa-star"></i>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="separator clear-left">--%>
                                        <%--<p class="btn-add">--%>
                                            <%--<i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com"--%>
                                                                                  <%--class="hidden-sm">Add to cart</a></p>--%>
                                        <%--<p class="btn-details">--%>
                                            <%--<i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com"--%>
                                                                         <%--class="hidden-sm">More details</a></p>--%>
                                    <%--</div>--%>
                                    <%--<div class="clearfix">--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="item">--%>
                    <%--<div class="row">--%>
                        <%--<div class="col-sm-4">--%>
                            <%--<div class="col-item">--%>
                                <%--<div class="photo">--%>
                                    <%--<img src="http://placehold.it/350x260" class="img-responsive" alt="a"/>--%>
                                <%--</div>--%>
                                <%--<div class="info">--%>
                                    <%--<div class="row">--%>
                                        <%--<div class="price col-md-6">--%>
                                            <%--<h5>--%>
                                                <%--Product with Variants</h5>--%>
                                            <%--<h5 class="price-text-color">--%>
                                                <%--$199.99</h5>--%>
                                        <%--</div>--%>
                                        <%--<div class="rating hidden-sm col-md-6">--%>
                                            <%--<i class="price-text-color fa fa-star"></i><i--%>
                                                <%--class="price-text-color fa fa-star">--%>
                                        <%--</i><i class="price-text-color fa fa-star"></i><i--%>
                                                <%--class="price-text-color fa fa-star">--%>
                                        <%--</i><i class="fa fa-star"></i>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="separator clear-left">--%>
                                        <%--<p class="btn-add">--%>
                                            <%--<i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com"--%>
                                                                                  <%--class="hidden-sm">Add to cart</a></p>--%>
                                        <%--<p class="btn-details">--%>
                                            <%--<i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com"--%>
                                                                         <%--class="hidden-sm">More details</a></p>--%>
                                    <%--</div>--%>
                                    <%--<div class="clearfix">--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="col-sm-4">--%>
                            <%--<div class="col-item">--%>
                                <%--<div class="photo">--%>
                                    <%--<img src="http://placehold.it/350x260" class="img-responsive" alt="a"/>--%>
                                <%--</div>--%>
                                <%--<div class="info">--%>
                                    <%--<div class="row">--%>
                                        <%--<div class="price col-md-6">--%>
                                            <%--<h5>--%>
                                                <%--Grouped Product</h5>--%>
                                            <%--<h5 class="price-text-color">--%>
                                                <%--$249.99</h5>--%>
                                        <%--</div>--%>
                                        <%--<div class="rating hidden-sm col-md-6">--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="separator clear-left">--%>
                                        <%--<p class="btn-add">--%>
                                            <%--<i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com"--%>
                                                                                  <%--class="hidden-sm">Add to cart</a></p>--%>
                                        <%--<p class="btn-details">--%>
                                            <%--<i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com"--%>
                                                                         <%--class="hidden-sm">More details</a></p>--%>
                                    <%--</div>--%>
                                    <%--<div class="clearfix">--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="col-sm-4">--%>
                            <%--<div class="col-item">--%>
                                <%--<div class="photo">--%>
                                    <%--<img src="http://placehold.it/350x260" class="img-responsive" alt="a"/>--%>
                                <%--</div>--%>
                                <%--<div class="info">--%>
                                    <%--<div class="row">--%>
                                        <%--<div class="price col-md-6">--%>
                                            <%--<h5>--%>
                                                <%--Product with Variants</h5>--%>
                                            <%--<h5 class="price-text-color">--%>
                                                <%--$149.99</h5>--%>
                                        <%--</div>--%>
                                        <%--<div class="rating hidden-sm col-md-6">--%>
                                            <%--<i class="price-text-color fa fa-star"></i><i--%>
                                                <%--class="price-text-color fa fa-star">--%>
                                        <%--</i><i class="price-text-color fa fa-star"></i><i--%>
                                                <%--class="price-text-color fa fa-star">--%>
                                        <%--</i><i class="fa fa-star"></i>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="separator clear-left">--%>
                                        <%--<p class="btn-add">--%>
                                            <%--<i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com"--%>
                                                                                  <%--class="hidden-sm">Add to cart</a></p>--%>
                                        <%--<p class="btn-details">--%>
                                            <%--<i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com"--%>
                                                                         <%--class="hidden-sm">More details</a></p>--%>
                                    <%--</div>--%>
                                    <%--<div class="clearfix">--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
</div>
<jsp:include page="vendor_footer.jsp"/>
<script type="text/javascript" src="<%=path%>/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/wow.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/bootstrap-multiselect.js"></script>
<script type="text/javascript" src="<%=path%>/js/vendor.js"></script>
</body>
</html>
