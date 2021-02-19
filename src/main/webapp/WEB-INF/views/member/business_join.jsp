<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	* {
		margin: 0;
		padding: 0;
	}
	
	h1 {
		text-align: center;
		width: 500px;
		font-size: 24px;
		margin: 0 auto;
		margin-top: 50px;
		font-weight: normal;
	}
	
	#container {
		border: 1px solid #e5e5e5;
		width: 520px;
		padding: 70px;
		margin: 0 auto;
	}
	
	label {
		font-size: 15px;
		font-weight: bold;
		margin: 10px;
	}
	
	input {
		width: 100%;
		border: none;
		outline: none; /*깜빡깜빡*/
		font-size: 16px;
		margin: 5px;
		display: inline-block;
		border-bottom: 2px solid #e5e5e5;
	}
	
	#email {
		width: 80%;
		font-weight: bold;
	}
	
	.host {
		width: 20%;
		font-weight: bold;
		color: gray;
	}
	
	.email {
		border-bottom: 2px solid #e5e5e5;
	}
	
	button {
		padding: 15px 20px;
		background-color: #e5e5e5;
		outline-color: gray;
		border: none;
		font-size: 16px;
		border-radius: 20px;
		margin-right: 30px;
	}
	
	.border_none {
		border: none;
	}
</style>
</head>
<body>
	<h1>사업자 가입 페이지</h1>
	<div id="container">
		<form action="business_join.do" method="GET">
			<table>
				<tr>
					<td><label for="id">아이디</label></td>
					<td><input type="text" class="other" name="id" id="id" placeholder="아이디를 입력하세요"></td>
				</tr>

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
					<td><input type="text" class="tel" name="tel1" id="tel1" placeholder="010"></td>
					<td>
						<input type="text" class="tel" name="tel2" id="tel2" placeholder="0000">
					</td>
					<td>
					<input type="text" class="tel" name="tel3" id="tel3" placeholder="0000">
					</td>
					</tr>

				<tr>
					<td><label for="birth">생년월일</label></td>
					<td><input type="text" class="birth" name="birth" id="birth" placeholder="생년월일을 입력해주세요"></td>
				</tr>
			</table>

			<div class="email">
				<table>
					<tr>
						<td><label for="email">이메일</label></td>
						<td class="host"><input type="text" class="email" name="email" id="email" placeholder="이메일을 입력해주세요"> <select name="host" id="host">
								<option value="naver.com">naver.com</option>
								<option value="gmail.com">gmail.com</option>
								<option value="nate.com">nate.com</option>
								<option value="hanmail.com">hanmail.com</option>
								<option value="daum.net">daum.net</option>
						</select></td>
					</tr>
				</table>
			</div>
			
			<div>
				<table>
					<tr>
						<td><label for="business_no">사업자 등록번호</label></td>
						<td><input type="text" class="other" name="business_no" id="business_no" placeholder="사업자 등록번호를 입력해주세요"></td>
					</tr>
					<tr>
						<td><button>가입</button></td>
					</tr>
				</table>
			</div>
		</form>
	</div>

</body>
</html>