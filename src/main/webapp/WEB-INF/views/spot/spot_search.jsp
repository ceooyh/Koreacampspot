<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캠핑장 찾기 페이지</title>
<style>
    @font-face {
        font-family: '보통노토';
        src: url(Font/NotoSansCJKkr-hinted/NotoSansCJKkr-Medium.otf);
    }
    @font-face {
        font-family: '얇은노토';
        src: url(Font/NotoSansCJKkr-hinted/NotoSansCJKkr-Light.otf);
    }
    @font-face {
        font-family: '얇은노토2';
        src: url(Font/NotoSansCJKkr-hinted/NotoSansCJKkr-DemiLight.otf);
    }
    @font-face {
        font-family: '굵은노토';
        src: url(Font/NotoSansCJKkr-hinted/NotoSansCJKkr-Black.otf);
    }
    @font-face {
        font-family: '검은고딕';
        src: url(Font/검은고딕/OFL.txt);
    }
    @font-face {
        font-family: '보통로보';
        src: url(Font/Roboto/Roboto-Medium.ttf);
    }
    @font-face {
        font-family: '두꺼운로보';
        src: url(Font/Roboto/Roboto-Bold.ttf);
    }
    *{
        padding: 0;
        margin: 0;
    }
    #detail_condition{
        background-image: url(img/searchimg.png);
        height: 421px;
        box-sizing: border-box;
        padding-top: 3px;
    }
    #detail_condition_headline{
        display: inline-block;
        margin-bottom: 20px;
        width: 100%;
        padding-bottom: 10px;
        border-bottom: 1px solid rgb(216, 216, 216);
        color: rgb(44, 42, 41);
        font-family: '보통노토';
    }
    #detail_condition_input{
        width: 900px;
        margin: 60px auto;
        background-color: white;
        border: 1px solid rgb(44, 42, 41);
        padding: 30px;
        box-sizing: border-box;
    }
    #collector_keyword_head{
        margin: 10px 0;
    }
    #collector_keyword_select{

    }
    /*셀렉트 화살표 없애기*/
    #collector_keyword_select select{
        -webkit-appearance:none; 
        -moz-appearance:none;  
        appearance:none
    }
    /*테마선택창 이름*/
    .keyword_class{
        display: inline-block;
        width: 200px;
        font-family: '보통노토';
        color: rgb(44, 42, 41);
    }
    /*테마선택 셀렉트*/
    .keyword_select_class{
        color: rgb(44, 42, 41);
        width: 200px;
        font-family: '얇은노토2';
        padding: 4px;
    }
    #keyword_search_head{
        margin-top: 50px;
    }
    #keword_search_span{
        display: inline-block;
        width: 200px;
        font-family: '보통노토';
        color: rgb(44, 42, 41);
        margin-bottom: 10px;
    }
    #keyword_search_input{
        width: 600px;
        color: rgb(44, 42, 41);
        font-family: '얇은노토2';
        padding: 4px 4px 4px 10px;
    }
    #keyword_search_input::placeholder{
        color: rgb(216, 216, 216);
    }
    .search_btn{
        width: 100px;
        background-color: rgb(17, 17, 16);
        color: rgb(240, 240, 240);
        height: 30px;
        border: none;
    }
    #search_btn2{
        background-color: rgb(248, 185, 112);
    }
    .search_btn:hover{
        cursor: pointer;
    }
    #headrow{
        height: 20px;
        width: 100%;
        background-color: rgba(230, 230, 230, 0.5);
        margin-bottom: 40px;
    }
