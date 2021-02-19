<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록 페이지</title>
</head>
<body>
<<<<<<< HEAD
<!-- header 주석처리 
=======
	<jsp:include page="../template/header.jsp" flush="false"></jsp:include>
>>>>>>> branch 'master' of https://github.com/ceooyh/Koreacampspot.git

<<<<<<< HEAD
	<jsp:include page="template/header.jsp" flush="false"></jsp:include>
	
-->
		<div id="container">
		<table class="board">
			<tr>
				<th>글번호</th>
				<th class="title">제목</th>
				<th class="writer">작성자</th>
				<th class="date">작성일</th>
				<th>조회수</th>
				<!-- 좋아요 클릭하면 좋아요를 많이 받은 순서대로 출력 -->
				<th><a href="main.do?mode=blike">좋아요</a></th>
				<th><a href="main.do?mode=bhate">싫어요</a></th>
			</tr>
	<!-- jstl 주석처리, 게시판 기능 추가 기존 게시판에 있는 내용을 el과 jstl로 표현 -
	
		<c:if test="${requestScope.list ==null}">
			<script>
				location.href="main.do?pageNo=1";
				
			</script>
		</c:if>
		<c:forEach var="dto" items="${requestScope.list }">
			<tr>
				<td>${dto.bno }</td>
				<td><a href="boardView.do?bno=${dto.bno }"> ${dto.title }
					<c:if test="${dto.cCount > 0 }">
						[${dto.cCount}]
					</c:if>
				</a></td>
				<td>${dto.writer}</td>
				<td>${dto.bDate }</td>
				<td>${dto.bCount }</td>
				<td>${dto.bLike }</td>
				<td>${dto.bHate }</td>
			</tr>
		</c:forEach>
		   <tr>
			<td colspan="7">
					<div class="page_bar">
						<c:if test="${pagging.previousPageGroup }">
							<a href="index.do?pageNo=${pagging.startPageOfPageGroup - 1 }">◀</a>
						</c:if>
						<c:forEach var="i" begin="${pagging.startPageOfPageGroup}" 
						end="${pagging.endPageOfPageGroup}">
							<a href="index.do?pageNo=${i }">${ i}</a>
						</c:forEach>
					
						<c:if test="${pagging.nextPageGroup }">
							<a href="index.do?pageNo=${pagging.endPageOfPageGroup + 1 }">▶</a>
						</c:if>
						<a href="boardWriteView.do" class="btn_writer">글쓰기</a>
					</div>
			</tr>
			
		-->
		
		</table>
	</div>
	
	<!-- 
	
	<jsp:include page="template/footer.jsp" flush="false"></jsp:include>
	 
	 -->
	
=======
		<div id="container">
		<table class="board">
			<tr>
				<th>글번호</th>
				<th class="title">제목</th>
				<th class="writer">작성자</th>
				<th class="date">작성일</th>
				<th>조회수</th>
				<!-- 좋아요 클릭하면 좋아요를 많이 받은 순서대로 출력 -->
				<th><a href="main.do?mode=blike">좋아요</a></th>
				<th><a href="main.do?mode=bhate">싫어요</a></th>
			</tr>
	<!-- jstl 주석처리, 게시판 기능 추가 기존 게시판에 있는 내용을 el과 jstl로 표현 -
	
		<c:if test="${requestScope.list ==null}">
			<script>
				location.href="main.do?pageNo=1";
				
			</script>
		</c:if>
		<c:forEach var="dto" items="${requestScope.list }">
			<tr>
				<td>${dto.bno }</td>
				<td><a href="boardView.do?bno=${dto.bno }"> ${dto.title }
					<c:if test="${dto.cCount > 0 }">
						[${dto.cCount}]
					</c:if>
				</a></td>
				<td>${dto.writer}</td>
				<td>${dto.bDate }</td>
				<td>${dto.bCount }</td>
				<td>${dto.bLike }</td>
				<td>${dto.bHate }</td>
			</tr>
		</c:forEach>
		   <tr>
			<td colspan="7">
					<div class="page_bar">
						<c:if test="${pagging.previousPageGroup }">
							<a href="index.do?pageNo=${pagging.startPageOfPageGroup - 1 }">◀</a>
						</c:if>
						<c:forEach var="i" begin="${pagging.startPageOfPageGroup}" 
						end="${pagging.endPageOfPageGroup}">
							<a href="index.do?pageNo=${i }">${ i}</a>
						</c:forEach>
					
						<c:if test="${pagging.nextPageGroup }">
							<a href="index.do?pageNo=${pagging.endPageOfPageGroup + 1 }">▶</a>
						</c:if>
						<a href="boardWriteView.do" class="btn_writer">글쓰기</a>
					</div>
			</tr>
			
		-->
		
		</table>
	</div>
	
	
	<jsp:include page="../template/footer.jsp" flush="false"></jsp:include>
	 
>>>>>>> branch 'master' of https://github.com/ceooyh/Koreacampspot.git
</body>
</html>