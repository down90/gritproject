<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" href="../css/register.css" rel="stylesheet" />
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.3.1.min.js'/>"></script>
<script>
	$(function(){
		$(".btn_box").click(function(){
			if($("#cName").val().length<1){
				alert("강의 제목을 입력하세요");
				$("#cName").focus();
				return false;
			}
		});
	});
</script>
<title>register.jsp</title>
</head>
<body>
	<form name="login" method="post"  action="<c:url value='/leture/letureRegister_ok.do'/>">
		<div class="pg_layout">
			<div class="cont1">
				<div class="pwrap">
					<p style="float: left; width: 12%;">강의 제목</p>
					<input type="text" class="size_85" name="cName" id="cName">
				</div>
				<div class="pwrap">
					<p style="float: left; width: 12%;">강사 소개</p>
					<textarea class="size_85" name="cTeacherIntro"></textarea>
				</div>
				<div class="pwrap">
					<p style="float: left; width: 15%;">카테고리</p>
					<div class="">
						<ul>
							<li class="cate_box">카테고리1</li>
							<li class="cate_box">카테고리2</li>
							<li class="cate_box">카테고리3</li>
							<li class="cate_box">카테고리4</li>
							<li class="cate_box">카테고리5</li>
							<li class="cate_box">카테고리6</li>
							<li class="cate_box">카테고리7</li>
							<li class="cate_box">카테고리8</li>
							<li class="cate_box">카테고리9</li>
						</ul>
					</div>
					<div class="btnwrap1">
						<div class="btn_box">+ 직접입력</div>
					</div>
				</div>
				<div class="clear"></div>
				<div class="imgwrap1">
					<div class="l_imgwrap">
						<img class="main_img" src=""></img>
					</div>
					<div class="r_imgwrap">
						<img class="sub_img" src=""></img> <img class="sub_img" src=""></img>
						<img class="sub_img" src=""></img> <img class="sub_img" src=""></img>
					</div>
				</div>
				<div class="pwrap">
					<p style="float: left; width: 12%;">강사 요약</p>
					<textarea class="size_85" name="txt_ar2"></textarea>
				</div>
				<div class="pwrap">
					<p style="float: left; width: 12%;">강사 상세</p>
					<textarea class="size_85" name="txt_ar3"></textarea>
				</div>

				<div class="pwrap">
					<p class="size_15">강의날짜</p>
					<div class="in_wrap">
						<input type="text" class="b_left" name="txt2">
						<div class="btnwrap2">
							<div class="btn_box">선택</div>
						</div>
					</div>
				</div>
				<div class="pwrap">
					<p class="size_15">강의장소</p>
					<div class="in_wrap">
						<input type="text" class="b_left" name="txt2">
						<div class="btnwrap2">
							<div class="btn_box">검색</div>
						</div>
					</div>
				</div>
				<div class="pwrap">
					<p class="size_15">수강인원</p>
					<div class="in_wrap">
						<input type="text" class="b_left" name="txt3">
						<div class="btnwrap2">
							<div class="btn_box">▲</div>
							<div class="btn_box">▼</div>
						</div>
					</div>
				</div>
				<div class="pwrap">
					<p class="size_15">수강료</p>
					<input type="radio" name="c_pay" style="float: none;"> 무료 
					<input type="radio" name="c_pay" style="float: none;"> 유료
				</div>
				<div class="pwrap">
					<p class="size_15">가격</p>
					<div class="in_wrap">
						<input type="text" class="b_left t_center" name="txt5" value="0">
						<div class="btnwrap2">
							<div class="btn_box">▲</div>
							<div class="btn_box">▼</div>
						</div>
					</div>
				</div>
				<div class="pwrap">
					<p class="size_15">입금계좌</p>
					<div class="slctwrap1">
						<select name="slct1" class="b_left" style="height: 48px;">
							<option>은행선택</option>
							<option>국민은행</option>
							<option>신한은행</option>
							<option>하나은행</option>
						</select> <input type="text" class="in_mg" name="txt4">
					</div>
				</div>
				<div class="clear"></div>
				<div class="pwrap">
					<input type="checkbox" class="chk_fleft" name="chk1">
					<p>
						강사 약관에 동의합니다. <a href="#">강사 약관 보기</a>
					</p>
				</div>
				<div class="btnwrap1">
					<input type="submit" class="btn_box" value="강의 등록하기">
				</div>
			</div>
		</div>
	</form>
</body>
</html>