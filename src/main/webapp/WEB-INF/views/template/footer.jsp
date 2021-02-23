<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회사 정보</title>
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
        padding: 0;
    }
    footer div{
        width:100%;
        margin: 10px auto;
        padding: 5px;
        font-size: 14px;
        background-color: rgb(46,46,46);
        color:  rgb(215,215,215);
    }
    footer ul{
        list-style: none;
    }
    footer #bold{
        font-family: '보통노토';
        font-size: 14px;
        
    }
    footer .copyright{
        font-family: '보통노토';
        list-style: none;
    }
    footer #size{
        font-size: 14px;
    }
    footer #copy{
        font-family: '보통노토';
        font-size: 12px;
    }
    footer #name{
        font-size: 25px;
        font-family: '두꺼운로보';
        color:  rgb(233, 233, 233);
        text-decoration: none;
    }
    footer hr{
        margin: 5px 0px;
    }
    footer #black{
        font-family: '굵은노토';
        color:  rgb(233,233,233);
        text-decoration: none;
    }
</style>
</head>
<body>
	<footer>
        <div id="footer_container">
            <div>
                <ul>
                    <a href="/" id="name">(주)KoreaCampSpot</a>
                    <hr>
                    <li>사업자등록번호 505-05-50505</li>
                    <li>Contact : 032-505-0505</li>
                    <li>E-mail : ceojsqpqp@naver.com </li>
                    <li>주소: 경기도 김포시 통진읍 담터로 50번길 505</li>
                    <li>통신판매업신고번호 : 2021-김포통진-0505호</li>
                    <hr>
                </ul>
            </div>  
            <div class="copyright">
                <ul>
                    <li id="copy">
                        © 2021 Hotels505.com은 505 Group 계열사입니다. All rights reserved. Copyright ⓒ <a href="#" id="black"> All rights reserved.</a> Designed by <a href="#" id="black"> KCS </a>
                    </li>
                </ul>
            </div>
        </div>
    </footer>
</body>
</html>