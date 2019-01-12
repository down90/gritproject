<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강의 상세보기</title>
<style type="text/css">
	body{margin:0;padding:0;}
	
	
/* 상단 강의명~상세,참가,Comment리스트 전까지의width와 기본 가운데 정렬 */
	.topbox{
		max-width:1024px;
		min-width:1024px;
		margin:0 auto;
	}/* //topbox */
	

/* ------도구모음------ */	
	
	/* height에 대한 도구 */
	.h100{height:100%;}
	.h90{height:90%;}
	.h80{height:80%;}
	.h70{height:70%;}
	.h60{height:60%;}
	.h50{height:50%;}
	.h40{height:40%;}
	.h30{height:30%;}
	.h20{height:20%;}
	.h10{height:10%;}
	.line-h40{line-height:40px}
	
	/* width에 대한 도구 */
	.w100{width:100%;}
	.w90{width:90%;}
	.w80{width:80%;}
	.w70{width:70%;}
	.w60{width:60%;}
	.w50{width:50%;}
	.w40{width:40%;}
	.w30{width:30%;}
	.w20{width:20%;}
	.w10{width:10%;}
	
	/* float에 대한 도구 */
	.fl-r{float:right;}
	.fl-l{float:left;}
	.clear-b{clear:both;}
	
	/* text-align에 대한 도구 */
	.ali-c{text-align:center;}
	.ali-r{text-align:right;}
	.ali-l{text-align:left;}
	
	/* border에 대한 도구 */
	.bor-s{border:1px solid lightgray;}
	.bor-ri{border-right:1px solid lightgray;}
	.bor-bo{border-bottom:1px solid lightgray;}
	.bor-ra{border-radius:10px;}
	
	/* background-color 영역표시를 위한 도구 */
	.bkg{background-color:lightgray;}
	
	/* display에 대한 도구 */
	.dis-block{display:block;cursor: pointer;}
	.dis-none{display:none;}
/* ---------------- */


</style>
<script type="text/javascript" src="/jquery/jquery-3.3.1.min.js">
$(function(){
	$("#l1").click(function(){
		$("#l1").css("background","lightgray");
	});
	$("#l2").click(function(){
		
	});
	$("#l3").click(function(){

	});
});
</script>
<script type="text/javascript">
	
</script>
	<link href="../css/slider_style.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

  <script>
    $(document).ready(function(){
      $('.slider').bxSlider({
    	auto:true,
    	infiniteLoop:true,
    	speed:1000
    	});
    });
    
  </script>
</head>
<body>

<!-- 상단 nav 자리입니다 56픽셀인거 보고 넣었는데 변동되면 확인후 수정이 필요 -->
<div style="width:1920px;background-color:black; height:56px; position: fixed;"></div>
<div style="width:1920px;background-color:white; height:56px;"></div>
<!-- ///////////////////////////////////////////////////// -->
<body>



<!-- //////////페이지 전체적 틀 1024px에 margin:0 auto로 가운데정렬이 되어있는 상태입니다////////// -->

	<div class="topbox">
		<!-- 상단 강의명과 참가비를 포함한 div태그 -->
		<div>
			<div class="ali-c" style="height:100px;">
				<div class="fl-l bkg h100" style="width:84%;"><h1>강의 제목 입니다</h1></div>
				<div class="fl-r bkg h100" style="width:14%;">
					<div class="bor-ra bor-s w80 h30" style="margin:34px 14px;line-height:30px">참가비</div>
				</div>
			</div>
		</div>
		<!-- ////////////////////////// -->
		
