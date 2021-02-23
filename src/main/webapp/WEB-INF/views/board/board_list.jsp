<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록 페이지</title>
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
    #container{
        width: 1200px;
        border: 1px solid black;
        margin: 0 auto;
        text-align: center;
    }
    #search_bar{
        background-color: #e8e8e8;
        margin: 30px 0px;
        padding: 15px;
        text-align: right;
    }
    #search{
        height: 30px;
        border-color: #e8e8e8;
        color: black;
        border-radius: 3px;
        border: 1px solid #c8c8c8;
    }
    #btn_search{
        width: 60px;
        background-color: #646262;
        font-weight: bold;
        font-size: 16px;
        border : 1px solid #585858;
        border-radius: 3px;
        margin-left: 5px;
        padding: 5px;
        color: rgb(148, 144, 144);
    }
    #btn_search:hover{
        background-color: #282828;
	    color:#FFFFFF;
    }
    .board{
        width: 100%;
		margin:20px auto;
		border-collapse: collapse;
	}
	.board th, .board td{
		padding: 10px;
		text-align: center;
	}
	.board th{
		border-top : 1px solid black;
		border-bottom : 1px solid black;
	}
	.board td{
		border-top : 1px solid #e8e8e8;
		border-bottom : 1px solid #e8e8e8;
	}
	.board tr:last-child > td {
		border-bottom : 1px solid #e8e8e8;
	}
    
</style>
<body>
    <jsp:include page="../template/header.jsp" flush="false"></jsp:include>

    <div id="container">
        <h2>게시판 글쓰기 페이지</h2>
        
        <div id="main">
            <!--검색 버튼 alink-->
            <div id="search_bar">
                <form action="boardSearch.do">
                    <input type="text" id="search" name="search" placeholder="검색어를 입력해 주세요."><button id="btn_search" type="submit">검색</button>
                </form>    
            </div>
            <table class="board">
                <tr>
                    <th>NO</th>
                    <th class="title">제목</th>
                    <th class="writer">작성자</th>
                    <th class="date">작성일</th>
                    <th>조회수</th>
                    
                    <!-- 좋아요 클릭하면 좋아요를 많이 받은 순서대로 출력 -->
                    
                    <th id="blike"><a href="plusLikeHate.do?mode=blike">좋아요</a></th>
                    <th id="bhate"><a href="plusLikeHate.do?mode=bhate">싫어요</a></th>
                </tr>

        <!-- jstl 주석처리,게시판 기능 추가 기존 게시판에 있는 내용을 el과 jstl로 표현 - -->

            <c:if test="${requestScope.list ==null}">
                <script>
                    location.href="boardList.do?pageNo=1";
                    
                </script>
            </c:if> 
            <c:forEach var="dto" items="${requestScope.list }">
                <tr>
                    <td>${dto.bno }</td>
                    <td><a href="boardView.do?bno=${dto.bno }"> ${dto.title }</a><span id="comment_count">${dto.comment_count}</span></td>
                    <td>${dto.writer}</td>
                    <td>${dto.bdate }</td>
                    <td>${dto.views }</td>
                    <td>${dto.blike }</td>
                    <td>${dto.bhate }</td>
                </tr>
            </c:forEach>
            <tr>
                <td colspan="7">
                        <div class="page_bar">
                            <c:if test="${pagging.previousPageGroup }">
                                <a href="boardList.do?pageNo=${pagging.startPageOfPageGroup - 1 }">◀</a>
                            </c:if>
                            <c:forEach var="i" begin="${pagging.startPageOfPageGroup}" 
                            end="${pagging.endPageOfPageGroup}">
                                <a href="boardList.do?pageNo=${i }">${ i}</a>
                            </c:forEach>
                        
                            <c:if test="${pagging.nextPageGroup }">
                                <a href="boardList.do?pageNo=${pagging.endPageOfPageGroup + 1 }">▶</a>
                            </c:if>
                            <a href="boardWriteView.do" class="btn_writer">글쓰기</a>
                        </div>
                </td>
            </tr>    
        
            </table>
        </div>
    </div>


    <jsp:include page="../template/footer.jsp" flush="false"></jsp:include>

</body>
</html>