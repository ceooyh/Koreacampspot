<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="../../../lib/jquery-3.5.1.min.js"></script>
<title>게시판 글쓰기 페이지</title>
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
	    padding:0;
		
	}
    .board_write_container{
        width: 1200px; 
        margin: 0 auto;
        padding: 20px;
		padding-top: 100px;
	}
    #container > div{
	    width: 100%;
	    border-collapse: collapse;
	    margin:0 auto;
	}
    #board_write_headline{
	    border-top : 1px solid black;
		border-bottom : 1px solid black;
	    padding: 10px;
        margin: 10px;
		text-align: left;
	}
	#title_box{
		padding: 10px;
		display: flex;
	}
	 
	#title_head{
		width: 5%;
		margin: 0px;
		font-family: '보통로보';
		font-family: '보통노토';
	}
	#writer_box{
		padding: 10px;
		display: flex;
	}
	#writer_head{
		width: 5%;
		margin: 0px;
		font-family: '보통로보';
		font-family: '보통노토';
	}
	#textarea_box{
		padding: 10px;
		display: flex;
		font-family: '보통로보';
		font-family: '보통노토';
	}
	#textarea_head{
		width: 5%;
		margin: 0px;
		font-family: '보통로보';
		font-family: '보통노토';
	}
    textarea {
	    width:100%;
	    height: 300px;
	    resize: none;
	    box-sizing: border-box;
		margin-top: 10px;
		border-radius: 15px;
	}
	
	#container input{
	    width: 100%;
	    height:40px;
	    box-sizing:border-box;
	    border-width : 1px;
	    border-radius: 5px;
	}
   
	#textarea_box{
		display: inline-block;
	}
	
    .btn:hover{
	    background-color: #282828;
	    color:#FFFFFF
	}
	.plusminus_btn{
		border-radius: 25%;
		display: inline-block;
		margin: 10px 0px 10px 0;
		width: 30px;
		height: 25px;
		border: 1px solid  #416f9431;
		background-color: #646262;
		color: white;
	}
	.plusminus_btn:hover{
		background-color: rgb(250, 187, 71);
	    color: rgb(26, 2, 2);
	}

	#board_write_page{
		display: flex;
		justify-content: flex-end;
	}
	.write_page_btn{
	    text-decoration: none;
	    width: 80px;
	    padding:5px 0px;
	    font-weight:normal;
	    border : 1px solid #585858;
	    text-align:center;
	    font-size:14px;
	    box-sizing: border-box;
	    border-radius: 3px;
	    background-color: #646262;
	    color: white;
		display: inline-block;
		margin: 20px 10px 0px 10px;
	}
	.write_page_btn:hover{
		background-color: rgb(250, 187, 71);
	    color: rgb(26, 2, 2);
	}
</style>

<script>
	$(function(){
		var count = 3;//첨부파일 태그 개수
		$("#plus").click(function(){
			if(count == 5) return;
			count++;
			$("#file_form").append("<p><input type='file' name='file'></p>");
		});
		$("#minus").click(function(){
			if(count == 1) return;
				$(this).parent().parent().children("p").last().remove();
			count--;
		});
	});
</script>
</head>
<body>

 <!-- jstl 주석처리  -->

	<c:if test="${sessionScope.login == null || sessionScope.login == false  }">
		<c:set var="page" target="${sessionScope }" value="${pageContext.request.requestURI}${pageContext.request.queryString }" property="resultPage" scope="session"/>
		${pageContext.request.requestURI}${pageContext.request.queryString }
		<script>
			alert("로그인을 하셔야 이용할수 있습니다.");
			location.href="loginView.do";
		</script>
	</c:if>
	
	
	
	<jsp:include page="../template/header2.jsp" flush="false"></jsp:include>
	
 
	<section class="board_write_container">
		<h2 id="board_write_headline">글쓰기 페이지</h2>
		<form action="boardWriteAction.do" enctype="multipart/form-data" method="post">
			<div id="container">
				<div id="title_box"><!--게시판 글쓰기 작성시작-->
					<span id="title_head"><label for="title">[제목]</label></span>
					<input type="text" id="title" name="title">
				</div>
				
				<div id="writer_box"><!--게시판 작성자-->
					<span id="writer_head"><label for="writer">[작성자]</label></span>
					<span id="session_writer"><input type="hidden" id="writer" name="writer" value="${sessionScope.id }">
						${sessionScope.id }</span>
				</div>
				
				<div id="textarea_box"><!--게시판 내용-->
					<span id="textarea_head"><label for="content">[내용]</label></span>
					<span id="textarea_body"><textarea name="content" id="content"></textarea></span>
				</div>
	
				<div id="file_form">
					<span id="textarea_head">[첨부파일 등록]</span>
						<div>
							<p><button type="button" class="plusminus_btn" id="plus">+</button> <button type="button" class="plusminus_btn" id="minus">-</button></p>
							<p><input type="file" name="file" id="file"></p>
							<p><input type="file" name="file" id="file"></p>
							<p><input type="file" name="file" id="file"></p>
						</div>
				</div>
		
		
		<!-- 페이징 처리 --> 
				<div id="board_write_page">
					<span id="back_to_list_btn"><a href="boardList.do?pageNo=${requestScope.pageNo == null ? 1 : requestScope.pageNo }" class="write_page_btn">목록보기</a></span>
					<span id="back_btn"><a href="javascript:history.back();" class="write_page_btn">뒤로가기</a></span>
						<button class="write_page_btn">글쓰기</button>
					</div>
		</form><!--폼 마감-->
	</div>
	</section><!--섹션 마감-->
	
	<jsp:include page="../template/footer.jsp" flush="false"></jsp:include>


</body>
</html>