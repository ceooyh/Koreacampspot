<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록 페이지</title>
<style>
    *{
        margin:0;
        padding:0;
    }
    #container{
        width: 1200px;
        margin: 0 auto;
    }
    #search_bar{
        width: 1200px;
        background-color: #e8e8e8;
        margin: 30px 0px;
        padding: 15px;
        vertical-align: middle;
    }
    #search{
        height: 30px;
        border-color: #e8e8e8;
        color: #e8e8e8;
        border-radius: 3px;
        border: 1px solid #c8c8c8;
    }
    #btn_search{
        height: 30px;
        background-color: #646262;
        font-weight: bold;
        font-size: 16px;
        border: 1px solid #c8c8c8;
        border-radius: 3px;
        margin-left: 5px;
        padding: 5px;
        color: white;
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
    #blike, #bhate{
    	color: black;
    	text-decoration: none;
    }
</style>
<body>
    <jsp:include page="../template/header.jsp" flush="false"></jsp:include>

    <div id="container">
        <h2>게시판 글쓰기 페이지</h2>
        
        <div id="main">
            <!--검색 버튼 alink-->
            <div id="search_bar">
                <input type="text" id="search" name="search" placeholder="검색어를 입력해 주세요."><button id="btn_search">검색</button>
            </div>
            <table class="board">
                <tr>
                    <th>NO</th>
                    <th class="title">제목</th>
                    <th class="writer">작성자</th>
                    <th class="date">작성일</th>
                    <th>조회수</th>
                    <!-- 좋아요 클릭하면 좋아요를 많이 받은 순서대로 출력 -->
                    <th id="blike"><a href="main.do?mode=blike">좋아요</a></th>
                    <th id="bhate"><a href="main.do?mode=bhate">싫어요</a></th>
                </tr>

        <!-- jstl 주석처리,게시판 기능 추가 기존 게시판에 있는 내용을 el과 jstl로 표현 -

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
                </td>
            </tr>    
            -->
        
            </table>
        </div>
    </div>


    <jsp:include page="../template/footer.jsp" flush="false"></jsp:include>
 
</body>
</html>