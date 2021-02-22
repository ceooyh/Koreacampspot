<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상단 메뉴바</title>
<script src="lib/jquery-3.5.1.min.js"></script>
<style>
    * {
        margin: 0;
        padding: 0;
    }
    h1{
        margin-top: 20px;
        margin-left: 30px;
        float: left;
    }
    a {
        text-decoration: none;
        color: black;
        font-weight: bold;
    }
    a:hover {
	    color: #508164;
    }
    ul {
        list-style-type: none;
        margin: 5px auto;
        display: inline-block;
        text-align: center;
    }
    li {
        list-style: none;
        height: 60px;
        margin: 0px 10px;
        text-align: center;
        float: left;
        padding:20px 0px;
        box-sizing: border-box;
        display: inline-block;
    }
    nav {
        width: 1920px;
        position: fixed;
        text-align: center;
        background-color: rgba(247, 243, 243, 0.5);
    }
    #login{
        width: 200px;
        float: right;
        margin-top: 15px;
    }
    #menu_bar li {
        position: relative;
        display: inline-block;
        box-sizing: border-box;
        line-height: 30px;
        padding: 15px;
        text-align: center;
    }
    .sub {
        display: none;
        position: absolute;
        top: 70px;
        left: 0;
        z-index: 1;
        width: 100%;
    }
    .sub li {
        padding: 10px 0px !important;
    }
</style>
</head>
<body>
    <c:choose>
		<c:when test="${sessionScope.login == null}">
			<nav>
				<h1 id="title">CAMPSPOT</h1>
				<ul id="menu_bar">
					<li><a href="infoView.do">소개</a></li>
					<li><a href="#">캠핑 스팟 찾기</a></li>
					<li><a href="#">찜한 스팟</a></li>
					<li><a href="selectJoinView.do">회원가입</a></li>
					<li><a href="loginView.do">로그인</a></li>
				</ul>
			</nav>
		</c:when>

		<c:when test="${sessionScope.user_type == 1}">
			<nav>
				<h1 id="title">CAMPSPOT</h1>
                    <ul id="menu_bar">
                        <li><a href="infoView.do">소개</a></li>
                        <li><a href="#">캠핑 스팟 찾기</a></li>
                        <li><a href="#">찜한 스팟</a></li>
                        <li><a href="qnaView.do">문의하기</a></li>
                        <li><a href="#">마이 페이지</a>
                            <ul class="sub">
                                <li>개인정보 수정</li>
                                <li>취향정보수정</li>
                                <li>캠핑장 예약 내역</li>
                            </ul>
                        </li>
                        <li><a href="boardView.do">게시판</a></li>
                        <li><a href="logoutAction.do">로그아웃</a></li>
                    </ul>
                <div id="login">
                    <table>
                        <tr>
                            <td><img src="guest_login.png" style="width:32px;"></td>
                            <td>님 로그인</td>
                        </tr>
                    </table>
                </div>
			</nav>
		</c:when>
		
		<c:when test="${sessionScope.user_type == 2}">
			<nav >
				<h1 id="title">CAMPSPOT</h1>
				<ul id="menu_bar">
					<li><a href="infoView.do">소개</a></li>
					<li><a href="#">캠핑장 등록</a>
						<ul class="sub">
							<li><a href="#">캠핑장 등록 신청</a></li>
							<li><a href="#">캠핑장 신청/현황</a></li>
							<li><a href="#">캠핑장 관리</a></li>
						</ul>
					</li>
					<li><a href="#">예약 관리</a></li>
					<li><a href="qnaView.do">문의하기</a></li>
					<li>
                        <a href="#">마이 페이지</a>
                        <ul class="sub">
                            <li><a href="#">개인정보수정</a></li>
                            <li><a href="#">사업자정보수정</a></li>
                        </ul>
                    </li>
					<li id="logout"><a href="logoutAction.do">로그아웃</a></li>
				</ul>
                <div id="login">
                    <table>
                        <tr>
                            <td><img src="guest_login.png" style="width:32px;"></td>
                            <td>님 로그인</td>
                        </tr>
                    </table>
                </div>
			</nav>
		</c:when>

		<c:when test="${sessionScope.user_type == 0}">
			<nav>
                <h1 id="title">CAMPSPOT</h1>
				<ul id="menu_bar">
					<li><a href="#">캠핑장 등록 허가</a></li>
					<li><a href="#">회원 관리</a></li>
					<li><a href="qnaView.do">문의 관리</a></li>
					<li><a href="boardView.do">게시판</a></li>
					<li><a href="logoutAction.do">로그아웃</a></li>
				</ul>
                <div id="login">
                    <table>
                        <tr>
                            <td><img src="guest_login.png" style="width:32px;"></td>
                            <td>님 로그인</td>
                        </tr>
                    </table>
                </div>
			</nav>
		</c:when>
	</c:choose>

</body>
</html>