<!-- ============================================================================================ -->

		<!-- 강의 이미지~Button까지 -->
		<div style="height:400px;margin-top:20px">
		
			<!-- 좌측 이미지 -->
			<div class="fl-l" style="width:49%">
				<div class="slider ali-c" style="height:340px;line-height:340px;">
					<div class="bkg h100 bor-s">이미지1</div>
					<div class="bkg h100 bor-s">이미지2</div>
					<div class="bkg h100 bor-s">이미지3</div>
				</div>
			</div>
			<!-- /////// -->
			
			<!-- 우측 이것저것 -->
			<div class="h100 fl-r ali-c" style="width:48%">
				<div class="w100" style="height:15%">
					<div class="h70 fl-l bor-s line-h40" style="width:48%;">현재 참가 인원</div>
					<div class="h70 fl-r bor-s line-h40" style="width:48%;">강의 날짜</div>
				</div>
				<div class="w100" style="height:24%; line-height:30px">
					<div class="w20 h30 bkg fl-l bor-s bor-ra" style="">카테고리</div>
					<div class="w20 h30 bkg fl-l bor-s bor-ra" style="margin-left:30px ">카테고리</div>
					<div class="w20 h30 bkg fl-l bor-s bor-ra" style="margin-left:30px ">카테고리</div>
					<div class="w20 h30 bkg fl-l bor-s bor-ra" style="margin-left:30px ">카테고리</div>
					<div class="w20 h30 bkg fl-l bor-s bor-ra" style="margin-top:20px">카테고리</div>
					<div class="w20 h30 bkg fl-l bor-s bor-ra" style="margin-left:30px;margin-top:20px">카테고리</div>
					<div class="w20 h30 bkg fl-l bor-s bor-ra" style="margin-left:30px;margin-top:20px">카테고리</div>
					<div class="w20 h30 bkg fl-l bor-s bor-ra" style="margin-left:30px;margin-top:20px ">카테고리</div>
				</div>
				<div class="w100 bkg h40" style="line-height:160px">강의 요약 설명</div>
				<div class="w100 h20" style="line-height:80px"><input type="button" value="참가하기" class="w60 h80" style=""></div>
			</div>
			<!-- ///////// -->
			
		</div>
		<!-- ///////////////// -->
<!-- ============================================================================================ -->

		<!-- 상세,참가자,Comment 리스트(가로) -->
		<div style="margin-top:20px">
			<div class="ali-c bor-s line-h40" style="height:40px;">
				<div id="l1" class="w10 h100 fl-l bor-ri dis-block" style="height:40px;">상세</div>
				<div id="l2" class="w10 h100 fl-l bor-ri dis-block" style="height:40px;">참가자</div>
				<div id="l3" class="w10 h100 fl-l bor-ri dis-block" style="height:40px;">Comment</div>
			</div>
		</div>
		<!-- /////////////////////////// -->
		
<!-- ============================================================================================ -->

		<!-- 리스트에 대한 강의 상세정보(강사소개,강의 상세소개,강의장소,주의사항) -->
		<div id="infodetail" class="" style="">
		
			<!-- 강사소개 -->
			<div class="bor-s" style="height:500px;">
				&nbsp;<div class="" style="font-size:30px;">&nbsp;강사소개</div>
				<div>
					<div class="fl-l bor-s ali-c" style="width:80px;height:80px;border-radius:100px;line-height:80px;margin:20px;margin-left:40px">프로필사진</div>
					<div class="fl-l bor-s ali-c" style="width:100px;margin-top:20px">닉네임</div>
				</div>
				<div class="h60 w60 bor-s clear-b ali-c" style="margin-left:40px; line-height: 300px">강사소개</div>
			</div>
			<!-- ------ -->
			
			<!-- 강의 상세소개 -->
			<div class="bor-s" style="height:500px;">
				&nbsp;<div class="" style="font-size:30px;">&nbsp;강의 상세소개</div>
				<div class="h70 w60 bor-s ali-c" style="margin:40px 0 0 40px; line-height: 350px">강사소개</div>
			</div>
			<!-- --------- -->
			
			<!-- 강의 장소 -->
			<div class="bor-s" style="height:600px;">
				&nbsp;<div class="" style="font-size:30px;">&nbsp;강의 장소</div>
				<div class="h70 w50 bor-s ali-c" style="margin:40px 0 20px 40px; line-height: 420px">지도</div>
				<div class="w60 bor-s ali-c line-h40" style="height:40px;margin-left:40px;">강의 장소 상세주소</div>
			</div>
			<!-- ------ -->
			
			<!-- 주의사항 -->
			<div class="bor-s" style="height:400px;">
				&nbsp;<div class="" style="font-size:30px;">&nbsp;주의사항</div>
				<div class="h70 w50 bor-s ali-c" style="margin:40px 0 20px 40px; line-height: 280px">주의사항 TEXT</div>
			</div>
			<!-- ------ -->
			
		</div>
		<!-- ////////////////////상세끝////////////////////////// -->
		
