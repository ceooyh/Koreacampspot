<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글쓰기 페이지</title>
</head>
<style>
	*{
	    margin:0;
	    padding:0;
	}
    #container{
        width: 1200px; 
        margin: 0 auto;
        padding: 20px;
        border: 1px solid black;
    }
    h2{
	    border-top : 1px solid black;
		border-bottom : 1px solid black;
	    padding: 10px;
        margin: 10px;
	}
    #container table{
	    width: 100%;
	    border-collapse: collapse;
	    margin:0 auto;
	}
	#container th{
	    width:150px !important;
	    text-align: right;
	    padding:5px;
	}
	#container td{
	    padding:15px;
	    height: 40px;
	}
	#container input{
	    width: 100%;
	    height:40px;
	    box-sizing:border-box;
	    border-width : 1px;
	    border-radius: 5px;
	}
    .btn{
	    text-decoration: none;
	    width: 80px;
	    display: inline-block;
	    padding:5px 0px;
	    font-weight:normal;
	    border : 1px solid #585858;
	    text-align:center;
	    font-size:14px;
	    box-sizing: border-box;
	    border-radius: 3px;
	    background-color: #646262;
	    color: white;
	}
    textarea {
	    width:100%;
	    height: 300px;
	    resize: none;
	    box-sizing: border-box;
	}
	p input{
	    width:80% !important;
	}
    .btn:hover{
	    background-color: #282828;
	    color:#FFFFFF
	}

	
</style>
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
		<h2>글쓰기 페이지</h2>
		<form action="boardWriteAction.do" enctype="multipart/form-data" method="post">
			<table>
				<tr>
					<th>[제목]</th>
					<td><input type="text" name="title"></td>
				</tr>
				<tr>
					<th>[작성자]</th>
					<td>
						<input type="hidden" name="writer" value="${sessionScope.id }">
						${sessionScope.id }
					</td>
				</tr>
				<tr>
					<th style="vertical-align: top;">[내용]</th><td><textarea name="content"></textarea></td>
				</tr>
		
		<!-- 첨부 파일 등록
		 
				<tr>
					<td colspan="2" id="file_form">
						<p><input type="file" name="file"> 
						<button type="button" id="plus">+</button> <button type="button" id="minus">-</button></p>
						<p><input type="file" name="file"></p>
						<p><input type="file" name="file"></p>
					</td>
				</tr>
		
		-->
		
		<!-- 페이징 처리 --> 
				<tr>
					<th><a href="main.do?pageNo=${requestScope.pageNo == null ? 1 : requestScope.pageNo }" class="btn">목록보기</a></th>
					<td style="text-align: right;">
						<a href="javascript:history.back();" class="btn">뒤로가기</a>
						<button class="btn">글쓰기</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
	
	
	<jsp:include page="../template/footer.jsp" flush="false"></jsp:include>


</body>
</html>