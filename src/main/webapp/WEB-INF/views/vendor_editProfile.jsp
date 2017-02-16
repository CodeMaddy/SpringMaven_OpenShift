<%@ page import="com.springmaven.model.Vendor" %><%--
  Created by IntelliJ IDEA.
  User: Gourav
  Date: 11/22/2016
  Time: 5:03 PM
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
    <title>Edit Saloon Details | Vendor</title>

    <%String path = request.getContextPath();%>
    <link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="<%=path%>/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css">
    <link href="<%=path%>/css/font-awesome.min.css" rel="stylesheet">
    <link href="<%=path%>/css/stylistDetails.css" rel="stylesheet">
    <link href="<%=path%>/css/VendorAdmin.css" rel="stylesheet" type="text/css"/>
    <link href="<%=path%>/color/default.css" rel="stylesheet">
</head>
<body>
<header>
   <jsp:include page="vendor_header.jsp"/>
</header>


<div id="main">
<h1>EDIT SALOON DETAILS PAGE</h1>
</div>


<jsp:include page="vendor_footer.jsp" />

</body>
</html>
