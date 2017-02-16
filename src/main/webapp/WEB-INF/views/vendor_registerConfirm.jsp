<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Gourav
  Date: 11/27/2016
  Time: 8:03 PM
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
    <title>Vendor Email Confirm | Vendor</title>
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
<div class="container">
    <div class="well" style=" margin:2%;">
        <c:choose>
            <c:when test="${success == null}">
                <img src="<%=path%>/images/close-button.png" class="img-responsive"
                     style="display: block; margin-left: auto;margin-right: auto;"/>
                <h2 style="text-align: center;">Invalid email address</h2>
                <p style="font-size: 20px; text-align: center;"> No account is registered with this email address </p>
                <br/><br/>
                <div class="row">
                    <div class="col-xs-3"></div>
                    <div class="col-xs-3">Want to register as User
                        <a href="vendor_signup.jsp" class="btn btn-primary"
                           style="display: block; margin-left: auto;margin-right: auto;">CREATE USER ACCOUNT</a>
                    </div>
                    <div class="col-xs-3">
                        Interested to promote your saloon??
                        <a href="vendor_signup.jsp" class="btn btn-primary"
                           style="display: block; margin-left: auto;margin-right: auto;">CREATE VENDOR ACCOUNT</a>
                    </div>
                    <div class="col-xs-3"></div>
                </div>
            </c:when>
            <c:otherwise>
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-md-offset-4"><br/>
                            <img src="<%=path%>/images/success.png" class="img-responsive"
                                 style="display: block; margin-left: auto;margin-right: auto;"/>
                            <h2 style="text-align: center;"><em>Verified</em></h2>
                            <p style="font-size: 20px; text-align: center;">Your vendor account is active now </p>
                            <br/><br/>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Please Choose Password</h3>
                                </div>
                                <div class="panel-body">
                                    <form role="form" action="choosePasswordSubmitForm" onsubmit="return validatePassword()" method="post">
                                        <fieldset>
                                            <div class="form-group">
                                                <input class="form-control" id="pwd1" name="pwd1"
                                                       title="Password must contain at least 6 characters, including UPPER/lowercase and numbers"
                                                       required placeholder="Choose Password" type="password" autofocus>
                                            </div>
                                            <div class="form-group">
                                                <input class="form-control" placeholder="Re-Enter Password"
                                                       title="Please enter the same Password as above" type="password"
                                                       required id="pwd2" name="pwd2">
                                            </div>
                                            <input type="hidden" value="<%= request.getParameter("verify")%>" name="email" style="visibility: hidden">
                                            <!-- Change this to a button or input when using this as a form -->
                                            <button type="submit" class="btn btn-success btn-block">SUBMIT</button>
                                        </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:otherwise>
        </c:choose>
    </div>
</div>
<jsp:include page="vendor_footer.jsp"/>

<script type="text/javascript" src="<%=path%>/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/wow.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/bootstrap-multiselect.js"></script>
<script type="text/javascript" src="<%=path%>/js/AdminJS.js"></script>
<script type="text/javascript" src="<%=path%>/js/vendor.js"></script>
</body>
</html>