</style>
</head>
<body>
    <section>
        <div>

        </div>
       	<form action="spotSearch.do">
	        <div id="detail_condition"><!-- 선택창 시작 -->
	            <div id="detail_condition_input"><!-- 상세검색창 시작 -->
	                <span id="detail_condition_headline">상세검색창</span>
	                <!--제목-->
	                <div id="collector_keyword_head">
	                    <span class="keyword_class">지역</span>
	                    <span class="keyword_class">입지구분</span>
	                    <span class="keyword_class">부가시설</span>
	                    <span class="keyword_class">테마</span>
	                </div><!--제목마지막-->
	                <!--테마선택창-->
	                <div id="collector_keyword_select">
	                    <select name="address1" id="address1" class="keyword_select_class">
	                        <option value="all" selected>전체</option>
	                        <option value="서울시" >서울시</option>
	                        <option value="부산시" >부산시</option>
	                        <option value="대구시" >대구시</option>
	                        <option value="인천시" >인천시</option>
	                        <option value="광주시" >광주시</option>
	                        <option value="대전시" >대전시</option>
	                        <option value="울산시" >울산시</option>
	                        <option value="세종시" >세종시</option>
	                        <option value="경기도" >경기도</option>
	                        <option value="강원도" >강원도</option>
	                        <option value="충청북도" >충청북도</option>
	                        <option value="충청남도" >충청남도</option>
	                        <option value="전라북도" >전라북도</option>
	                        <option value="전라남도" >전라남도</option>
	                        <option value="경상북도" >경상북도</option>
	                        <option value="경상남도" >경상남도</option>
	                        <option value="제주도" >제주도</option>
	                    </select>
	                    <select name="" id="" class="keyword_select_class">
	                        <option value="all" selected>전체</option>
	                        <option value="beach">해변</option>
	                        <option value="island">섬</option>
	                        <option value="mountain">산</option>
	                        <option value="forest">숲</option>
	                        <option value="valley">계곡</option>
	                        <option value="river">강</option>
	                        <option value="lake">호수</option>
	                        <option value="city">도심</option>
	                    </select>
	                    <select name="" id="" class="keyword_select_class">
	                        <option value="all" selected>전체</option>
	                        <option value="wifi">와이파이</option>
	                        <option value="hot_water">온수</option>
	                        <option value="shower">샤워시설</option>
	                        <option value="mart">마트편의점</option>
	                        <option value="toeilet">화장실</option>
	                        <option value="electric">전기</option>
	                        <option value="pet_open">반려동물동반</option>
	                    </select>
	                    <select name="" id="" class="keyword_select_class">
	                        <option value="all" selected>전체</option>
	                        <option value="all">텐트대여</option>
	                        <option value="all">장비대여</option>
	                        <option value="all">수영장</option>
	                        <option value="all">반려동물</option>
	                        <option value="all">낚시캠핑</option>
	                        <option value="all">체험캠핑</option>
	                        <option value="all">카라반가능</option>
	                        <option value="all">트레일러가능</option>
	                    </select>
	                </div><!--테마선택창 마지막-->
	                <div id="keyword_search_head"><!-- 키워드 선택창 시작 -->
	                    <span id="keword_search_span">키워드검색</span><br>
	                    <input id="keyword_search_input" type="text" placeholder="검색어를 입력하세요">
	                    <button class="search_btn" id="detail_search_btn" type="button">상세검색 +</button>
	                    <button class="search_btn" id="search_btn2" type="button">검색</button>
	                </div><!-- 키워드 선택창 마지막 -->
	            </div><!-- 상세검색창 마지막 -->
	        </div><!-- 선택창 마지막 -->
        </form>
        
        
        <div id="headrow"></div>
        
        <div id="detail_camping_info">
			<c:forEach var="dto" items="${requestScope.list}">
		            <div>
		                <span>리뷰수 ${dto.review_count}</span><span>별점 ${dto.star}</span>
		                <p id="campingplace_name"><a href="spotDetailView.do" class="campingplace_atag">${dto.sname}</a></p>
		                <p id="campingplace_address">주소 : ${dto.address}</p><p id="campingplace_tel">전화번호 : ${dto.tel}</p>
		            </div>
		            <div>
		            	<span>부가시설</span>
		            	<c:choose>
		            		<c:when test="${dto.AUTOCAMPING == 1}">
		            			<span>#오토캠핑</span>
		            		</c:when>
		            		<c:when test="${dto.GLAMPING == 1}">
		            			<span>#글램핑</span>
		            		</c:when>
		            		<c:when test="${dto.CARAVAN == 1}">
		            			<span>#카라반</span>
		            		</c:when>
		            		<c:when test="${dto.RENT_TENT == 1}">
		            			<span>#텐트대여</span>
		            		</c:when>
		            		<c:when test="${dto.RENT_EQUIPMENT == 1}">
		            			<span>#장비대여가능</span>
		            		</c:when>
		            		<c:when test="${dto.POOL == 1}">
		            			<span>#수영장</span>
		            		</c:when>
		            		<c:when test="${dto.PET == 1}">
		            			<span>#반려동물이용시설</span>
		            		</c:when>
		            		<c:when test="${dto.FISHING == 1}">
		            			<span>#낚시</span>
		            		</c:when>
		            		<c:when test="${dto.EXPERIENCE == 1}">
		            			<span>#체험</span>
		            		</c:when>
		            		<c:when test="${dto.CARAVAN_OPEN == 1}">
		            			<span>#카라반가능</span>
		            		</c:when>
		            		<c:when test="${dto.TRAILER_OPEN == 1}">
		            			<span>#트레일러가능</span>
		            		</c:when>
		            		<c:when test="${dto.BEACH == 1}">
		            			<span>#해변</span>
		            		</c:when>
		            		<c:when test="${dto.ISLAND == 1}">
		            			<span>#섬</span>
		            		</c:when>
		            		<c:when test="${dto.MOUNTAIN == 1}">
		            			<span>#산</span>
		            		</c:when>
		            		<c:when test="${dto.FOREST == 1}">
		            			<span>#숲</span>
		            		</c:when>
		            		<c:when test="${dto.VALLEY == 1}">
		            			<span>#계곡</span>
		            		</c:when>
		            		<c:when test="${dto.RIVER == 1}">
		            			<span>#강</span>
		            		</c:when>
		            		<c:when test="${dto.LAKE == 1}">
		            			<span>#호수</span>
		            		</c:when>
		            		<c:when test="${dto.CITY == 1}">
		            			<span>#도심</span>
		            		</c:when>
		            		<c:when test="${dto.WIFI == 1}">
		            			<span>#와이파이</span>
		            		</c:when>
		            		<c:when test="${dto.HOT_WATER == 1}">
		            			<span>#온수</span>
		            		</c:when>
		            		<c:when test="${dto.SHOWER == 1}">
		            			<span>#샤워시설</span>
		            		</c:when>
		            		<c:when test="${dto.MART == 1}">
		            			<span>#마트이용점</span>
		            		</c:when>
		            		<c:when test="${dto.TOILET == 1}">
		            			<span>#화장실</span>
		            		</c:when>
		            		<c:when test="${dto.ELECTRIC == 1}">
		            			<span>#전기</span>
		            		</c:when>
		            		<c:when test="${dto.PET_OPEN == 1}">
		            			<span>#반려동물가능</span>
		            		</c:when>
		            	</c:choose>
		            </div>
			</c:forEach>
        </div>

    </section>
</body>
</html>