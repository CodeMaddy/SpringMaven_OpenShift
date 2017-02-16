<%--
  Created by IntelliJ IDEA.
  User: Gourav
  Date: 12/5/2016
  Time: 12:19 PM
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
    <title>Hairstyle Details | Set Your Style</title>
    <!-- core CSS -->
    <%String path = request.getContextPath();%>
    <link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="<%=path%>/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css">
    <link href="<%=path%>/css/font-awesome.min.css" rel="stylesheet">
    <link href="<%=path%>/css/VendorAdmin.css" rel="stylesheet" type="text/css"/>
    <link href="<%=path%>/css/stylistDetails.css" rel="stylesheet" type="text/css"/>
    <link href="<%=path%>/color/default.css" rel="stylesheet">
  
</head>
<body>
<jsp:include page="header.jsp"/>

<div class="jumbotron" style="background-color:transparent;background-attachment:fixed;padding-top: 20px;">
    <div class="row" style="margin-left: 3px;">
        <div class="col-md-1"></div>

        <div class="col-md-4"
             style="opacity:0.8;padding-top:20px;margin-left: 20px;background-color: #cc99ff;height: 180px;width: 300px">
            <h1 style="font-family: 'Trebuchet MS', Arial, Helvetica, sans-serif;margin-top:90px;text-align: center;font-size: xx-large">
                <B>P R O D U C T</B></h1>
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

<div class="row" style="margin-top: 40px">

    <div class="col-md-6" style="margin-left:30px;background-color: transparent;">
        <img src="/showImage/${hairstyle.hairstylePics[0]}" class="img-responsive "
             style="opacity: 0.8;width:650px;height: 550px;border-radius: 30px;">
        <div class="row" style="margin-top:20px;">
            <div class="col-sm-2">
                <img src="/showImage/${hairstyle.hairstylePics[0]}" class="img-thumbnail img-responsive">
            </div>
            <div class="col-sm-2">
                <img src="/showImage/${hairstyle.hairstylePics[1]}" class="img-thumbnail img-responsive">
            </div>
            <div class="col-sm-2">
                <img src="/showImage/${hairstyle.hairstylePics[2]}" class="img-thumbnail img-responsive">
            </div>
        </div>
        <%--<div class="row">--%>
        <%--<div class="col-lg-10">--%>
        <%--<p style="text-align: justify"> <h4>--%>
        <%--I’m a Return and Refund policy. I’m a great place to let your customers--%>
        <%--know what to do in case they are dissatisfied with their purchase. Having a--%>
        <%--straightforward refund or exchange policy is a great way to build trust and reassure--%>
        <%--your customers that they can buy with confidence.--%>
        <%--</h4></p>--%>
        <%--</div>--%>
        <%--</div>--%>

    </div>
    <div class="col-md-3">
        <h2 id="SnameToGetOnNextHtmlpage">${hairstyle.hairstyleName}</h2>
        <h5 class="text-info"><code>Coupon Code : ASD456</code></h5>
        <br>
        <h3 style="font-family:Book Antiqua;"><kbd>Suitable For </kbd> &nbsp;</h3>
        <h3 class="text-muted" style="font-family:Book Antiqua;">${hairstyle.hairstyleFor}</h3>

        <h3 style="font-family:Book Antiqua;"><kbd>Price</kbd> &nbsp;</h3>
        <h3 class="text-muted" style="font-family:Book Antiqua;"><span
                id="RateToGetOnNextHtmlpage">&nbsp;&nbsp;${hairstyle.actualPrice}</span></h3>
        <!--<input value="View Details & Book The Stylist" type="button" id="detailsbtn" class="btn btn-default btn-lg"-->
        <!--style="margin-top:20px;width:350px;background-color:#CCCCCC;">-->
        <!--</input>-->
        <input type="button" class="btn btn-primary btn-lg" id="detailsbtn" value="View Details & Book The Stylist">
        <hr>
        <h3 style="font-family:Book Antiqua;"><kbd>Product Info </kbd> &nbsp;</h3><br>
        <p style="text-align: justify"> <h4>${hairstyle.hairstyleDescription}</h4>
        </p>
        <hr>
        <h3 style="font-family:Book Antiqua;"><kbd>Return And Refund Policy </kbd> &nbsp;</h3><br>
        <p style="text-align: justify"> <h4>
        I’m a Return and Refund policy. I’m a great place to let your customers
        know what to do in case they are dissatisfied with their purchase. Having a
        straightforward refund or exchange policy is a great way to build trust and reassure
        your customers that they can buy with confidence.
    </h4></p>

    </div>
    <div class="well-lg" id="datashow" style="margin-left: 50px; text-align: center; width: 1500px"><h3><kbd>Select From
        Below Stylists</kbd></h3>
        <hr>
        <hr>
        <div>
            <table id="Details" class="exm table-responsive table-hover" style="margin-left: 70px;width:100%;">
                <!--style="font-size: 2.0em;margin-left:250px;box-shadow:10px 10px 5px #888888;outline-style: inset; border: 1px solid black;-->
                <thead>
                <tr>
                    <th>Saloon_Id</th>
                    <th>Saloon_Name</th>
                    <th>Saloon Adress</th>
                    <th>Saloon Ratings</th>
                    <th>Phone Number</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><input type="checkbox" id="r4">&nbsp;&nbsp;&nbsp;${hairstyle.hairstyleId} </td>
                    <td>${vendorEmail.saloonName}</td>
                    <td>${vendorEmail.addr1}</td>
                    <td>5.0</td>
                    <td> ${vendorEmail.phoneNo}</td>
                    <td><input type="button" class="btn btn-primary btn-lg" id="b4" value="Book It"
                               style="visibility: hidden;"></td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"/>
