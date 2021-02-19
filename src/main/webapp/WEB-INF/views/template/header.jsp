<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<script src="lib/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="header.css">
<script type="text/javascript">
	$(document).ready(function(){
		$("nav").mouseover(function(){
			$("nav").css("backgroundColor","rgba(247, 243, 243, 1)");
		})
		$("nav").mouseleave(function(){
			$("nav").css("backgroundColor","rgba(247, 243, 243, 0.5)");
		})
		$("#menubar>li").mouseover(function(){
			if($(this).children().hasClass("sub")){
				$(this).children(".sub").stop().slideDown();
				$("#menu").stop().slideDown();
			}
		});
		$("#menubar>li").mouseleave(function(){
			$(this).children(".sub").stop().slideUp();
			$("#menu").css("backgroundColor","rgba(247, 243, 243, 0.5)");
			$("#menu").stop().slideUp();
		});
	});
</script>

<title>메뉴바</title>

</head>
<body>
	<!-- 로그인 안함 -->
	<nav>
		<h1 id="title">CAMPSPOT</h1>
		<ul id="menu_bar">
			<li><a href="#">소개</a></li>
			<li><a href="#">캠핑 스팟 찾기</a></li>
			<li><a href="#">찜한 스팟</a></li>
			<li><a href="#">회원가입</a></li>
			<li><a href="#">로그인</a></li>
		</ul>
	</nav>
	<!-- 일반으로 로그인함 -->
	<nav>
		<h1 id="title">CAMPSPOT</h1>
		<ul id="menu_bar">
			<li><a href="#">소개</a></li>
			<li><a href="#">캠핑 스팟 찾기</a></li>
			<li><a href="#">찜한 스팟</a></li>
			<li><a href="#">문의하기</a></li>
			<li><a href="#">마이 페이지</a>
				<ul class="sub">
					<li>개인정보 수정</li>
					<li>취향정보수정</li>
					<li>캠핑장 예약 내역</li>
				</ul>
			</li>
			<li><a href="#">로그아웃</a></li>
		</ul>
	</nav>
	<!-- 사업자로 로그인함 -->
	<nav>
		<h1 id="title">CAMPSPOT</h1>
		<ul id="menubar">
			<li><a href="#">소개</a></li>
			<li><a href="#">캠핑장 등록</a>
				<ul class="sub">
					<li><a href="#">캠핑장 등록 신청</a></li>
					<li><a href="#">캠핑장 신청/현황 관리</a></li>
					<li><a href="#">캠핑장 관리</a></li>
				</ul>
			</li>
			<li><a href="#">예약 관리</a></li>
			<li><a href="#">문의하기</a></li>
			<li>
			<a href="#">마이 페이지</a>
			<ul class="sub">
				<li><a href="#">개인정보수정</a></li>
				<li><a href="#">사업자정보수정</a></li>
			</ul>
			</li>
			<li id="logout"><a href="#">로그아웃</a></li>
		</ul>
		<div id="menu"></div>
	</nav>
	<!-- 관리자 로그인함 -->
	<nav>
		<ul id="menu_bar">
			<li><a href="#">캠핑장 등록 허가</a></li>
			<li><a href="#">회원 관리</a></li>
			<li><a href="#">문의 관리</a></li>
			<li><a href="#">로그아웃</a></li>
		</ul>
	</nav>
</body>
</html>