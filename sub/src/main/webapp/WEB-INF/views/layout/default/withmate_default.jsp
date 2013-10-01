<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles"       prefix="t"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/resources/common/bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">

    <!-- FontAwesome -->
    <link href="${pageContext.request.contextPath}/resources/common/fontawesome/css/font-awesome.css" rel="stylesheet" media="screen">
    <style>
        .header {margin-bottom: 60px;}
        .navbar-inverse button {background: none; border:0; color: #ffffff; }
        #bookFooter {position:fixed;   left:0px;   bottom:0px;   height:50px; width:100%; background:#999;}
        #bookFooter nav{text-align:center; font-size: small;}
        #bookFooter .navbar-inverse button{height: 50px;}
    </style>
</head>
<body>

<t:insertAttribute name="header"/>
<t:insertAttribute name="content"/>
<t:insertAttribute name="footer"/>


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="//code.jquery.com/jquery.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${pageContext.request.contextPath}/resources/common/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
