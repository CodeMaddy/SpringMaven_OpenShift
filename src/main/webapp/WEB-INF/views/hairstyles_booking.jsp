<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" href="<%=request.getContextPath()%>/img/favicon.ico">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Hairstyle Booking | Set Your Style</title>
    <!-- core CSS -->
    <%String path = request.getContextPath();%>
    <link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="<%=path%>/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css">
    <link href="<%=path%>/css/font-awesome.min.css" rel="stylesheet">
    <link href="<%=path%>/css/VendorAdmin.css" rel="stylesheet" type="text/css"/>
    <link href="<%=path%>/css/stylistDetails.css" rel="stylesheet" type="text/css"/>
    <link href="<%=path%>/calender/fullcalendar.css" rel='stylesheet'/>
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
                <B>S E R V I C E - B O O K I N G</B></h1>
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

<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-2" style="margin-left:40px;background-color: #C0C0C0">
        <h2 style="font-family: 'Trebuchet MS', Arial, Helvetica, sans-serif;text-align: center">
            Schedule A Day
        </h2>
    </div>
</div>


<div class="container" style="margin-top: 80px">
    <div class="row">
        <div class="col-md-8" id="cal" style="margin-left: 30px">
            <div id='calendar'></div>
        </div>

        <div class="col-md-3 well" style="margin-top:100px;margin-left: 60px;width: 300px;">
            <input type="text" class="form-control" id="selectedStylenName" placeholder="Style Name"
                   style="height: 90px;font-family: 'Trebuchet MS', Arial, Helvetica, sans-serif;
                   font-size: 30px;"><br>
            <input type="text" class="form-control" id="selectedMoney"
                   placeholder="rate"
                   style="height: 40px;
                   font-family: 'Trebuchet MS', Arial, Helvetica, sans-serif;
                   font-size: 20px;">
            <hr style="background-color: black;height: 1px;">
            <input type="text" class="form-control" id="slcteddate" placeholder="Date"><br>
            <input type="text" class="form-control" id="slctedtime" placeholder="time"><br>
            <button class="btn btn-lg btn-success" id="confirm" disabled
                    style="margin-left:30px;width: 200px"
                    data-toggle="modal" data-target="#confirmbooking">Confirm Booking
            </button>
        </div>

    </div>

</div>


<div id="timings" style="display: none;visibility: hidden">

    <h3 style="margin-right:350px;font-family: 'Trebuchet MS', Arial, Helvetica, sans-serif;text-align: center">
        <kbd>Select Timing</kbd>
    </h3>

    <div class="row" style="margin-top: 40px;">
        <div class="col-md-2"></div>
        <div class="col-md-2">
            <h3 style="font-family: 'Trebuchet MS', Arial, Helvetica, sans-serif;text-align: center">Morning</h3><br>
            <div class="timing_buttons_morning" style="margin-left: 60px">
                <button class="btn btn-lg btn-default" id="m1" btn-toggle="button"><span>09.30 AM</span></button>
                <br><br>
                <button class="btn btn-lg btn-default" id="m2" data-toggle="button"><span>10.00 AM</span></button>
                <br><br>
                <button class="btn btn-lg btn-default" id="m3" data-toggle="button"><span>10.30 AM</span></button>
                <br><br>
            </div>
        </div>
        <div class="col-md-2">
            <h3 style="margin-right:50px;font-family: 'Trebuchet MS', Arial, Helvetica, sans-serif;text-align: center">
                AfterNoon</h3><br>
            <div class="timing_buttons_afternoon" style="margin-left: 60px">
                <button class="btn btn-lg btn-default" id="a1"><span>12.30 PM</span></button>
                <br><br>
                <button class="btn btn-lg btn-default" id="a2"><span>01.00 PM</span></button>
                <br><br>
                <button class="btn btn-lg btn-default" id="a3"><span>02.30 PM</span></button>
                <br><br>
                <button class="btn btn-lg btn-default" id="a4"><span>03.30 PM</span></button>
                <br><br>
            </div>
        </div>
        <div class="col-md-2">
            <h3 style="font-family: 'Trebuchet MS', Arial, Helvetica, sans-serif;text-align: center">Evening</h3>
            <br>
            <div class="timing_buttons_afternoon" style="margin-left: 60px">
                <button class="btn btn-lg btn-default" id="e1"><span>04.30 PM</span></button>
                <br><br>
                <button class="btn btn-lg btn-default" id="e2"><span>05.00 PM</span></button>
                <br><br>
                <button class="btn btn-lg btn-default" id="e3"><span>06.30 PM</span></button>
                <br><br>
                <button class="btn btn-lg btn-default" id="e4"><span>07.30 PM</span></button>
                <br><br>
                <button class="btn btn-lg btn-default" id="e5"><span>08.30 PM</span></button>
                <br><br>
            </div>
        </div>
    </div>
