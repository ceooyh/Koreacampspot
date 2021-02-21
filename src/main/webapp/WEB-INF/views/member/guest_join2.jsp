<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
    #container{
        width: 600px;
        margin: 0 auto;
    }
    #headline{
        font-size: 30px;
        margin: 20px 0;
        text-align: center;
        color: rgb(46, 46, 46);
        font-family: '굵은노토';
    }
    input[type="checkbox"]{
        display: none;
    }
    input[type="checkbox"]{

    }

</style>
</head>
<body>
    <div id="container">
        <p id="headline">취향 정보 입력란</p>
            <div id="camp_type" class="category">
                <input type="checkbox" id="camping" name="camping" value="#일반야영장"><label for="camping"><span>일반야영장</span></label>
                <input type="checkbox" id="autocamping" name="autocamping"  value="#오토캠핑"><label for="autocamping"><span>오토캠핑</span></label>
                <input type="checkbox" id="glamping" name="glamping"  value="#글램핑"><label for="glamping"><span>글램핑</span></label>
                <input type="checkbox" id="caravan" name="caravan"  value="#카라반"><label for="caravan"><span>카라반</span></label>
            </div>
            <div id="mood" class="category">
                <input type="checkbox" id="activity" name="activity"  value="#액티비티"><label for="activity"><span>액티비티</span></label>
                <input type="checkbox" id="photospot" name="photospot"  value="#포토스팟"><label for="photospot"><span>포토스팟</span></label>
                <input type="checkbox" id="attraction" name="attraction"  value="#명소"><label for="attraction"><span>명소</span></label>
                <input type="checkbox" id="4people" name="4people"  value="#4인이상"><label for="4people"><span>4인이상</span></label>
                <input type="checkbox" id="couple" name="couple"  value="#커플"><label for="couple"><span>커플</span></label>
                <input type="checkbox" id="2people" name="2people"  value="#2인이상"><label for="2people"><span>2인이상</span></label>
                <input type="checkbox" id="solo" name="solo"  value="#솔플"><label for="solo"><span>솔플</span></label>
                <input type="checkbox" id="nightview" name="nightview"  value="#야경"><label for="nightview"><span>야경</span></label>
                <input type="checkbox" id="" name="" value="#조용"><label for=""><span>조용</span></label>
                <input type="checkbox" id="" name=""  value="#시끌벅적"><label for=""><span>시끌벅적</span></label>
                <input type="checkbox" id="" name=""  value="#힐링"><label for=""><span>힐링</span></label>
                <input type="checkbox" id="" name=""  value="#가족"><label for=""><span>가족</span></label>
                <input type="checkbox" id="" name=""  value="#로맨틱"><label for=""><span>로맨틱</span></label>
                <input type="checkbox" id="" name=""  value="#계곡"><label for=""><span>계곡</span></label>
                <input type="checkbox" id="" name=""  value="#등산"><label for=""><span>등산</span></label>
                <input type="checkbox" id="" name=""  value="#수상레저"><label for=""><span>수상레저</span></label>
                <input type="checkbox" id="" name=""  value="#해수욕장"><label for=""><span>해수욕장</span></label>
                <input type="checkbox" id="" name=""  value="#MTB"><label for=""><span>MTB</span></label>
                <input type="checkbox" id="" name=""  value="#스키"><label for=""><span>스키</span></label>
            </div>
            <div id="theme" class="category">
                <input type="checkbox" id="" name=""  value="#텐트대여"><label for=""><span>텐트대여</span></label>
                <input type="checkbox" id="" name=""  value="#장비대여"><label for=""><span>장비대여</span></label>
                <input type="checkbox" id="" name=""  value="#수영장"><label for=""><span>수영장</span></label>
                <input type="checkbox" id="" name=""  value="#반려동물"><label for=""><span>반려동물</span></label>
                <input type="checkbox" id="" name=""  value="#낚시캠핑"><label for=""><span>낚시캠핑</span></label>
                <input type="checkbox" id="" name=""  value="#체험캠핑"><label for=""><span>체험캠핑</span></label>
                <input type="checkbox" id="" name=""  value="#카라반가능"><label for=""><span>카라반가능</span></label>
                <input type="checkbox" id="" name=""  value="#트레일러가능"><label for=""><span>트레일러가능</span></label>
            </div>
            <div id="location_type" class="category">
                <input type="checkbox" id="" name=""  value="#해변"><label for=""><span>해변</span></label>
                <input type="checkbox" id="" name=""  value="#섬"><label for=""><span>섬</span></label>
                <input type="checkbox" id="" name=""  value="#산"><label for=""><span>산</span></label>
                <input type="checkbox" id="" name=""  value="#숲"><label for=""><span>숲</span></label>
                <input type="checkbox" id="" name=""  value="#계곡"><label for=""><span>계곡</span></label>
                <input type="checkbox" id="" name=""  value="#강"><label for=""><span>강</span></label>
                <input type="checkbox" id="" name=""  value="#호수"><label for=""><span>호수</span></label>
                <input type="checkbox" id="" name=""  value="#도심"><label for=""><span>도심</span></label>
            </div>
            <div id="facilities" class="category">
                <input type="checkbox" id="" name=""  value="#와이파이"><label for=""><span>와이파이</span></label>
                <input type="checkbox" id="" name=""  value="#온수"><label for=""><span>온수</span></label>
                <input type="checkbox" id="" name=""  value="#샤워시설"><label for=""><span>샤워시설</span></label>
                <input type="checkbox" id="" name=""  value="#마트편의점"><label for=""><span>마트편의점</span></label>
                <input type="checkbox" id="" name=""  value="#화장실"><label for=""><span>화장실</span></label>
                <input type="checkbox" id="" name=""  value="#전기"><label for=""><span>전기</span></label>
                <input type="checkbox" id="" name=""  value="#반려동물동반"><label for=""><span>반려동물동반</span></label>
            </div>
            <button>회원가입</button>
            <button>취소</button>
    </div><!--container-->
</body>