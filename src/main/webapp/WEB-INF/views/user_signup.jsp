<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Harsha
  Date: 11/17/2016
  Time: 9:35 AM
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
    <title>Create Account | Set Your Style</title>
    <!--     Fonts and icons     -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"/>
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
<jsp:include page="header.jsp"/>

<div class="vSignUp" style="margin: 3%;">
    <div class="row">
        <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
            <form role="form" id="usersubmitform" action='userSignupSubmitForm' method="post">
                <h2 style="text-align: center;">CREATE AN ACCOUNT</h2>
                <hr class="colorgraph">
                <p>Welcome, please enter the following details to continue.</p>
                <p>If you have previously registered with us, <a href="user_signin">click here</a></p>
                <hr class="colorgraph">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-6">
                        <div class="form-group">
                            <input type="text" name="firstname" id="first_name" class="form-control input-lg" placeholder="First Name" tabindex="1">
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6">
                        <div class="form-group">
                            <input type="text" name="lastname" id="last_name" class="form-control input-lg" placeholder="Last Name" tabindex="2">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <input type="email" name="mail" id="mail" class="form-control input-lg" placeholder="Email Address" tabindex="4">
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-6">
                        <div class="form-group">
                            <input type="password" name="password" id="password" class="form-control input-lg" placeholder="Password" tabindex="5">
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6">
                        <div class="form-group">
                            <input type="password" name="password_confirmation" id="password_confirmation" class="form-control input-lg" placeholder="Confirm Password" tabindex="6">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <input type="tel" name="mobilenumber"  class="form-control input-lg" placeholder="Mobile Number" tabindex="4">
                </div>
                <div class="row">
                    <div class="col-xs-4 col-sm-3 col-md-3">
                    </div>
                    <div class="col-xs-8 col-sm-9 col-md-9">
                        By clicking <strong class="label label-primary">Register</strong>, you agree to the <a href="#" data-toggle="modal" data-target="#t_and_c_m">Terms and Conditions</a>
                    </div>
                </div>

                <hr class="colorgraph">
                <div class="row">
                    <div class="col-xs-12 col-md-6"><input type="submit" value="REGISTER" class="btn btn-primary btn-block btn-lg" tabindex="7"></div>
                    <div class="col-xs-12 col-md-6"><input type="reset" value="CLEAR" class="btn btn-primary btn-block btn-lg" tabindex="7"></div>
                </div>
            </form>
        </div>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="t_and_c_m" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title" id="myModalLabel">Terms & Conditions</h4>
                </div>
                <div class="modal-body">
                    <p> Welcome to Step by Step
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">I Agree</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
</div>
    <%--<div id="intro" class="container" style="padding-right: 10%; padding-left: 10%;">--%>
        <%--<h2>Registration</h2>--%>
        <%--<div class="card-form">--%>
            <%--<div class="reg-form">--%>
                <%--<div class="reg">--%>
                    <%--<p>Welcome, please enter the following details to continue.</p>--%>
                    <%--<p>If you have previously registered with us, <a href="/user_signin">click here</a></p>--%>
                    <%--<form class="form-vertical" id="" action='userSignupSubmitForm' method="post">--%>
                        <%--<fieldset>--%>
                            <%--<ul>--%>
                                <%--<li class="text-info">First Name:</li>--%>
                                <%--<li><input type="text" name="firstname" value=""></li>--%>
                            <%--</ul>--%>
                            <%--<ul>--%>
                                <%--<li class="text-info">Last Name:</li>--%>
                                <%--<li><input type="text" name="lastname" value=""></li>--%>
                            <%--</ul>--%>
                            <%--<ul>--%>
                                <%--<li class="text-info">Email:</li>--%>
                                <%--<li><input type="text" name="mail" value=""></li>--%>
                            <%--</ul>--%>
                            <%--<ul>--%>
                                <%--<li class="text-info">Password:</li>--%>
                                <%--<li><input type="password" name="password" value=""></li>--%>
                            <%--</ul>--%>
                            <%--<ul>--%>
                                <%--<li class="text-info">Re-enter Password:</li>--%>
                                <%--<li><input type="password" value=""></li>--%>
                            <%--</ul>--%>
                            <%--<ul>--%>
                                <%--<li class="text-info">Mobile Number:</li>--%>
                                <%--<li><input type="text" name="mobilenumber" value=""></li>--%>
                            <%--</ul>--%>

                            <%--<button class="btn btn-primary" type="submit">Register</button>--%>
                            <%--<p class="click">By clicking this button, you are agree to my <a href="#">Policy Terms and--%>
                                <%--Conditions.</a></p>--%>
                        <%--</fieldset>--%>
                    <%--</form>--%>
                <%--</div>--%>
            <%--</div>--%>

            <%--<div class="clearfix"></div>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>

<jsp:include page="footer.jsp"/>
<!-- Core JavaScript Files -->
<script type="text/javascript" src="<%=path%>/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/wow.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/bootstrap-multiselect.js"></script>
<script type="text/javascript" src="<%=path%>/js/vendor.js"></script>
</body>
</html>
