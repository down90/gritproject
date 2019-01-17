<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>GRIT</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">
    <!-- <link href="css/style.css" rel="stylesheet"> -->
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/grit/css/modal_login.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	
  </head>
  <style>
  .container{
  	width:990px;
  }
  .navbar-brand{
  	margin-left:6%;
  }
  .gnb{
      	width:160px;
      	height:50px;
      	float:right;
      	margin-right:55px;
      }
      .gnb_li1{
      	float:left;
      	width:67px;
      	height:25px;
      	border: 1px solid lightgray;
      	background-color: #f9f9f9;
      	line-height:25px;
      	margin-top:20px;
      	margin-right:10px;
      	text-align:center;
      	list-style:none;
      	font-size:12px; 
      	border-radius:5px;
      }
      .gnb_li2{
      	float:left;
      	width:67px;
      	height:25px;
      	border: 1px solid #545454;
      	background-color: #f9f9f9;
      	line-height:25px;
      	margin-top:20px;
      	text-align:center;
      	list-style:none;
      	font-size:12px;
      	border-radius:5px;
      	 
      }
      .gnb_li_a{
      	color: #545454;
      	font-size:11.5px;  	 
      }
      .gnb_li_a:hover{
      	text-decoration:none;
      	color:green;
      	
      }
   </style>
  <body>
  
  
    <!-- Navigation -->
    <nav class="fixed-top" style="background-color:black;margin-bottom:0;">
      <div class="container">
        <div class="navbar-brand" href="#" style="width:56.5px; height:50px; background-image: url('./img/grit_logo.png')">
       </div>
        
          <ul class="gnb">
            <li class="gnb_li1">
              <a class="gnb_li_a" href="#" data-toggle="modal" data-target="#modal1">로그인</a>
            </li>
            <li class="gnb_li2">
              <a class="gnb_li_a" href="#" data-toggle="modal" data-target="#modal2">회원가입</a>
            </li>
          </ul>
        
      </div>
    </nav>
   </body>