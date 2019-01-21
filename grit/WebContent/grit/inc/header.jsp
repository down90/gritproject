<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>GRIT</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/modern-business.css" rel="stylesheet">
<!-- <link href="css/style.css" rel="stylesheet"> -->
<link type="text/css" href="${pageContext.request.contextPath}/grit/css/slider_style.css" rel="stylesheet">
<link type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link type="text/css" href="${pageContext.request.contextPath}/grit/css/modal_login.css" rel="stylesheet">
<link type="text/css" href="${pageContext.request.contextPath}/grit/css/register.css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


</head>
<style>
.container {
	width: 990px;
}

.navbar-brand {
	margin-left: 6%;
}

.gnb {
	width: 300px;
	height: 50px;
	float: right;
	margin-right: 55px;
	display: inline-block;
}

.gnb_li {
	float: left;
	width: 30px;
	height: 30px;
	border: 1px solid lightgray;
	background-color: #f9f9f9;
	margin-top: 13px;
	list-style: none;
	font-size: 12px;
	border-radius: 30px;
}

.gnb_li1 {
	float: left;
	width: 67px;
	height: 25px;
	border: 1px solid lightgray;
	background-color: #f9f9f9;
	line-height: 25px;
	margin-top: 20px;
	margin-right: 10px;
	text-align: center;
	list-style: none;
	font-size: 12px;
	border-radius: 5px;
}

.gnb_li2 {
	float: left;
	width: 67px;
	height: 25px;
	border: 1px solid #545454;
	background-color: #f9f9f9;
	line-height: 25px;
	margin-top: 20px;
	text-align: center;
	list-style: none;
	font-size: 12px;
	border-radius: 5px;
}
.gnb_li3{
	float: left;
	width: 67px;
	height: 25px;
	color:blue;
	margin-top: 20px;
	text-align: center;
	list-style: none;
	font-size: 12px;
}
.gnb_li4 {
	float: left;
	width: 40px;
	height: 25px;
	border: 1px solid lightgray;
	background-color: #f9f9f9;
	line-height: 25px;
	margin-top: 20px;
	margin-right: 10px;
	text-align: center;
	list-style: none;
	font-size: 12px;
	border-radius: 5px;
}
.gnb_li5 {
	float: left;
	width: 67px;
	height: 25px;
	border: 1px solid lightgray;
	background-color: #f9f9f9;
	line-height: 25px;
	margin-top: 20px;
	text-align: center;
	list-style: none;
	font-size: 12px;
	border-radius: 5px;
}



.gnb_li li {
	color: #545454;
	font-size: 11.5px;
}

.gnb_li_a:hover {
	text-decoration: none;
	color: green;
}

</style>
<body>
	<!-- Navigation -->
	<nav class="fixed-top"
		style="background-color: black; margin-bottom: 0;">
		<div class="container">
			<div class="navbar-brand" style="width:56.5px; height:50px; display: block; cursor: pointer; background-image: url('${pageContext.request.contextPath}/grit/img/grit_logo.png');" 
				onclick="location.href='<c:url value="/grit/index.do"/>'">
			</div>
			<ul class="gnb">
				<c:if test="${empty sessionScope.memUserid }">
					<li class="gnb_li1">
						<a class="gnb_li_a" href="#" data-toggle="modal" data-target="#modal1">로그인</a>
					</li>
					<li class="gnb_li2">
						<a class="gnb_li_a" href="#" data-toggle="modal" data-target="#modal2">회원가입</a>
					</li>
				</c:if>
				<c:if test="${!empty sessionScope.memUserid }">
					<li class="gnb_li">
						<div class="profile-div"></div>
					</li>
					<li class="gnb_li3">
						<a class="gnb_li_a" href="#" data-toggle="modal" data-target="#modal3">{닉네임}</a>
					</li>
					<li class="gnb_li4">
						<a class="gnb_li_a" data-toggle="modal" data-target="#modal4">3</a>
					</li>
					<li class="gnb_li4">
						<a class="gnb_li_a" data-toggle="modal" data-target="#modal5">4</a>
					</li>
					<li class="gnb_li5" onclick="location.href='<c:url value="/grit/index-logout.do"/>'">
						<a class="gnb_li_a">Log out</a>
					</li>
				</c:if>
			</ul>
		</div>
	</nav>
	<%@ include file="../login/login.jsp"%>
	<%@ include file="../login/afterLogin.jsp" %>