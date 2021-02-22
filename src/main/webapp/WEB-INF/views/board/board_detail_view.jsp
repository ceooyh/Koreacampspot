<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 상세 페이지</title>
<style>
@font-face {
	font-family: '보통노토';
	src: url(../../../Font/NotoSansCJKkr-hinted/NotoSansCJKkr-Medium.otf);
}

@font-face {
	font-family: '굵은노토';
	src: url(../../../Font/NotoSansCJKkr-hinted/NotoSansCJKkr-Black.otf);
}

@font-face {
	font-family: '검은고딕';
	src: url(../../../Font/검은고딕/OFL.txt);
}

@font-face {
	font-family: '보통로보';
	src: url(../../../Font/Roboto/Roboto-Medium.ttf);
}

@font-face {
	font-family: '두꺼운로보';
	src: url(../../../Font/Roboto/Roboto-Bold.ttf);
}

#container {
	width: 1200px;
	margin: 0 auto;
	padding: 20px;
	border: 1px solid black;
}

h2 {
	border-top: 2px solid black;
	border-bottom: 2px solid black;
	padding: 10px;
	font-family: '두꺼운로보';
}

.part_select {
	height: 50px;
	font-family: '굵은노토';
	border: 1px solid red;
	box-sizing: border-box;
	padding-bottom: 10px;
	padding-left: 5px;
}

.part_select_content {
	font-family: '굵은노토';
	border: 1px solid lime;
	padding-left: 5px;
}

label {
	font-family: '굵은노토';
	font-size: 13px;
	color: rgb(46, 46, 46);
	font-weight: bold;
}

span {
	display: inline-block;
	border-bottom: 2px solid rgb(231, 231, 231);
	color: rgb(46, 46, 46);
	padding: 5px 0;
	font-family: '보통노토';
	font-size: 20px;
}

#content_view {
	width: 1150px;
	height: 300px;
	padding: 10px;
	box-sizing: border-box;
	border-radius: 10px;
	color: rgb(46, 46, 46);
	font-family: '보통노토';
	border: 2px solid rgb(231, 231, 231);
	margin: 5px 0px;
}

.modify {
	width: 80px;
	margin-right: 5px;
	font-weight: normal;
	padding: 5px 0px;
	font-size: 14px;
	text-align: center;
	text-decoration: none;
	background-color: #646262;
	color: white;
	border: 1px solid #585858;
	box-sizing: border-box;
	display: inline-block;
	border-radius: 3px;
	float: right;
}

.move {
	width: 80px;
	margin-right: 5px;
	font-weight: normal;
	padding: 5px 0px;
	font-size: 14px;
	text-align: center;
	text-decoration: none;
	background-color: #646262;
	color: white;
	border: 1px solid #585858;
	box-sizing: border-box;
	display: inline-block;
	border-radius: 3px;
	float: left;
}

.btn:hover {
	background-color: #282828;
	color: #FFFFFF
}
</style>
</head>
<body>
	<!-- jstl 주석처리 
    
        <c:if test="${sessionScope.login == null || sessionScope.login == false  }">
            <c:set var="page" target="${sessionScope }" value="${pageContext.request.requestURI}${pageContext.request.queryString }" property="resultPage" scope="session"/>
            ${pageContext.request.requestURI}${pageContext.request.queryString }
            <script>
                alert("로그인을 하셔야 이용할수 있습니다.");
                location.href="loginView.do";
            </script>
        </c:if>
    
    -->
	<jsp:include page="../template/header.jsp" flush="false"></jsp:include>

	<div id="container">
		<section>
			<h2>게시판 페이지</h2>

			<div class="part_select">
				<label for="title">[제목]</label> <span>${requestScope.board.title }</span>
			</div>
			<div class="part_select">
				<label for="#">[작성자]</label> <span>${requestScope.board.writer }</span>
			</div>
			<div class="part_select">
				<label for="bdate">[작성일]</label> <span>${requestScope.board.bdate }</span>
			</div>
			<div class="part_select">
				<label for="views">[조회수]</label> <span>${requestScope.board.views }</span>
			</div>
			<div class="part_select_content">
				<label for="content">[내용]</label> <span id="content_view">${requestScope.board.content }</span>
			</div>
		</section>



		<!--
                    <tr>
                        <td colspan="2">
                            [첨부파일]<br>
                            <c:forEach var="f" items=" ">
                                <a href=" ">
                                ${f.fileName}</a><br>
                                <c:if test="">
                                    <img src="">
                                </c:if>
                                <c:if test="${f.type =='video' }">
                                    <video controls src=" "></video>
                                </c:if>
                            </c:forEach>
                        </td>
                    </tr>
    -->

		<!--
                <div class="part_like_hate">
                    <a href="#" >
                        <img src=" ">
                        <span>${requestScope.board.blike }</span>
                    </a>
                </div>  
                <div class="part_like_hate">
                    <a href="#" >
                        <img src=" ">
                        <span>${requestScope.board.bhate }</span>
                    </a>
                </div>  
     -->

		<!--

               <c:if test="${sessionScope.login == true}">
                    <tr>
                        <td colspan="2">
                            <div class="comment_form">
                                <form id="comment">
                                <input type="hidden" name="bno" value="${requestScope.board.bno }">
                                <input type="hidden" name="writer" value="${sessionScope.id }">
                                <span class="writer">${sessionScope.id }</span>
                                <textarea name="content" maxlength="500"></textarea>
                                <p class="length">0/500</p><hr>
                                <p style="text-align: right;"><button type="button">등록</button></p>
                                </form>							
                            </div>
                        </td>
                    </tr>
                        </c:if>
         -->


		<div class="btn">
			<a href="#" class="move">이전글</a> <a href="javascript:history.back();"
				class="move">목록보기</a> <a href="#" class="move">다음글</a>
		</div>

		<div class="btn">
			<c:if test="${sessionScope.id == requestScope.board.writer }">
				<a href="deleteBoard.do?bno=${requestScope.board.bno }"
					class="modify">삭제</a>
				<a href="#" class="modify">수정</a>
			</c:if>
		</div>
		<!--             
        <section>
            <c:forEach var="comment" items="${requestScope.comment }">
                <table class="comment">	
                       <div class="part_comment">
                            <label for="writer">[작성자]</label>
                        </div>              
                        <div class="part_comment">
                            <label for="cdate">[작성일]</label>
                        </div></td>               
                        <div class="part_comment">
                            <label for="clilke">[좋아요]</label>
                        </div></td>           
                        <div class="part_comment">
                            <label for="bhate">[싫어요]</label>
                        </div></td>      
                        <div class="part_comment_view">
                                <span>${comment.writer }</span>
                        </div></td>               
                        <div class="part_comment_view">
                                <span>${comment.cdate }</span>
                        </div></td>               
                        <div class="part_comment_view">
                                <span><a href="" >${comment.clike }</a></span>
                        </div></td>               
                        <div class="part_comment_view">
                                <span><a href="">${comment.chate }</a></span> 
                        </div></td>               
                        <div class="part_comment_view">
                                <span>${comment.content }</span>
                        </div></td>               
            </c:forEach>
        </section>            
     -->

	</div>
	<jsp:include page="../template/footer.jsp" flush="false"></jsp:include>

</body>
</html>