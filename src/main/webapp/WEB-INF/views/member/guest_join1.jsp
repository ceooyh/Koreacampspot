<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일반사용자 회원가입 개인정보 입력란</title>
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
    section{
        width: 100%;
        margin: 0 auto;
    }
    #headline{
        font-size: 30px;
        margin: 20px 0;
        text-align: center;
        color: rgb(46, 46, 46);
        font-family: '굵은노토';
    }
    #inside_headline{
        font-size: 30px;
        margin: 20px 0;
        color: rgb(46, 46, 46);
        font-family: '보통노토';
    }
    label{
        font-family: '굵은노토';
        font-size: 13px;
        color: rgb(49, 49, 49);
    }
    input{
        border: none;
    }
    span{
        display: inline-block;
    }
    input:focus {
        outline:none;
    }
    input::placeholder{
        color: rgb(216, 215, 215);
    }
    #container{
        padding: 50px;
        width: 600px;
        margin: 0 auto;
        border: 1px solid rgb(189, 187, 187);
    }
    .part{
        margin-top: 30px;
        margin-bottom: 30px;
    }
    .guest_insert{
        width: 100px;
        margin: 10px 0;
    }
    .guest_input1{
        width: 600px;
        padding-top: 10px;
        padding-bottom: 15px;
        border-bottom: 2px solid rgb(247, 245, 245);
    }
    .guest_input1 > input{
        font-size: 18px;
        font-family: '보통노토';
        color: rgb(189, 187, 187);
    }
    #tel1{
        width: 100px;
        color: rgb(97, 95, 95);
        font-family: '보통노토';
        border: none;
    }
    .guest_input2{
        width: 244px;
        padding-top: 10px;
        padding-bottom: 15px;
        border-bottom: 2px solid rgb(247, 245, 245);
    }
    .guest_input3{
        width: 440px;
        padding-top: 10px;
        padding-bottom: 15px;
        border-bottom: 2px solid rgb(247, 245, 245);
    }
    #host{
        width: 150px;
        color: rgb(97, 95, 95);
        font-family: '보통노토';
        border: none;
    }
    .guest_input4{
        width: 196px;
        padding-top: 10px;
        padding-bottom: 15px;
        border-bottom: 2px solid rgb(247, 245, 245);
    }
    .gender_select{
        margin-top: 10px;
        margin-right: 5px;
        font-family: '보통노토';
        color: rgb(97, 95, 95);
    }
    #btn_id_check{
        padding: 2px;
        border: none;
        font-size: 16px;
        border-radius: 10px;
        background-color: white;
        font-family: '보통노토';
        color: rgb(97, 95, 95);
    }
    #btn_id_check:hover{
        border: none;
        background-color: rgb(97, 95, 95);
        color: white;
    }
    .btn_submit{
        padding-top: 8px;
        padding-bottom: 8px;
        background-color: rgb(245, 244, 244);
        width: 49%;
        border: none;
        font-family: '보통노토';
        border-radius: 3%;
    }
    .btn_submit:hover{
        background-color: rgb(63, 62, 62);
        color: rgb(245, 244, 244);
    }
    input[type="checkbox"]{
        display: none;
    }
    #checkbox_gender input[type="checkbox"] + label span{
        border-radius: 5px;
        padding: 5px;
        display: inline-block;
        cursor:pointer;
        vertical-align:middle;
        border: 1px solid rgb(216, 215, 215);
    }
    #checkbox_gender input[type="checkbox"] + label span:hover{
        color: white;
        background-color: rgb(216, 215, 215);
    }
    #checkbox_gender input[type="checkbox"]:checked + label span{
        background-color: rgb(233, 173, 9);
        color: rgb(46, 46, 46);
    }


