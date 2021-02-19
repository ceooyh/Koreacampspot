<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <h1>사업자 가입 페이지</h1>
    <form action="businessJoinAction.do" method="GET"> 
        <input type="text" name="id" id="id" placeholder="아이디를 입력하세요"><br>
        <input type="password" name="pass" id="pass" placeholder="비밀번호 입력"><br>
        <input type="password" name="passcheck" id="passcheck" placeholder="비밀번호 확인"><br>
        <input type="text" name="name" id="name" placeholder="이름 입력"><br>
        <input type="text" name="tel1" id="tel1" placeholder="010"><input type="text" name="tel2" id="tel2" placeholder="0000"><input type="text" name="tel3" id="tel3" placeholder="0000"><br>
        <input type="text" name="birth" id="birth" placeholder="생년월일을 입력해주세요"><br>
        <input type="text" name="email" id="email" placeholder="이메일을 입력해주세요"> <select name="host" id="host">
            <option value="naver.com">naver.com</option>
            <option value="gmail.com">gmail.com</option>
            <option value="nate.com">nate.com</option>
            <option value="hanmail.com">hanmail.com</option>
            <option value="daum.net">daum.net</option>
        </select> <br>
        <input type="text" name="business_no" id="business_no" placeholder="사업자 등록번호를 입력해주세요"><br>
    </form>

</body>
</html>