<!-- ============================================================================================ -->
		
		<!-- 참가자(프로필 리스트) -->
		<div id="profilelist" class="bor-s " style="height:400px;">
			<div class="">
				<div class="fl-l w40 bor-s" style="height:130px;margin:40px 0 0 40px">
					<div class="fl-l bor-s ali-c" style="width:80px;height:80px;margin:10px;border-radius:100px;line-height:80px">사진</div>
					<div class="fl-l ali-c">
						<div class="bor-s" style="width:150px;margin-top:10px;height:30px">유저명</div>
						<div>
							<div class="fl-l bor-s" style="width:100px;margin-top:10px;height:30px">포지션</div>
							<div class="fl-l bor-s" style="width:100px;margin:10px 0 0 10px;height:30px">포지션</div>
						</div>
						<div class="bor-s clear-b" style="width:300px;margin-top:49px;height:30px">관심 카테고리</div>
					</div>
				</div>
				<div class="fl-l w40 bor-s" style="height:130px;margin:40px 0 0 40px">
					<div class="fl-l bor-s ali-c" style="width:80px;height:80px;margin:10px;border-radius:100px;line-height:80px">사진</div>
					<div class="fl-l ali-c">
						<div class="bor-s" style="width:150px;margin-top:10px;height:30px">유저명</div>
						<div>
							<div class="fl-l bor-s" style="width:100px;margin-top:10px;height:30px">포지션</div>
							<div class="fl-l bor-s" style="width:100px;margin:10px 0 0 10px;height:30px">포지션</div>
						</div>
						<div class="bor-s clear-b" style="width:300px;margin-top:49px;height:30px">관심 카테고리</div>
					</div>
				</div>
				<div class="fl-l w40 bor-s" style="height:130px;margin:40px 0 0 40px">
					<div class="fl-l bor-s ali-c" style="width:80px;height:80px;margin:10px;border-radius:100px;line-height:80px">사진</div>
					<div class="fl-l ali-c">
						<div class="bor-s" style="width:150px;margin-top:10px;height:30px">유저명</div>
						<div>
							<div class="fl-l bor-s" style="width:100px;margin-top:10px;height:30px">포지션</div>
							<div class="fl-l bor-s" style="width:100px;margin:10px 0 0 10px;height:30px">포지션</div>
						</div>
						<div class="bor-s clear-b" style="width:300px;margin-top:49px;height:30px">관심 카테고리</div>
					</div>
				</div>
				<div class="fl-l w40 bor-s" style="height:130px;margin:40px 0 0 40px">
					<div class="fl-l bor-s ali-c" style="width:80px;height:80px;margin:10px;border-radius:100px;line-height:80px">사진</div>
					<div class="fl-l ali-c">
						<div class="bor-s" style="width:150px;margin-top:10px;height:30px">유저명</div>
						<div>
							<div class="fl-l bor-s" style="width:100px;margin-top:10px;height:30px">포지션</div>
							<div class="fl-l bor-s" style="width:100px;margin:10px 0 0 10px;height:30px">포지션</div>
						</div>
						<div class="bor-s clear-b" style="width:300px;margin-top:49px;height:30px">관심 카테고리</div>
					</div>
				</div>
				
			</div>
		</div>
		<!-- //////////////// -->
		
