<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의내역 상세페이지</title>
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
    *{
        margin:0;
        padding: 0;
    }
    #container{
        padding: 20px;
        border: 1px solid black;
        width: 704px;
        margin: 20px auto;
    }
    #headline{
        text-align: center;
        font-family: '굵은노토';
        font-size: 30px;
        color: rgb(46, 46, 46);
        margin-bottom: 20px;
    }
    .part_select{
        margin-bottom: 10px;
    }
    label{
        font-family: '보통노토';
        font-size: 13px;
        color: rgb(46, 46, 46);
    }
    span{
        display: inline-block;
        border-bottom: 2px solid rgb(231, 231, 231);
        color: rgb(46, 46, 46);
        padding:  10px 0;
        font-family: '보통노토';
        font-size: 20px;
    }
    #content_view{
        width: 680px;
        height: 300px;
        padding: 10px;
        box-sizing: border-box;
        border-radius: 10px;
        color: rgb(46, 46, 46);
        font-family: '보통노토';
        border: 2px solid rgb(231, 231, 231);
        margin: 5px 0px;
    }
    #response_view{
        width: 680px;
        margin: 5px 0px;
        padding: 10px;
        box-sizing: border-box;
        border: 2px solid rgb(231, 231, 231);
        border-radius: 10px;
        color: rgb(46, 46, 46);
        font-family: '보통노토';
    }

</style>
</head>
<body>
  <!--
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
                    <p id="headline">문의글 조회 페이지</p>
                    
                    <div class="part_select">
                        <p><label for="title">[제목]</label>  <span>${requestScope.qna.title }</span></p>
                    </div>

                    <div class="part_select">
                        <p><label for="#">[아이디]</label>  <span>${requestScope.qna.writer }</span></p>
                    </div>

                    <div class="part_select">
                        <p><label for="qdate">[작성일]</label>  <span>${requestScope.qna.qdate }</span></p>
                    </div>
                    
                    <div class="part_select">
                        <p><label for="content">[문의내용]</label></p>
                        <span id="content_view">${requestScope.qna.content }</span>
                    </div>   
                    
                    <div class="part_select">
                        <p><label for="response">[답변]</label></p>
                        <span id="response_view">${requestScope.qna.response }</span>
                    </div>   
            </section>
        </div>
    
    <jsp:include page="../template/footer.jsp" flush="false"></jsp:include>
</body>
</html>