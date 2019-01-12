<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<!-- login 버튼 -->
		<input type="button" class="main-login-btn" data-toggle="modal" data-target="#modal1" value="Log in">
		<!-- join 버튼 -->
		<input type="button" class="main-login-btn" data-toggle="modal" data-target="#modal2" value="Join">

		<!-- modal login -->
		<div class="modal fade" id="modal1" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content content-size1">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h3 class="modal-title">Log in</h3>
					<div>
						<div>
							<input type="text" placeholder="계정(이메일)을 입력해주세요" class="modal-button">
							<input type="password" placeholder="비밀번호를 입력해 주세요" class="modal-button">
						</div>
						<p>validation message field</p>
						<div>
							<input type="button" value="로그인" class="modal-button">
						</div>
						<div>
							<a href="#" data-toggle="modal" data-target="#modal1_1">패스워드가 기억나지 않나요?</a>
						</div>
					</div>
					<div>
						<input type="button" value="카카오로 로그인 하기" class="modal-button">
						<input type="button" value="페이스북으로 로그인 하기" class="modal-button">
					</div>
				</div>
			</div>
		</div>
		<!-- modal login -->
		
		<!-- modal findpwd -->
		<div class="modal" id="modal1_1" role="dialog">
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
						<input type="button" value="직접 계정 생성하기" class="modal-button" data-toggle="modal" data-target="#modal2_1">
						<input type="button" value="카카오로 가입하기" class="modal-button">
						<input type="button" value="페이스북으로 가입하기" class="modal-button">
					</div>
				</div>
			</div>
		</div>
		<!-- modal-join -->
		<!-- modal 계정 직접생성 -->
		<div class="modal" id="modal2_1" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content content-size1">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<div>
						<input type="text" placeholder="계정으로 사용하실 이메일 입력해주세요." class="modal-button">
						<input type="password" placeholder="비밀번호를 입력해주세요." class="modal-button">
						<input type="password" placeholder="비밀번호를 한번 더 입력해주세요." class="modal-button">
						<p>[!] 이메일을 허위로 작성할 경우, 비밀번호를 분실 했을 때 비밀번호를 찾을 수 없습니다.</p>
						<p>validation message field</p>
						<input type="button" value="다음" class="modal-button" data-toggle="modal" data-target="#modal2_2">				
					</div>
				</div>
			</div>
		</div>
		<!-- modal 계정 직접생성 -->
		<!-- modal 프로필 생성 -->
		<div class="modal" id="modal2_2" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content content-size2">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					
					<div class="intro-size float-l" style="border:1px solid black">
						<div class="image-div-size">
							<a><img alt="" src=""></a>
						</div>
						<div class="align-c">
							<input type="text" placeholder="닉네임을 입력해주세요" class="modal-button">
							<textarea rows="" cols="" class="modal-intro" placeholder="자기소개를 입력해주세요" >
								
							</textarea>
						</div>
					</div>
					<div class="intro-size float-r" style="border:1px solid black">
						<div>
							<h4>포지션</h4>
							<div class="wrap">
							    <div class="box">
									<label for="position1-1">포지션 명</label>
							    </div>
							    <div class="box">
									<label for="position1-2">포지션 명</label>
							    </div>
							    <div class="box">
									<label for="position1-3">포지션 명</label>
							    </div>
							    <div class="box">
									<label for="position1-4">포지션 명</label>
							    </div>
							    <div class="box">
									<label for="position1-5">포지션 명</label>
							    </div>
							    <div class="box">
									<label for="position1-6">포지션 명</label>
							    </div>
							    <div class="box">
									<label for="position1-7">포지션 명</label>
							    </div>
							    <div class="box">
									<label for="position1-8">포지션 명</label>
							    </div>
							    <div>
								   	<input type="checkbox" value="" id="position1-1" class="display-n">
								   	<input type="checkbox" value="" id="position1-2" class="display-n">
								   	<input type="checkbox" value="" id="position1-3" class="display-n">
								   	<input type="checkbox" value="" id="position1-4" class="display-n">
								   	<input type="checkbox" value="" id="position1-5" class="display-n">
								   	<input type="checkbox" value="" id="position1-6" class="display-n">
								   	<input type="checkbox" value="" id="position1-7" class="display-n">
								   	<input type="checkbox" value="" id="position1-8" class="display-n">
							    </div>
							</div>  
						</div>
						<div>
							<h4>관심분야</h4>
							<div class="wrap">
							    <div class="wrap">
							    <div class="box">
									<label for="position2-1">포지션 명</label>
							    </div>
							    <div class="box">
									<label for="position2-2">포지션 명</label>
							    </div>
							    <div class="box">
									<label for="position2-3">포지션 명</label>
							    </div>
							    <div class="box">
									<label for="position2-4">포지션 명</label>
							    </div>
							    <div class="box">
									<label for="position2-5">포지션 명</label>
							    </div>
							    <div class="box">
									<label for="position2-6">포지션 명</label>
							    </div>
							    <div class="box">
									<label for="position2-7">포지션 명</label>
							    </div>
							    <div class="box">
									<label for="position2-8">포지션 명</label>
							    </div>
							    <div>
								   	<input type="checkbox" value="" id="position2-1" class="display-n">
								   	<input type="checkbox" value="" id="position2-2" class="display-n">
								   	<input type="checkbox" value="" id="position2-3" class="display-n">
								   	<input type="checkbox" value="" id="position2-4" class="display-n">
								   	<input type="checkbox" value="" id="position2-5" class="display-n">
								   	<input type="checkbox" value="" id="position2-6" class="display-n">
								   	<input type="checkbox" value="" id="position2-7" class="display-n">
								   	<input type="checkbox" value="" id="position2-8" class="display-n">
							    </div>
							</div>  
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
