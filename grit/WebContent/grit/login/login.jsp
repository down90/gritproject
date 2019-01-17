<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/modal_login.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="modal fade" id="modal1" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content content-size1">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h3 class="modal-title">로그인</h3>
					<form action="index.do" method="post" name="frmLogin">
						<div>
							<input type="text" placeholder="계정(이메일)을 입력해주세요" class="modal-button modal_margin30" name="memUserid">
							<input type="password" placeholder="비밀번호를 입력해 주세요" class="modal-button modal_margin5" name="memPwd">
							<p style="margin-top:5px; text-align:right">validation message field</p>
							<div>
								<input type="submit" value="로그인" class="modal-button login">
							</div>
							<div class="findpwd">
								<a href="#" data-toggle="modal" data-target="#modal1-1">패스워드가 기억나지 않나요?</a>
							</div>
						</div>
						<div>
							<input type="button" value="카카오로 로그인 하기" class="modal-button kakao modal_margin80">
							<input type="button" value="페이스북으로 로그인 하기" class="modal-button facebook modal_margin5">
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- modal login -->
		
		<!-- modal findpwd -->
		<div class="modal" id="modal1-1" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content content-size1">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h3 class="modal-title">비밀번호 찾기</h3>
					<input type="text" placeholder="여기에 계정(이메일)을 입력해주세요." class="modal-button">
					<input type="button" value="비밀번호 재발급하기" class="modal-button">
					<p>[!] 가입하신 이메일로 비밀번호 재발급 링크를 보내드립니다.</p>	
				</div>
			</div>
		</div>
		<!-- modal findpwd -->
		<!-- modal join -->
		<!-- form태그를 modal창 전부를 묶어서 post되는지 확인 -->
		<div class="modal fade" id="modal2" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content content-size1">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<div>
						<div><img src="#" class="image-div-size"></div>
						<div class="modal-button">
							<span>개인정보 취급 방침에 동의 <a href="#">[보기]</a></span>
							<img src="../img/check.png" alt="" class="float-r">
						</div>
						<div class="modal-button">
							<span>서비스 이용약관에 동의 <a href="#">[보기]</a></span>
							<img src="../img/check.png" alt="" class="float-r">
						</div>
					</div>
					<div>
						<input type="button" value="직접 계정 생성하기" class="modal-button" data-toggle="modal" data-target="#modal2-1">
						<input type="button" value="카카오로 가입하기" class="modal-button">
						<input type="button" value="페이스북으로 가입하기" class="modal-button">
					</div>
				</div>
			</div>
		</div>
		<!-- modal-join -->
		<!-- modal 계정 직접생성 -->
		<div class="modal" id="modal2-1" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content content-size1">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<div>
						<input type="text" placeholder="계정으로 사용하실 이메일 입력해주세요." class="modal-button">
						<input type="password" placeholder="비밀번호를 입력해주세요." class="modal-button">
						<input type="password" placeholder="비밀번호를 한번 더 입력해주세요." class="modal-button">
						<p>[!] 이메일을 허위로 작성할 경우, 비밀번호를 분실 했을 때 비밀번호를 찾을 수 없습니다.</p>
						<p>validation message field</p>
						<input type="button" value="다음" class="modal-button" data-toggle="modal" data-target="#modal2-2">				
					</div>
				</div>
			</div>
		</div>
		<!-- modal 계정 직접생성 -->
		<!-- modal 프로필 생성 -->
		<div class="modal" id="modal2-2" role="dialog">
			<div class="modal-dialog">
				
				<div class="modal-content content-size2">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					
					<div class="intro-size">
						<div class="image-div-size">
							<a><img alt="" src=""></a>
						</div>
						<div class="align-c">
							<input type="text" placeholder="닉네임을 입력해주세요" class="modal-button">
							<textarea class="modal-intro" placeholder="자기소개를 입력해주세요" ></textarea>
						</div>
					</div>
					<div class="intro-size">
						<div>
							<h4>포지션</h4>
							<div class="wrap">
							   	<input type="button" value="포지션 명" id="" class="button1">
							   	<input type="button" value="포지션 명" id="" class="button1">
							   	<input type="button" value="포지션 명" id="" class="button1">
							   	<input type="button" value="포지션 명" id="" class="button1">
							   	<input type="button" value="포지션 명" id="" class="button1">
							   	<input type="button" value="포지션 명" id="" class="button1">
							   	<input type="button" value="포지션 명" id="" class="button1">
							   	<input type="button" value="포지션 명" id="" class="button1">
							</div>  
						</div>
						<div>
							<h4>관심분야</h4>
							<div class="wrap">
							   	<input type="button" value="포지션 명" id="" class="button1">
							   	<input type="button" value="포지션 명" id="" class="button1">
							   	<input type="button" value="포지션 명" id="" class="button1">
							   	<input type="button" value="포지션 명" id="" class="button1">
							   	<input type="button" value="포지션 명" id="" class="button1">
							   	<input type="button" value="포지션 명" id="" class="button1">
							   	<input type="button" value="포지션 명" id="" class="button1">
							   	<input type="button" value="포지션 명" id="" class="button1">
							</div>  
						</div>
					</div>
					
				</div>
			</div>
		</div>
		<!-- modal 프로필 생성 -->
	</div>
</body>
</html>