</style>
</head>
<body>
    <section>
        <p id="headline">회원 가입 페이지</p>
        <form action="guestJoinAction.do" method="GET">
        <div id="container">
                <p id="inside_headline">회원님의 정보를 입력해주세요</p>
                <div id="id_insert" class="part"><!--아이디 입력 부분 start-->
                        <span class="guest_insert"><label for="id">아이디</label></span><br>
                        <span><input  class="guest_input1" type="text" name="id" id="id" placeholder="아이디를 입력하세요"></span><br>
                        <span class="guest_insert"><button id="btn_id_check">중복검사</button></span>
                </div><!--아이디 입력 부분 end-->




                <div id="id_insert" class="part"><!--비밀번호 입력 부분 start-->
                        <span class="guest_insert"><label for="pass">비밀번호입력</label></span><br>
                        <span><input  class="guest_input1" type="password" name="pass" id="pass" placeholder="비밀번호 입력"></span>
                </div><!--비밀번호 입력 부분 end-->
                    
                    
                    
                    
                <div id="id_insert" class="part"><!--비밀번호 확인 부분 start-->
                        <span class="guest_insert"><label for="passcheck">비밀번호확인</label></span><br>
                        <span><input class="guest_input1" type="password" name="passcheck" id="passcheck" placeholder="비밀번호 확인"></span>
                </div><!--비밀번호 확인 부분 end-->
                    



                <div id="id_insert" class="part"><!--이름 입력 부분 start-->
                    <span class="guest_insert"><label for="name">이름</label></span><br>
                    <span><input class="guest_input1" type="text" name="name" id="name" placeholder="이름 입력"></span>
                </div><!--이름 입력 부분 end-->




                <div id="id_insert" class="part"><!--전화번호 입력 부분 start-->
                    <span class="guest_insert"><label for="tel2">전화번호</label></span><br>
                        <span><select name="tel1" id="tel1">
                                <option value="010">010</option>
                                <option value="019">019</option>
                                <option value="011">011</option>
                            </select></span>
                            <span><input class="guest_input2" type="text" name="tel2" id="tel2" class="tel" placeholder="0000"></span>
                            <span><input class="guest_input2" type="text" name="tel3" id="tel3" class="tel" placeholder="0000"></span>
                </div><!--전화번호 입력 부분 end-->




                <div id="id_insert" class="part"><!--이메일 부분 start-->
                    <span class="guest_insert"><label for="pass">이메일</label></span><br>
                    <span><input class="guest_input3" type="text" name="email" id="email" placeholder="이메일을 입력해주세요"></span>
                    <span><select name="host" id="host">
                                <option value="naver.com">@naver.com</option>
                                <option value="gmail.com">@gmail.com</option>
                                <option value="nate.com">@nate.com</option>
                                <option value="hanmail.com">@hanmail.com</option>
                                <option value="daum.net">@daum.net</option>
                            </select></span>
                </div><!--이메일 부분 end-->




                <div id="id_insert" class="part"><!--생일/성별 start-->
                    <span class="guest_insert"><label for="year">생일/성별</label></span><br>
                    <span class="guest_input4"><input type="text" id="year" name="year" placeholder="년"></span>
                    <span class="guest_input4"><input type="text" id="month" name="month" placeholder="월"></span>
                    <span class="guest_input4"><input type="text" id="day" name="day" placeholder="일"></span><br>
                    <div id="checkbox_gender">
                        <span class="gender_select"><input id="gender_woman" type="checkbox" value="1" class="checkbox"><label for="gender_woman"><span>여성</span></label></span>
                        <span class="gender_select"><input id="gender_man" type="checkbox" value="0" class="checkbox"><label for="gender_man"><span>남성</span></label></span>
                    </div>
                </div><!--생일 성별 end-->



                <div id="btn_continer">
                    <button class="btn_submit">다음</button>
                    <button class="btn_submit">이전</button>
                </div>
            </div>
        </form><!--폼마지막 줄-->
    </section>
    
    <jsp:include page="../template/footer.jsp" flush="false"></jsp:include>
</body>
</html>