<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h1>일반 회원 가입 페이지</h1>
	
	<div id="container">
		<form action="guest_join.do" method="GET">
			<table>
				<tr>
					<td><label for="id">아이디</label></td>
					<td><input type="text" class="other" name="id" id="id" placeholder="아이디를 입력하세요"></td>
				</tr>

<<<<<<< HEAD
				<tr>
					<td><label for="pass">비밀번호</label></td>
					<td><input type="password" class="other" name="pass" id="pass" placeholder="비밀번호 입력(8~32자리)"></td>
				</tr>

				<tr>
					<td><label for="passcheck">비밀번호 확인</label></td>
					<td><input type="password" class="other" name="passcheck" id="passcheck" placeholder="비밀번호 확인"></td>
				</tr>

				<tr>
					<td><label for="name">이름</label></td>
					<td><input type="text" class="other" name="name" id="name" placeholder="이름 입력"></td>
				</tr>

				<tr>
					<td><label for="tel">전화번호</label></td>
					<td><input type="text" class="tel" name="tel1" id="tel1" placeholder="010"><input type="text" class="tel" name="tel2" id="tel2" placeholder="0000"><input type="text" class="tel" name="tel3" id="tel3" placeholder="0000"></td>
				</tr>

				<tr>
					<td><label for="birth">생년월일</label></td>
					<td><input type="text" class="birth" name="birth" id="birth" placeholder="생년월일을 입력해주세요"></td>
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
                <tr class="gender">
                    <td>
                        <select name="gender" id="gender">
                            <option value="0">남자</option>
                            <option value="1">여자</option>
                        </select>
                    </td>
                </tr>
			</table>
   <hr>
            <h2>취향 정보 입력란</h2>
            
            
            
              <button>회원가입</button>
              <button>취소</button>
        </form>
	</div>
=======
    <h1>회원 가입 페이지</h1>
    <form action="guestJoinAction.do" method="GET">
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
        <select name="gender" id="gender">
            <option value="0">남자</option>
            <option value="1">여자</option>
        </select> <br>
        <hr>
        <h2>취향 정보 입력란</h2>
    </form>
    <button>회원가입</button>
    <button>취소</button>
>>>>>>> branch 'master' of https://github.com/ceooyh/Koreacampspot.git

</body>
</html>