</div>

<!-- <div class="container "> -->
<!-- confirm Booking Modal---- STYLE="background-image: url('backpicofmodel.jpeg')"-->

<div class="modal fade" id="confirmbooking" role="dialog">
    <div class="modal-dialog">
        <!-- quickview Modal content-->
        <div class="modal-content" STYLE="margin-left:20%;height: 500px;width: 1000px">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title" align="center"><span class="glyphicon glyphicon-send"></span>&nbsp;Confirm
                    Booking</h4>
            </div>
            <div class="modal-body">
                <div class="information" style="margin-left: 300px;padding-top: 70px;">
                    <p align="center">
                    <h2 style="font-family: 'Trebuchet MS', Arial, Helvetica, sans-serif;">Great, You’re Booked!</h2>
                    <h4 style="margin-right:50%;padding-top: 20px;text-align: center;font-family: 'Trebuchet MS', Arial, Helvetica, sans-serif;">
                        A confirmation email is on its way to you.</h4>
                    </p>
                </div>
                <br>
                <div class="info">

                </div>

            </div>

        </div>
    </div>
</div>
<jsp:include page="footer.jsp"/>
<!-- core scripts -->
<script type="text/javascript" src="<%=path%>/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/wow.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/bootstrap-multiselect.js"></script>
<script type="text/javascript" src="<%=path%>/calender/jquery.min.js"></script>
<script type="text/javascript" src="<%=path%>/calender/moment.min.js"></script>
<script type="text/javascript" src="<%=path%>/calender/fullcalendar.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/custom.js"></script>
<script type="text/javascript" src="<%=path%>/js/AdminJS.js"></script>
<script type="text/javascript" src="<%=path%>/js/vendor.js"></script>
</body>

<script>
    $(document).ready(function () {
        // page is now ready, initialize the calendar...
        // options and github  - http://fullcalendar.io/
        var name = sessionStorage.getItem("key")
        var hname = name.split(" ");
        var hair = hname[0];
        var prce = hname[hname.length - 1];
        alert(prce + " " + hair);
        $('#selectedStylenName').val(hair);
        $('#selectedMoney').val(prce);
        $('#calendar').fullCalendar({
            selectable: true,
            select: function (start, end, jsEvent, view) {

                var dates = "On Date :- " + moment(start).format();
                $('#slcteddate').val(dates);
                $('#slcteddate').prop('disabled', true);
//                    $("#calendar").slideUp(1000);
                $(this).css('background-color', '#d3f8f4');
                $("#timings").css("visibility", "visible")
                    .slideToggle(1000);

            }
        });

        $('button').click(function () {
//                var isdisabled = $(this).is(':disabled');
//
//                if (isdisabled){$('button').not(this).prop('disabled', false);}
//                else if (!isdisabled){$('button').not(this).prop('disabled', true);}
//                else {alert(isdisabled);$('button').not(this).prop('disabled', false);}
            var tym = "On Time :- " + $(this).text();
            $('#slctedtime').val(tym);
            $('#slctedtime').prop('disabled', true);
            $('#confirm').prop('disabled', false);
        });
    });
</script>

</html>

<!-- // window.onload = function () { -->
<!-- // // var hname=localStorage.getItem("key"); -->

<!-- // // // /* $('#selectedStylenName').val('HairStyle 1'); -->
<!-- // // // $('#selectedMoney').val('1hr | $ 100'); */ -->

<!-- // // //alert("url ="+window.location.href);// Returns full URL -->

<!-- // // // var url = window.location.href; -->
<!-- // // // var main = url.split('='); -->
<!-- // // // var valus = main[main.length-1]; -->
<!-- // // // valus = valus.replace(/%/g, "red"); -->

<!-- // // // var hname = valus[main.length-1] -->
<!-- // alert(localStorage.getItem("lastname")); -->

<!-- // document.getElementById("selectedStylenName").innerHTML = localStorage.getItem("lastname"); -->


<!-- // } -->