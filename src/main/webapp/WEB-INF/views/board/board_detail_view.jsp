<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 상세 페이지</title>
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
		<h2>게시판 페이지</h2>
			<table>
				<tr>
					<th>제목</th>
					<td>
						${requestScope.board.title }
					</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>
						${requestScope.board.writer }			
					</td>
				</tr>
				<tr>
					<th>조회수</th>
					<td>
						${requestScope.board.views }
					</td>
				</tr>
				<tr>
					<th>작성일</th>
					<td>
						${requestScope.board.bDate }
					</td>
				</tr>
				<tr>
					<th style="vertical-align: top;">내용</th>
					<td>
						${requestScope.board.content }
					</td>
                </tr>

         <!-- 첨부파일 부분

				<tr>
					<td colspan="2">
						첨부파일<br>
						<c:forEach var="f" items="${requestScope.file }">
							<a href="fileDownload.do?writer=${f.writer }&file=${f.fileName}">
							${f.fileName}</a><br>
							<c:if test="${f.type =='image' }">
								<img src="imageLoad.do?writer=${f.writer }&file=${f.fileName}&type=${f.type}">
							</c:if>
							<c:if test="${f.type =='video' }">
								<video controls src="imageLoad.do?writer=${f.writer }&file=${f.fileName}&type=${f.type}"></video>
							</c:if>
						</c:forEach>
					</td>
                </tr>

        -->        
        
        <!--좋아요,싫어요 사진 결정, 경로 추가해야함

				<tr>
					<td>
						<a href="#" >
							<img src="${pageContext.request.contextPath }/img/  ">
							<span>${requestScope.board.bLike }</span>
						</a>
						<a href="#" >
							<img src="${pageContext.request.contextPath }/img/  ">						
							<span>${requestScope.board.bHate }</span>
						</a>
					</td>
                </tr>
                
         --> 
         
         
         <!-- 게시판 댓글 등록창

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

				<tr>
					<th><a href="javascript:history.back();" class="btn">목록보기</a></th>
					<td style="text-align: right;">
					<c:if test="${sessionScope.id == requestScope.board.writer }">
						<a href="#" class="btn">수정</a>
						<a href="deleteBoard.do?bno=${requestScope.board.bno }" class="btn">삭제</a>
					</c:if>
						<a href="#" class="btn">이전글</a>
						<a href="#" class="btn">다음글</a>
						
					</td>
                </tr>
                
        <!--  댓글 목록 + 댓글 좋아요 싫어요

				<tr>
				
						<td colspan="2">
					
					<c:forEach var="comment" items="${requestScope.comment }">
						<table class="comment">	
							<tr>
								<th>작성자</th>
								<th>작성일</th>
								<th>좋아요</th>
								<th>싫어요</th>
							</tr>
							<tr>
								<td style="width:100px;text-align: center;">${comment.writer }</td>
								<td style="text-align: center;">${comment.date }</td>
								<td style="width:50px;text-align: center;"><a href="commentLike.do?cno=${comment.cno }&bno=${requestScope.board.bno}">${comment.blike }</a></td>
								<td style="width:50px;text-align: center;"><a href="commentHate.do?cno=${comment.cno }&bno=${requestScope.board.bno}">${comment.bhate }</a></td>
							</tr>
							<tr><td colspan="4" style="text-align: left;">${comment.content }</td>
							</tr>
						</table>
					</c:forEach>
					
						</td>
							
                </tr>

        -->      
			</table>
    </div>
    
   
    <jsp:include page="../template/footer.jsp" flush="false"></jsp:include>

</body>
</html>