<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>afterLogin.jsp</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/modal_login.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<!--  -->
	<div id="after-login-header">
		<div>
			<div class="profile-div"><img alt="프로필 사진" scr=""></div>
			<a href="">{닉네임}</a>
		</div>
		<div>
			<div>
				<button type="button" class="main-btn-small" data-toggle="modal" data-target="#modal3"><img alt="" src="">3</button>
			</div>
			<div>
				<button type="button" class="main-btn-small" data-toggle="modal" data-target="#modal4"><img alt="" src="">4</button>
			</div>
		</div>
		<div>
			<input type="button" class="main-login-btn" value="Log out">
		</div>
	</div>
	<!-- Log out 버튼 -->
	
	<!-- modal부분시작 -->
	<div class="modal fade" id="modal3" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content content-size1">
				
			</div>
		</div>
	</div>
	<div class="modal fade" id="modal4" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content content-size1">
				
			</div>
		</div>
	</div>
</body>
</html>