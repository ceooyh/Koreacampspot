<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의내역 상세페이지</title>
  <script>
        var pageNo = 1;//전역변수
        $(function(){
            
        });
    </script>
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
        padding: 0;
        margin: 0;
    }
    #container{
        padding: 20px;
        border: 1px solid black;
        width: 704px;
        margin: 20px auto;
    }
</style>
</head>
<body>
    <jsp:include page="../template/header2.jsp" flush="false"></jsp:include>
	    <c:if test="${requestScope.list ==null}">
	        <script>
	            location.href=".do?pageNo=1";
	            
	        </script>
	    </c:if>
    
    <div id="container">
    <h2>문의하기 상세페이지</h2>
        <hr>
        <table>
            <tr>
                <th>[NO]</th>
                <th>[제목]</th>
                <th>[작성자]</th>
                <th>[내용]</th>
                <th>[작성일]</th>
                <th>[조회]</th>
                <th>[답변]</th>
            </tr>
            
        <c:forEach var="qna" items="${requestScope.list }">
            <tr>
                <td><p>${qna.qno }</p></td>
                <td><p>${qna.title }</p></td>
                <td><p>${qna.id}</p></td>
                <td><p>${qna.content }</p></td>
                <td><p>${qna.qdate }</p></td>
                <td><p>${qna.status }</p></td>
                <td><p>${qna.response }</p></td>
            </tr>
        </c:forEach>
        
    <tr>
        <td colspan="7">
                <div class="page_bar">
                    <c:if test="${pagging.previousPageGroup }">
                        <a href=" .do?pageNo=${pagging.startPageOfPageGroup - 1 }">◀</a>
                    </c:if>
                    <c:forEach var="i" begin="${pagging.startPageOfPageGroup}" 
                    end="${pagging.endPageOfPageGroup}">
                        <a href=".do?pageNo=${i }">${ i}</a>
                    </c:forEach>
                
                    <c:if test="${pagging.nextPageGroup }">
                        <a href=" .do?pageNo=${pagging.endPageOfPageGroup + 1 }">▶</a>
                    </c:if>
                </div>
            </td>
        </tr>
    </table> 
</div>
<jsp:include page="../template/footer.jsp" flush="false"></jsp:include>
</body>
</html>