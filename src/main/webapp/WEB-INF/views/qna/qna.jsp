<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- <jsp:include page="template/header.jsp"></jsp:include> -->
	<div id="container">
		<div id="qna_form">
			<form action="sendQnA.do">
				<table>
					<tr>
						<td><input type="text" name="title" placeholder="제목을 입력하세요"></td>
						<td><button>작성완료</button></td>
					</tr>
					<tr>
						<td>
							<textarea name="content" placeholder="문의 내용을 입력해 주세요"></textarea>
						</td>
					</tr>
				</table>
			</form>
		</div>
		<hr>
		<div id="qna_list">
			<!-- 질문 답변 목록 
			<c:forEach var="dto" items="${requestScope.list }">
				<h3 class="qna_title">
					<ul>
					<li>제목 : ${dto.title }</li>
					<li>작성자 : ${dto.writer }</li>
					<li>작성일 : ${dto.date }  </li>
				<c:choose>
					<c:when test="${dto.status==0}"><li>안읽음</li></c:when>
					<c:when test="${dto.status==1}"><li>읽음</li>	</c:when>
					<c:otherwise><li>답변완료</li></c:otherwise>
				</c:choose>
					</ul>
				</h3>
				<div>
					<p class="qna_content">${dto.content }</p>
					<p class="qna_response">${dto.response }</p>
				</div>
			</c:forEach> -->
		</div>
		<button id="btn_more">더보기</button>
	</div>
	<!-- <jsp:include page="template/footer.jsp"></jsp:include> -->
</body>
</html>