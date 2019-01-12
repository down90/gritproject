<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Modern Business - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">
    <!-- <link href="css/style.css" rel="stylesheet"> -->
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/modal_login.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
  </head>
   
   <style>
   *{
		padding: 0;
		margin: 0;
	}

   body{ font-size: 12px; font-family: "나눔바른고딕",dotum,sans-serif; color: #333;}

	.contents{
		width: 1024px;
		min-width: 1024px;
		height: 400px;
		margin: 0 auto;
		margin-top: 40px;
	}
	.contents .contents1{
		width: 55%;
		height: 385px;
		border-right: 0.2px solid gray;
		float: left;
	}
	.contents .contents2{
		width: 45%;
		height: 390px;
		float: left;
	
	}
   
      .infobox1{
          margin:10px 0 0 30px;
          width:400px;
          height:100px;
      }
      .infobox2{
          margin:15px 0 0 30px;
          width:400px;
          height:100px;
      }
      .infobox3{
          margin:15px 0 0 30px;
          width:400px;
          height:100px;
      }
      
      .infoboxtable{
          width:290px;
          margin:0 0 0 10px;
          text-align: center;
      }
      .box70{
         width:70%;
         border:1px solid black;
         height:25px;
      }
      .box30{
         width:30%;
         border:1px solid black;
         height:25px;
      }
      .leli{
          float: left;
          background-image: url("img/img100.png");
          height:100px;
          width:100px;
      }
      .rili{
          float: right;
          height:100px;
          width:300px;
      }
      .dotnone{
         list-style: none;
      }
      .imgbox1{
          margin:10px auto;
          width:500px;
          height:200px;
          background-image: url("img/img1.png");
          border:1px solid black;
      }
      .joinfee{
      	width:80px;
      	height:30px;
      	background-color:black;
      	border-radius:5px;
      	border:1px solid black;
      	color:white;
      	float:right;
      	margin:160px 10px 0 0;
      }
      .joinfee1{
      	width:80px;
      	height:30px;
      	background-color:black;
      	border-radius:5px;
      	border:1px solid black;
      	color:white;
      	position:absolute;
      	margin: 43% 0 0 68%;
      }
      .cardtable{
         border: 1px solid black;
         text-align:center;
         height:110px;
         width:100%;
      }
      #joinbtn{
      	width:100%;
      	height:30px;
      	background-color:black;
      	color:white;
      	border:1px solid black;
      	border-radius:5px;
      }
      .gnb{
      	width:200px;
      	height:50px;
      	border:1px solid red;
      	float:right;
      }
      .gnb li{
      	float:left;
      	width:80px;
      	height:30px;
      	background-color:gray;
      	line-height:30px;
      	margin-top:10px;
      	margin-right:10px;
      	text-align:center;
      	border-radius:5px;
      }
      .gnb_li_a{
      	color:white;
      	font-size:15px;   	  	
      }
      .gnb_li_a:hover{
      	text-decoration:none;
      	color:black;
      }
   </style>
  <body>
  	<h1></h1>
    <!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark fixed-top" style="background-color:black;margin-bottom:0;">
      <div class="container">
        <a class="navbar-brand" href="#" style="color:green; font-weight:blod;">GRIT</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="#" data-toggle="modal" data-target="#modal1">Login</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#" >Join</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Contents</a>
            </li>
           <li class="nav-item">
              <a class="nav-link" href="#">공지사항</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">logout</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Other Pages
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="#">Full Width Page</a>
                <a class="dropdown-item" href="#">Sidebar Page</a>
                <a class="dropdown-item" href="#">FAQ</a>
                <a class="dropdown-item" href="#">404</a>
                <a class="dropdown-item" href="#">Pricing Table</a>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    
    <nav class="fixed-top" style="background-color:black;margin-bottom:0;">
      <div class="container">
        <a class="navbar-brand" href="#" style="color:green; font-weight:blod;">GRIT</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        
          <ul class="gnb">
            <li class="gnb_li">
              <a class="gnb_li_a" href="#" data-toggle="modal" data-target="#modal1">Login</a>
            </li>
            <li class="gnb_li">
              <a class="gnb_li_a" href="#" >Join</a>
            </li>
          </ul>
        
      </div>
    </nav>
    
    

    <header>
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          <!-- Slide One - Set the background image for this slide in the line below -->
          <div class="carousel-item active" 
          style="background-image: url('./img/banner1.png')">

            <!--<div class="carousel-caption d-none d-md-block">
               국내 유일 스타트업 네트워크 STAR-IT에 오신 것을 환영합니다</h3>
              <p>더 나아지는 자신을 만들고 싶다면<br>
              스터디로 역량을 쌓고 팀빌딩과 네트워킹에서 각 분야의 전문가들을 만나보세요</p> 
            </div>-->
          </div>
          <!-- Slide Two - Set the background image for this slide in the line below -->
          <div class="carousel-item" 
           style="background-image: url('./img/banner1.png')">
            <!-- <div class="carousel-caption d-none d-md-block">
              <h3>Second Slide</h3>
              <p>This is a description for the second slide.</p>
            </div> -->
          </div>
          <!-- Slide Three - Set the background image for this slide in the line below -->
          <div class="carousel-item" 
           style="background-image: url('./img/banner1.png')">
            <!--  <div class="carousel-caption d-none d-md-block">
              <h3>Third Slide</h3>
              <p>This is a description for the third slide.</p>
            </div>-->
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </header>

    <!-- Page Content -->

    <ul class="contents" style="list-style: none">
        <li class="contents1">
          <div>
             <div style="margin:20px 0 0 40px; font-size:14px; text-align:left;">실시간 인기 모임</div>
             <div class="imgbox1" >
             	<input type="button" value="참가비" class="joinfee">
             </div>
          </div>
          <div>
             <table border="1" style="width:500px;margin:auto;text-align:center">
                <thead>
                   <tr>
                      <td colspan="3" style="height:25px;">강의 명 </td>
                   </tr>
                </thead>
                <tbody>
                   <tr>
                      <td style="width:60%; height:25px;">카테고리</td>
                      <td style="width:20%; height:25px;">남은 자리</td>
                      <td style="width:20%; height:25px;">D-day</td>
                   </tr>
                </tbody>
                <tfoot>
                   <tr style="height:70px">
                      <td colspan="3">강의 요약설명</td>
                   </tr>
                </tfoot>
             </table>
          </div>
        </li>
        <li class="contents2">
             <div style="margin:20px 0 0 40px; font-size:14px; ">추천 모임</div>
          <div class="infobox1">
             <ul class="dotnone">
                <li class="leli"></li>
                <li class="rili">
                   <table border="1" class="infoboxtable">
                      <thead>
                         <tr>
                            <td colspan="2" style="height:40px; line-height:40px;">강의 명</td>
                         </tr>
                      </thead>
                      <tbody>
                         <tr style="height:30px;">
                            <td class="box30">남은 자리</td>
                            <td class="box70">D-day</td>
                         </tr>
                      </tbody>
                      <tfoot>
                         <tr style="height:30px;">
                            <td class="box70">카테고리</td>
                            <td class="box30">
                            	<input type="button" value="참가비" id="joinbtn">
                            </td>
                         </tr>
                      </tfoot>
                   </table>
                </li>
             </ul>
          </div>
      <div class="infobox2">
             <ul class="dotnone">
                <li class="leli"></li>
                <li class="rili">
                   <table border="1" class="infoboxtable">
                      <thead>
                         <tr>
                             <td colspan="2" style="height:40px; line-height:40px;">강의 명</td>
                         </tr>
                      </thead>
                      <tbody>
                         <tr style="height:30px;">
                            <td class="box30">남은 자리</td>
                            <td class="box70">D-day</td>
                         </tr>
                      </tbody>
                      <tfoot>
                         <tr style="height:30px;">
                            <td class="box70">카테고리</td>
                            <td class="box30"><input type="button" value="참가비" id="joinbtn"></td>
                         </tr>
                      </tfoot>
                   </table>
                </li>
             </ul>
          </div>
      <div class="infobox3">
             <ul class="dotnone">
                <li class="leli"></li>
                <li class="rili">
                   <table border="1" class="infoboxtable">
                      <thead>
                         <tr>
                             <td colspan="2" style="height:40px; line-height:40px;">강의 명</td>
                         </tr>
                      </thead>
                      <tbody>
                         <tr style="height:30px;">
                            <td class="box30">남은 자리</td>
                            <td class="box70">D-day</td>
                         </tr>
                      </tbody>
                      <tfoot>
                         <tr style="height:30px;">
                            <td class="box70">카테고리</td>
                            <td class="box30"><input type="button" value="참가비" id="joinbtn"></td>
                         </tr>
                      </tfoot>
                   </table>
                </li>
             </ul>
          </div>
        </li>
      </ul>
