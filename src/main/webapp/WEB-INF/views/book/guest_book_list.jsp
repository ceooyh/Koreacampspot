<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일반 사용자 예약내역페이지</title>
<style type="text/css">
    @font-face {
        font-family: '보통노토';
        src: url(Font/NotoSansCJKkr-hinted/NotoSansCJKkr-Medium.otf);
    }
    @font-face {
        font-family: '굵은노토';
        src: url(Font/NotoSansCJKkr-hinted/NotoSansCJKkr-Black.otf);
    }
    @font-face {
        font-family: '검은고딕';
        src: url(Font/검은고딕/OFL.txt);
    }
    @font-face {
        font-family: '보통로보';
        src: url(Font/Roboto/Roboto-Medium.ttf);
    }
    @font-face {
        font-family: '두꺼운로보';
        src: url(Font/Roboto/Roboto-Bold.ttf);
    }
    *{
        padding: 0;
        margin: 0;
    }
    section{
        width: 100%;
    }
    #headline_comment{
        text-align: center;
        font-family: '굵은노토';
        color: rgb(46,46,46);
        margin-bottom: 40px;
        font-size: 32px;
    }
    #reservation_table{
        margin-top: 40px;
    }
    #reservation_table table{
        border-collapse: collapse;
    }
    .head_name{
        width: 200px;
        height: 30px;
        font-size: 14px;
        padding-top: 10px;
        text-align: center;
        color: rgb(46,46,46);
        border-top: 1px solid rgb(215, 215,215);
        border-bottom: 1px solid rgb(215, 215,215);
        font-family: '굵은노토';
    }
    .inside_content{
        width: 200px;
        height: 60px;
        padding-top: 30px;
        font-size: 14px;
        text-align: center;
        color: rgb(46,46,46);
        border-bottom: 1px solid rgb(215, 215,215);
        font-family: '굵은노토';
    }
</style>
<script src="../../../lib/jquery-3.5.1.min.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
<jsp:include page="../template/header2.jsp" flush="false"></jsp:include>

    <section>
        <div id="reservation_table">
            <h1 id="headline_comment">고객 예약테이블</h1>
            <table>
                <thead>
                    <tr>
                        <th><p class="head_name">예약번호</p></th>
                        <th><p class="head_name">시작일</p></th>
                        <th><p class="head_name">종료일</p></th>
                        <th><p class="head_name">예약일</p></th>
                        <th><p class="head_name">자리번호</p></th>
                        <th><p class="head_name">예약자 아이디</p></th>
                        <th><p class="head_name">예약 상태</p></th>
                        <th><p class="head_name">가격</p></th>
                        <th><p class="head_name">캠핑장 이름</p></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="dto" items="${requestScope.list }">
                        <tr>
                            <td><p class="inside_content">${dto.bno}</p></td>
                            <td><p class="inside_content">${dto.start_date}</p></td>
                            <td><p class="inside_content">${dto.end_date}</p></td>
                            <td><p class="inside_content">${dto.book_date}</p></td>
                            <td><p class="inside_content">${dto.sano}</p></td>
                            <td><p class="inside_content">${sessionScope.id}</p></td>
                            <td><p class="inside_content">${dto.status}</p></td>
                            <td><p class="inside_content">${dto.price}</p></td>
                            <td><p class="inside_content">${dto.sname}</p></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </section>
<jsp:include page="../template/footer.jsp" flush="false"></jsp:include>
</body>
</html>