<%--
  Created by IntelliJ IDEA.
  User: Gourav
  Date: 12/1/2016
  Time: 11:14 AM
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
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>HairStyles | Set Your Style</title>
    <%String path = request.getContextPath();%>
    <!-- core CSS -->
    <link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="<%=path%>/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css">
    <link href="<%=path%>/css/font-awesome.min.css" rel="stylesheet">
    <link href="<%=path%>/css/VendorAdmin.css" rel="stylesheet" type="text/css"/>
    <link href="<%=path%>/color/default.css" rel="stylesheet">
</head>
<body style="background-color: #ffffe6   ">
<jsp:include page="header.jsp"/>
<div id="main">
    <div class="scrol_img" STYLE=" box-shadow: 10px 10px 5px #888888;
    padding-bottom: 200px;
    background-image: url('/images/hair1.jpeg');background-attachment:fixed;background-repeat:no-repeat;background-size: 100% 100%;height: 600px;">
        <div class="jumbotron"
             style="background-color:#9999FF;opacity:0.5;margin-left:160px;width: 350px;height:598px;text-align: center">
            <h2 style="margin-top: 120px;font-family:Palatino Linotype;">
                " Text in a pre element<br>is displayed in a fixed-width
                <br>font, and it preserves
                <br>both spaces and
                <br>line breaks."
                <br><br>
                <a href="ViewHairstyles" type="button" class="btn btn-default btn-lg">View Styles</a>
            </h2>
        </div>

    </div>
    <div class="row">
        <div class="col-md-4"
             STYLE="box-shadow: 10px 10px 5px #888888;margin-left:175px;background-image: url('/images/pot4.jpg');opacity:0.8;background-size: 100% 100%;width:350px;height: 485px"></div>
        <div class="col-md-6"
             style="opacity:0.8;background-color: #D0D0D0 ; box-shadow: 10px 10px 5px #888888;height:485px;  ">

            <h2 style="padding-left:100px;padding-top: 40px;font-family:Lucida Sans Unicode;">
                Make It New
            </h2>
            <p align="left" STYLE="padding-top: 25px;">
            <h4 STYLE="margin-left:100px;text-align: justify;"> I'm a paragraph. Click here to add your own text and
                edit me.<br>
                Damn It’s easy. Just click “Edit Text” or double click me to add your<br>
                Own content and make changes to the font. I’m a great place for <br>
                you to tell a story and let your users know a little more about you.</h4>
            <br>
            <%--<h4>--%>
            <%--<a href="index.html" style="padding-left: 100px"> >Search New Styles</a></h4>--%>
        </div>

    </div>
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-2"
             STYLE="box-shadow: 10px 10px 5px #888888;margin-left:40px;background-color: #FA8072;width:200px;height: 180px">
            <p STYLE="padding-top: 50px;">
            <h2 style="text-align:center;"><kbd>Trend Styles</kbd></h2></p>

        </div>
        <div class="col-sm-5"
             STYLE="box-shadow: 10px 10px 5px #888888;background-color:#707070 ;width:700px;height: 300px">
            <p STYLE="padding-top: 45px;">
            <h2 STYLE="margin-left:50px "><kbd>Hair MakeOver & Tips</kbd></h2>
            <blockquote STYLE="padding-top: 20px;text-align: justify;color: floralwhite;margin-left: 20px">I'm a
                paragraph. Click here to add your own text and edit me.
                I’m a great place for you to tell a story
                and let your users know a little more about you.
            </blockquote>
            </p>
        </div>
    </div>
    <div class="row" style="padding-top: 1px">
        <div class="col-md-3 img-rounded img-responsive"
             style="box-shadow: 10px 10px 5px #888888;
                                    opacity: 0.8;
                                    margin-left:40px;
                                    background-image: url('/images/brbrlgo.jpeg');
                                    background-size: 100% 100%;
                                    width:650px;height: 350px;">
        </div>
        <div class="col-sm-5"
             STYLE="opacity:0.9;box-shadow: 10px 10px 5px #888888;background-color:#CCCCFF ;width:600px;height: 320px">
            <p STYLE="padding-top: 45px;">
            <h2 STYLE="margin-left:50px "><kbd>Find Best Place For <br>Your Styling</kbd></h2>
            <blockquote STYLE="padding-top: 20px;text-align: justify;margin-left: 20px">I'm a paragraph. Click here to
                add your own text and edit me.
                I’m a great place for you to tell a story
                and let your users know a little more about you.
            </blockquote>
            </p>
        </div>
    </div>
    <div class="row" style="padding-top:2px;">
        <div class="col-md-1"></div>
        <div class="col-sm-5"
             STYLE=" border-radius: 5px;opacity:0.9;margin-left:0.2%;box-shadow: 10px 10px 5px #888888;background-color:#C8C8C8 ;width:350px;height: 350px">
            <p style="padding-top: 45px;">
            <h2 STYLE="margin-left:50px "><kbd>Choose From New Styles & <br>Makeovers</kbd></h2>
            <blockquote STYLE="padding-top: 20px;text-align: justify;margin-left: 20px">
                I'm a paragraph. Click here to add your own text and edit me.
                I’m a great place for you to tell a story
                and let your users know a little more about you.
            </blockquote>
            </p>
        </div>
        <div class="col-md-2 img-rounded img-responsive"
             STYLE="margin-left:2px;box-shadow: 10px 10px 5px #888888;
         opacity: 0.8;background-image: url('/images/port9.jpeg');
         background-size: 100% 100%;
         width:820px;height: 400px">
            <p STYLE="padding-top: 50px;">
                <!--<img src="port6.jpg" class="img-rounded img-responsive"-->
                <!--style="opacity: 0.7;-->
                <!--margin-top: 78px;-->
                <!--margin-left: 15px;-->

                <!--">-->
            </p>
        </div>

    </div>
    <br>
</div><!--END OF MAIN DIV-->

<jsp:include page="footer.jsp"/>
<script type="text/javascript" src="<%=path%>/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/wow.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/bootstrap-multiselect.js"></script>
<script type="text/javascript" src="<%=path%>/js/AdminJS.js"></script>
<script type="text/javascript" src="<%=path%>/js/vendor.js"></script>
</body>
</html>
