<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register.jsp</title>
<style>
.registerbox{
	width: 40%;
	height: 450px;
	border: 1px solid gray;
}
.notice_add{
	width: 100%;
	height:40px;
	line-height:40px;
	background-color:lightgray;
	text-align:center;
}
.notice_title{
	width:95%;
	margin-left:2.5%;
	height:30px;
	line-height:30px;
	padding-left:10px;
	border:1px solid gray;
	color:black;
}
.notice_contents{
	width:95%;
	margin-left:2.5%;
	height:200px;
	padding-left:10px;
	border:1px solid gray;
	color:black;
}
</style>
</head>
<body>
<form class="registerbox" name="frmNotice" method="post" action="/grit/grit/admin/notice/register_ok.do">
	<div class="notice_add">공지사항 추가</div>
	<select name="notiCategory">
		<option>강의</option>
		<option>채용</option>
		<option>팀빌딩</option>
		<option>네트워킹</option>
	</select>
	<input name="notiTitle" type="text" class="notice_title" placeholder="여기에 공지사항 제목을 입력하세요">
	<textarea name="notiContent" class="notice_contents" placeholder="여기에 공지사항 본문을 입력하세요"></textarea>
	<input type="submit" value="추가" >
	<input type="reset" value="취소">
</form>
</body>
</html>