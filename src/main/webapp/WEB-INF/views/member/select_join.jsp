<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../template/header2.jsp" flush="false"></jsp:include>
	<div id="container">
        <textarea name="info_paper" id="info_paper" cols="30" rows="10">정보제공동의서들어가는곳</textarea>
        <a href="businessJoinView.do">사업자</a>
        <a href="guestJoinView.do">일반 가입자</a>
	</div>
	<jsp:include page="../template/footer.jsp" flush="false"></jsp:include>
</body>
</html>