<!-- ============================================================================================ -->	

		<!-- Comment Write, Comment List -->
		<div id="comment" class="bor-s">
		
			<div class="" style="height:200px;">
				<div class="w70" style="margin-left: 40px">
					<form name="" method="post" action="#">
						<textarea class="w100 fl-r" style="height:100px;font-size:20px;margin-top:20px" placeholder="댓글을 입력하세요"></textarea>
						<input class="fl-r" type="submit" value="댓글 달기" style="height:65px;width:100px">
					</form>
				</div>
			</div>
			
			<div class="w70 ali-c" style="height:200px;margin-left: 40px">
				<div class="fl-l bor-s" style="width:80px;height:80px;line-height:80px;border-radius:100px;margin:10px">이미지</div>
				<div class="fl-r" style="width:600px">
					<div style="margin-top:10px">
						<div class="fl-l bor-s bor-ra" style="height:30px;width:150px;">유저명</div>
						<div class="fl-r bor-s bor-ra" style="height:30px;width:150px;">등록시간</div>
					</div>
					<div class="clear-b bor-s" style="height:120px;line-height:100px;margin-top: 50px"><p>댓글 메시지</p></div>
					<div><a class="fl-r" href="#";>답글달기</a></div>
				</div>
			</div>
			
			<div class="" style="height:200px">
				<div class="w70" style="margin-left: 40px">
					<form name="" method="post" action="#">
						<textarea class="w90 fl-r" style="height:100px;font-size:20px;margin-top:20px" placeholder="댓글을 입력하세요"></textarea>
						<input class="fl-r" type="submit" value="댓글 달기" style="height:65px;width:100px">
					</form>
				</div>
			</div>
			
			<div class="w70 ali-c" style="height:200px;margin-left: 40px">
				<div class="fl-l bor-s" style="width:80px;height:80px;line-height:80px;border-radius:100px;margin:10px">이미지</div>
				<div class="fl-r" style="width:600px">
					<div style="margin-top:10px">
						<div class="fl-l bor-s bor-ra" style="height:30px;width:150px;">유저명</div>
						<div class="fl-r bor-s bor-ra" style="height:30px;width:150px;">등록시간</div>
					</div>
					<div class="clear-b bor-s" style="height:120px;line-height:100px;margin-top: 50px"><p>댓글 메시지</p></div>
					<div><a class="fl-r" href="#";>답글달기</a></div>
				</div>
			</div>
				
			<div class="w70 ali-c" style="height:200px;margin-left: 40px">
				<div class="fl-r" style="width:500px">
					<div style="margin-top:10px">
						<div class="fl-l bor-s bor-ra" style="height:30px;width:150px;">유저명</div>
						<div class="fl-r bor-s bor-ra" style="height:30px;width:150px;">등록시간</div>
					</div>
					<div class="clear-b bor-s" style="height:120px;line-height:100px;margin-top: 50px"><p>댓글 메시지</p></div>
				</div>
				<div class="fl-r bor-s" style="width:80px;height:80px;line-height:80px;border-radius:100px;margin:10px">이미지</div>
			</div>
				
			<div class="w70 ali-c" style="height:200px;margin-left: 40px">
				<div class="fl-r" style="width:500px">
					<div style="margin-top:10px">
						<div class="fl-l bor-s bor-ra" style="height:30px;width:150px;">유저명</div>
						<div class="fl-r bor-s bor-ra" style="height:30px;width:150px;">등록시간</div>
					</div>
					<div class="clear-b bor-s" style="height:120px;line-height:100px;margin-top: 50px"><p>댓글 메시지</p></div>
				</div>
				<div class="fl-r bor-s" style="width:80px;height:80px;line-height:80px;border-radius:100px;margin:10px">이미지</div>
			</div>
				
		</div>
		<!-- /////////////////////////// -->
		
<!-- ============================================================================================ -->	
	</div>
	
	<!-- height:114px 의 footer nav와 같은 내용 -->
	<div style="width:1920px;height:114px;background-color: black"></div>
	
</body>
</html>