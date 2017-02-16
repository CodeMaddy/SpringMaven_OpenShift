<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%--
  Created by IntelliJ IDEA.
  User: Harsha
  Date: 11/22/2016
  Time: 1:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" href="<%=request.getContextPath()%>/img/favicon.ico">
    <title>Set Your Style</title>

    <!-- css -->
    <%String path = request.getContextPath();%>
    <link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="<%=path%>/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="<%=path%>/css/stylistDetails.css" rel="stylesheet">
    <link href="<%=path%>/css/hairtrt.css" rel="stylesheet" type="text/css">
    <link href="<%=path%>/css/animate.css" rel="stylesheet"/>
    <link href="<%=path%>/css/style_mainpage.css" rel="stylesheet">
    <link href="<%=path%>/color/default.css" rel="stylesheet">
</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
<!-- page loader -->
<div id="page-loader">
    <div class="loader">
        <div class="spinner">
            <div class="spinner-container con1">
                <div class="circle1"></div>
                <div class="circle2"></div>
                <div class="circle3"></div>
                <div class="circle4"></div>
            </div>
            <div class="spinner-container con2">
                <div class="circle1"></div>
                <div class="circle2"></div>
                <div class="circle3"></div>
                <div class="circle4"></div>
            </div>
            <div class="spinner-container con3">
                <div class="circle1"></div>
                <div class="circle2"></div>
                <div class="circle3"></div>
                <div class="circle4"></div>
            </div>
        </div>
    </div>
</div>
<!-- /page loader -->

<!-- Section: home video -->
<section id="intro" class="home-video text-light">
    <div class="home-video-wrapper">

        <div class="homevideo-container">
            <div id="P1" class="bg-player" style="display:block; margin: auto; background: rgba(0,0,0,0.5)"
                 data-property="{videoURL:'https://www.youtube.com/watch?v=XE1E85vqWVU',containment:'.homevideo-container', quality: '480', showControls: false, autoPlay:true, mute:true, startAt:0, endAt:35, opacity:1}"></div>
        </div>
        <div class="overlay">
            <div class="text-center video-caption">
                <div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.8s">
                    <h1 class="big-heading font-light"><span id="js-rotating">We are Here To help you, Set your Time, Get better appearance, Craft your style in your way </span>
                    </h1>
                </div>
                <div class="wow bounceInUp" data-wow-offset="0" data-wow-delay="1s">
                    <div class="margintop-30">
                        <a href="#gallery" class="btn btn-skin" id="btn-scroll">Start here</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /Section: intro -->

<jsp:include page="header.jsp"/>

<!-- Section: gallery -->
<section id="gallery" class="home-section text-center bg-gray">
    <%
        String id = request.getParameter("hairstylePics");
        String driverName = "com.mysql.jdbc.Driver";
        String connectionUrl = "jdbc:mysql://localhost:3306/";
        String dbName = "seturstyle";
        String userId = "root";
        String password = "root";

        try {
            Class.forName(driverName);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
    %>

    <h2 align="center"><font><strong>Trending Hair Styles</strong></font></h2>

    <%
        try {
            connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
            statement = connection.createStatement();
            String sql = "SELECT * FROM hairstyle";

            resultSet = statement.executeQuery(sql);

            while (resultSet.next()) {
                String[] pics = resultSet.getString("hairstylePics").split(",");
                for (int j = 0; j < 1; j++) {
    %>

    <img style="height:50%" src="/showImage<%=pics[j]%>" href="/showImage<%=pics[j]%>">


    <%
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    %>

</section>
<!-- Section: about -->
<section id="about" class="home-section color-dark bg-white">
    <div class="container marginbot-50">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
                    <div class="section-heading text-center">
                        <h2 class="h-bold">About</h2>
                        <div class="divider-header"></div>
                        <p> We provide a wide selection of hair styles including regular haircuts, razor haircuts,
                            texturizing, up-dos, highlights, straightening, relaxing and master coloring for women, men
                            and children of all hair textures. Our services are done by professional stylists who are
                            well-informed about current trends.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--/Section : about -->
<!-- Section: parallax 1 -->
<section id="parallax1" class="home-section parallax text-light" data-stellar-background-ratio="0.5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="text-center">
                    <h2 class="big-heading highlight-dark wow bounceInDown" data-wow-delay="0.2s">We Respect and Care
                        For You</h2>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Section: contact -->
<section id="contact" class="home-section nopadd-bot color-dark bg-white text-center">
    <div class="container marginbot-50">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
                    <div class="section-heading text-center">
                        <h2 class="h-bold">Contact us</h2>
                        <div class="divider-header"></div>
                        <p>Happy to Help you</p>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <div id="help" class="container">

        <div class="row marginbot-80">
            <div class="col-md-8 col-md-offset-2">
                <form id="contact-form" class="wow bounceInUp" data-wow-offset="10" data-wow-delay="0.2s">
                    <div class="row marginbot-20">
                        <div class="col-md-6 xs-marginbot-20">
                            <input type="text" class="form-control input-lg" id="name" placeholder="Enter name"
                                   required="required"/>
                        </div>
                        <div class="col-md-6">
                            <input type="email" class="form-control input-lg" id="email" placeholder="Enter email"
                                   required="required"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <input type="text" class="form-control input-lg" id="subject" placeholder="Subject"
                                       required="required"/>
                            </div>
                            <div class="form-group">
									<textarea name="message" id="message" class="form-control" rows="4" cols="25"
                                              required="required"
                                              placeholder="Message"></textarea>
                            </div>
                            <button type="submit" class="btn btn-skin btn-lg btn-block" id="btnContactUs">
                                Send Message
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<!-- /Section: contact -->
<jsp:include page="footer.jsp"/>

<script type="text/javascript" src="<%=path%>/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/bootstrap-multiselect.js"></script>
<%--<script type="text/javascript" src="<%=path%>/js/vendor.js"></script>--%>
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
</body>
</html>





