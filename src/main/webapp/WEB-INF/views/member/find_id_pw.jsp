<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<body>
<jsp:include page="../template/header2.jsp" flush="false"></jsp:include>
    <div id="container">
		<form action="findIdPw.do" method="GET">
            <table>
                <tr>
                    <td><label for="id">아이디</label></td>
                    <td><input type="text" class="other" name="id" id="id" placeholder="아이디를 입력하세요"></td>
                </tr>

                <tr>
                    <td><label for="name">이름</label></td>
                    <td><input type="text" class="other" name="name" id="name" placeholder="이름 입력"></td>
                </tr>

                <tr class="email">
                    <td><label for="email">이메일</label></td>
                    <td class="host"><input type="text" class="email" name="email" id="email" placeholder="이메일을 입력해주세요"><select name="host" id="host">
                            <option value="naver.com">naver.com</option>
                            <option value="gmail.com">gmail.com</option>
                            <option value="nate.com">nate.com</option>
                            <option value="hanmail.com">hanmail.com</option>
                            <option value="daum.net">daum.net</option>
                    </select></td>
                </tr>
            </table>
            <button>입력완료</button>
		</form>
	</div>
	<jsp:include page="../template/footer.jsp" flush="false"></jsp:include>
</body>
</html>
