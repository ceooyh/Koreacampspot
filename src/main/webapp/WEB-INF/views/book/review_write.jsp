<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 작성 페이지</title>
<style type="text/css">
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
    #headline{
        text-align: center;
        font-family: '굵은노토';
        font-size: 30px;
        color: rgb(46, 46, 46);
        margin-bottom: 20px;
    }
    section label{
        font-family: '보통노토';
        font-size: 13px;
        color: rgb(46, 46, 46);
    }
    section input{
        border: none;
    }
    section span{
        display: inline-block;
    }
    section input:focus {
        outline:none;
    }
    section input::placeholder{
        color: rgb(216, 215, 215);
    }
    .input_span input{
        width: 100%;
        border-bottom: 2px solid rgb(231, 231, 231);
        padding:  10px 0;
        color: rgb(46, 46, 46);
        font-family: '보통노토';
        font-size: 20px;
    }
    #first_input{
        width: 704px;
        border-bottom: 2px solid rgb(231, 231, 231);
        padding:  10px 0;
        color: rgb(46, 46, 46);
        font-family: '보통노토';
        font-size: 20px;
    }
    .input_span input:focus{
        border-bottom: 2px solid rgb(46, 46, 46);
    }
    #first_input:focus{
        border-bottom: 2px solid rgb(46, 46, 46);
    }
    .part_select{
        margin-bottom: 20px;
    }
    #qna_content_title{
        margin-bottom: 20px;
    }
    textarea{
        padding: 10px;
        box-sizing: border-box;
        border-radius: 10px;
        border: 1px solid rgb(216, 215, 215);
        color: rgb(46, 46, 46);
        font-family: '보통노토';
    }
    #btn_submit{
        width: 100%;
    }
    #btn_submit button{
        margin-top: 20px;
        font-family: '보통노토';
        font-size: 20px;
        color: rgb(46, 46, 46);
        background-color: rgb(231, 231, 231);
        border-radius: 10px;
        border: none;
        height: 40px;
        width: 100%;
        cursor: pointer;
    }
    #btn_submit button:hover{
        color: rgb(231, 231, 231);
        background-color: rgb(46, 46, 46);
    }
    textarea::placeholder{
        color: rgb(216, 215, 215);
    }
</style>
<script src="../../../lib/jquery-3.5.1.min.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
 <section>
        <form action="sendQnA.do">
            <div id="container">
                        <p id="headline">고객문의사항</p><!--헤드라인-->

                        <div class="part_select">
                            <p><label for="#">[아이디]</label></p>
                            <span class="input_span"><input id="first_input" type="text" name="id" id="id" value="${sessionScope.id} }" readonly></span>
                        </div><!--아이디 입력란 마지막 자동 입력-->

                        <div class="part_select">
                            <p><label for="title">[제목]</label></p>
                            <sapn class="input_span"><input type="text" name="title" id="title" placeholder="제목을 입력해주세요"></sapn>
                        </div><!--제목 입력란-->

                        <div class="part_select">
                            <p id="qna_content_title"><label for="title">[후기내용]</label></p>
                            <textarea name="content" id="content" cols="95" rows="20" placeholder="문의내용을 입력하세요"></textarea>
                            <div id="btn_submit">
                            <button id="btn" type="submit">전송</button>
                            </div>
                        </div><!--내용 입력란-->
            </div><!--container 마지막 부분-->
        </form>
    </section>
</body>
</html>