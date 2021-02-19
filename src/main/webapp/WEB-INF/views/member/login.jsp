<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="loginAction.do">
		아이디<input type="text" name="id" id="id"><br>
		비밀번호<input type="password" name="pass" id="pass"><br>
		<button type="button">로그인</button>
		<a href="selectJoinView.do">회원가입</a>
		<a href="findIdPwView.do">아이디/비밀번호 찾기</a>
	</form>
</body>
</html>