<script type="text/javascript" src="<%=path%>/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/wow.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/bootstrap-multiselect.js"></script>
<script type="text/javascript" src="<%=path%>/js/AdminJS.js"></script>
<script type="text/javascript" src="<%=path%>/js/vendor.js"></script>
</body>
  <script>
        $(document).ready(function () {

            $("#detailsbtn").click(function () {
                var sname = $('#SnameToGetOnNextHtmlpage').text()
                var rate = $('#RateToGetOnNextHtmlpage').text()
                var mp = sname+" "+"Rs."+rate;
                sessionStorage.setItem("key", mp);              
                var url = "http://localhost:8080/BookHairstyle?sname&price=";
                document.location.href = url;
            });

            $("#sbtn").click(function () {
                $("#datashow").css("visibility", "visible");
            });
            $("#r1").change(function () {
                var ischecked = $(this).is(':checked');
                if (!ischecked) {
                    $("#b1").css("visibility", "hidden");
                }
                else if (ischecked) {
                    $("#b1").css("visibility", "visible");
                }
            });
            $("#r2").change(function () {
                var ischecked = $(this).is(':checked');
                if (!ischecked) {
                    $("#b2").css("visibility", "hidden");
                }
                else if (ischecked) {
                    $("#b2").css("visibility", "visible");
                }
            });
            $("#r3").change(function () {
                var ischecked = $(this).is(':checked');
                if (!ischecked) {
                    $("#b3").css("visibility", "hidden");
                }
                else if (ischecked) {
                    $("#b3").css("visibility", "visible");
                }
            });
            $("#r4").change(function () {
                var ischecked = $(this).is(':checked');
                if (!ischecked) {
                    $("#b4").css("visibility", "hidden");
                }
                else if (ischecked) {
                    $("#b4").css("visibility", "visible");
                }
            });
            $("#b1").click(function () {
                $(".p1").slideUp(2000).slideDown(2000);
            });
            $("#b4").click(function () {
            	var sname = $('#SnameToGetOnNextHtmlpage').text()
                var rate = $('#RateToGetOnNextHtmlpage').text()
                var mp = sname+" "+"Rs."+rate;
                sessionStorage.setItem("key", mp);              
                var url = "http://localhost:8080/BookHairstyle?sname&price=";
                document.location.href = url;
            });
        });
    </script>
</html>