<!-- Portfolio Section -->
      <!--<h2>현재 진행중인 강의</h2>-->
   <div class="container" style="margin-top:20px; width:990px;">
      <div class="row">
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card">
        
           <div style="position:relative; height:170px;"><input type="button" value="참가비" class="joinfee1"><a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt="">
             </a></div>

            <div class="card-body" style="height: 150px;">
              <table class="cardtable">
  
	              <tr>
	                 <td colspan="2">강의 명</td>
	              </tr>
	
	              <tr>
	                 <td class="box30">남은 자리</td>
	                 <td class="box70">D-day</td>
	              </tr>
	
	              <tr>
	                 <td colspan="2">카테고리</td>
	              </tr>
	          </table>
              
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card">
           <div style="position:relative; height:170px;"><input type="button" value="참가비" class="joinfee1"><a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt="">
             </a></div>
            <div class="card-body" style="height: 150px;">
               <table class="cardtable">
  
	              <tr>
	                 <td colspan="2">강의 명</td>
	              </tr>
	
	              <tr>
	                 <td class="box30">남은 자리</td>
	                 <td class="box70">D-day</td>
	              </tr>
	
	              <tr>
	                 <td colspan="2">카테고리</td>
	              </tr>
	          </table>
              
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card">
            <div style="position:relative; height:170px;"><input type="button" value="참가비" class="joinfee1"><a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt="">
             </a></div>
            <div class="card-body" style="height: 150px;">
               <table class="cardtable">
  
	              <tr>
	                 <td colspan="2">강의 명</td>
	              </tr>
	
	              <tr>
	                 <td class="box30">남은 자리</td>
	                 <td class="box70">D-day</td>
	              </tr>
	
	              <tr>
	                 <td colspan="2">카테고리</td>
	              </tr>
	          </table>
             
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card">
           <div style="position:relative; height:170px;"><input type="button" value="참가비" class="joinfee1"><a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt="">
             </a></div>
            <div class="card-body" style="height: 150px;">
               <table class="cardtable">
  
	              <tr>
	                 <td colspan="2">강의 명</td>
	              </tr>
	
	              <tr>
	                 <td class="box30">남은 자리</td>
	                 <td class="box70">D-day</td>
	              </tr>
	
	              <tr>
	                 <td colspan="2">카테고리</td>
	              </tr>
	          </table>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card">
           <div style="position:relative; height:170px;"><input type="button" value="참가비" class="joinfee1"><a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt="">
             </a></div>
            <div class="card-body" style="height: 150px;">
            <table class="cardtable">
  
	              <tr>
	                 <td colspan="2">강의 명</td>
	              </tr>
	
	              <tr>
	                 <td class="box30">남은 자리</td>
	                 <td class="box70">D-day</td>
	              </tr>
	
	              <tr>
	                 <td colspan="2">카테고리</td>
	              </tr>
	          </table>

            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card">
            <div style="position:relative; height:170px;"><input type="button" value="참가비" class="joinfee1"><a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt="">
             </a></div>
            <div class="card-body" style="height: 150px;">
             <table class="cardtable">
  
	              <tr>
	                 <td colspan="2">강의 명</td>
	              </tr>
	
	              <tr>
	                 <td class="box30">남은 자리</td>
	                 <td class="box70">D-day</td>
	              </tr>
	
	              <tr>
	                 <td colspan="2">카테고리</td>
	              </tr>
	          </table>     
            </div>
          </div>
        </div>
      </div>
      <!-- /.row -->
      
    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5" style="background-color:black;">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
	
	<!-- 모달 -->
	<div class="modal fade" id="modal1" role="dialog">
			<div class="modal-dialog" style=" position: absolute; left:0; vertical-align:middle;">
				<div class="modal-content content-size1">
					<button type="button" class="close" style="margin-left:250px;" data-dismiss="modal">&times;</button>
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
	
  </body>

</html>