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
        src: url(../../../Font/NotoSansCJKkr-hinted/NotoSansCJKkr-Medium.otf);
    }
    @font-face {
        font-family: '얇은노토';
        src: url(../../../Font/NotoSansCJKkr-hinted/NotoSansCJKkr-Light.otf);
    }
    @font-face {
        font-family: '얇은노토2';
        src: url(../../../Font/NotoSansCJKkr-hinted/NotoSansCJKkr-DemiLight.otf);
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
    #detail_condition{
        background-image: url(../../../img/spotpage/searchimg.png);
        height: 421px;
        box-sizing: border-box;
        padding-top: 3px;
    }
    #detail_condition_headline{
        display: inline-block;
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
        <form action="spotCategorySearch.do">
            <div id="detail_camping_seach_div"><!--캠핑 상세검색창 시작-->

                <div id="detail_camping_category_campingtype"><!--카테고리 지역입력 시작-->
                    <input type="checkbox" value="서울시" name="address1"><label for=""><span>서울시</span></label>
                    <input type="checkbox" value="부산시" name="address1"><label for=""><span>부산시</span></label>
                    <input type="checkbox" value="대구시" name="address1"><label for=""><span>대구시</span></label>
                    <input type="checkbox" value="인천시" name="address1"><label for=""><span>인천시</span></label>
                    <input type="checkbox" value="광주시" name="address1"><label for=""><span>광주시</span></label>
                    <input type="checkbox" value="대전시" name="address1"><label for=""><span>대전시</span></label>
                    <input type="checkbox" value="울산시" name="address1"><label for=""><span>울산시</span></label>
                    <input type="checkbox" value="세종시" name="address1"><label for=""><span>세종시</span></label>
                    <input type="checkbox" value="경기도" name="address1"><label for=""><span>경기도</span></label>
                    <input type="checkbox" value="강원도" name="address1"><label for=""><span>강원도</span></label>
                    <input type="checkbox" value="충청북도" name="address1"><label for=""><span>충청북도</span></label>
                    <input type="checkbox" value="충청남도" name="address1"><label for=""><span>충청남도</span></label>
                    <input type="checkbox" value="전라남도" name="address1"><label for=""><span>전라남도</span></label>
                    <input type="checkbox" value="전라북도" name="address1"><label for=""><span>전라북도</span></label>
                    <input type="checkbox" value="경상남도" name="address1"><label for=""><span>경상남도</span></label>
                    <input type="checkbox" value="경상북도" name="address1"><label for=""><span>경상북도</span></label>
                    <input type="checkbox" value="제주도" name="address1"><label for=""><span>제주도</span></label>

                </div><!--카테고리 지역입력 마지막-->

                <div id="detail_camping_category_campingtype"><!--카테고리 캠핑유형 시작-->
                    <input type="checkbox" value="1" name="autocamping"><label for=""><span>오토캠핑</span></label>
                    <input type="checkbox" value="1" name="glamping"><label for=""><span>글램핑</span></label>
                    <input type="checkbox" value="1" name="caravan"><label for=""><span>카라반</span></label>
                </div><!--카테고리 캠핑유형 마지막-->
                
                <div id="detail_camping_category_campingtype"><!--카테고리 입지구분 시작-->
                    <input type="checkbox" value="1" name="beach"><label for=""><span>해변</span></label>
                    <input type="checkbox" value="1" name="island"><label for=""><span>섬</span></label>
                    <input type="checkbox" value="1" name="mountain"><label for=""><span>산</span></label>
                    <input type="checkbox" value="1" name="forest"><label for=""><span>숲</span></label>
                    <input type="checkbox" value="1" name="valley"><label for=""><span>계곡</span></label>
                    <input type="checkbox" value="1" name="river"><label for=""><span>강</span></label>
                    <input type="checkbox" value="1" name="lake"><label for=""><span>호수</span></label>
                    <input type="checkbox" value="1" name="city"><label for=""><span>도심</span></label>
                </div><!--카테고리 입지구분 마지막-->
                
                <div id="detail_camping_category_campingtype"><!--카테고리 부가시설 시작-->
                    <input type="checkbox" value="1" name="wifi"><label for=""><span>와이파이</span></label>
                    <input type="checkbox" value="1" name="hot_water"><label for=""><span>온수</span></label>
                    <input type="checkbox" value="1" name="shower"><label for=""><span>샤워시설</span></label>
                    <input type="checkbox" value="1" name="mart"><label for=""><span>마트편의점</span></label>
                    <input type="checkbox" value="1" name="toilet"><label for=""><span>화장실</span></label>
                    <input type="checkbox" value="1" name="electric"><label for=""><span>전기</span></label>
                    <input type="checkbox" value="1" name="pet_open"><label for=""><span>반려동물가능</span></label>
                    
                </div><!--카테고리 부가시설 마지막-->
                
                <div id="detail_camping_category_campingtype"><!--카테고리 캠핑테마 시작-->
                    <input type="checkbox" value="1" name="rent_tent"><label for=""><span>텐트대여</span></label>
                    <input type="checkbox" value="1" name="rent_equipment"><label for=""><span>장비대여</span></label>
                    <input type="checkbox" value="1" name="pool"><label for=""><span>수영장</span></label>
                    <input type="checkbox" value="1" name="pet"><label for=""><span>반려동물</span></label>
                    <input type="checkbox" value="1" name="fishing"><label for=""><span>낚시캠핑</span></label>
                    <input type="checkbox" value="1" name="experience"><label for=""><span>체험캠핑</span></label>
                    <input type="checkbox" value="1" name="caravan_open"><label for=""><span>카라반가능</span></label>
                    <input type="checkbox" value="1" name="trailer_open"><label for=""><span>트레일러가능</span></label>

                </div><!--카테고리 캠핑테마 마지막-->
                <button type="submit">검색</button>
            </div><!--캠핑 상세검색창 마지막-->
        </form> 


       	<form action="spotSearch.do">
	        <div id="detail_condition"><!-- 선택창 시작 -->
	            <div id="detail_condition_input"><!-- 상세검색창 시작 -->
	                <span id="detail_condition_headline">키워드검색창</span>
	                <div id="keyword_search_head"><!-- 키워드 선택창 시작 -->
	                    <input id="keyword_search_input" type="text" placeholder="검색어를 입력하세요">
	                    <button class="search_btn" id="search_btn2" type="button">검색</button>
	                </div><!-- 키워드 선택창 마지막 -->
	            </div><!-- 상세검색창 마지막 -->
	        </div><!-- 선택창 마지막 -->
        </form>
        
        
        <div id="headrow"></div>
        
        <div id="detail_camping_info">
			<c:forEach var="dto" items="${requestScope.list}">
		            <div>
		                <span>리뷰수 ${dto.}</span><span>별점 ${dto.star}</span>
		                <p id="campingplace_name"><a href="spotDetailView.do" class="campingplace_atag">${dto.sname}</a></p>
		                <p id="campingplace_address">주소 : ${dto.address}</p><p id="campingplace_tel">전화번호 : ${dto.tel}</p>
		            </div>
		            <div>
		            	<span>부가시설</span>
		            	<c:choose>
		            		<c:when test="${dto.autocamping == 1}">
		            			<span>#오토캠핑</span>
		            		</c:when>
		            		<c:when test="${dto.glamping == 1}">
		            			<span>#글램핑</span>
		            		</c:when>
		            		<c:when test="${dto.caravan == 1}">
		            			<span>#카라반</span>
		            		</c:when>
		            		<c:when test="${dto.rent_tent == 1}">
		            			<span>#텐트대여</span>
		            		</c:when>
		            		<c:when test="${dto.rent_equipment == 1}">
		            			<span>#장비대여가능</span>
		            		</c:when>
		            		<c:when test="${dto.pool == 1}">
		            			<span>#수영장</span>
		            		</c:when>
		            		<c:when test="${dto.pet == 1}">
		            			<span>#반려동물이용시설</span>
		            		</c:when>
		            		<c:when test="${dto.fishing == 1}">
		            			<span>#낚시</span>
		            		</c:when>
		            		<c:when test="${dto.experience == 1}">
		            			<span>#체험</span>
		            		</c:when>
		            		<c:when test="${dto.caravan_open == 1}">
		            			<span>#카라반가능</span>
		            		</c:when>
		            		<c:when test="${dto.trailer_open == 1}">
		            			<span>#트레일러가능</span>
		            		</c:when>
		            		<c:when test="${dto.beach == 1}">
		            			<span>#해변</span>
		            		</c:when>
		            		<c:when test="${dto.island == 1}">
		            			<span>#섬</span>
		            		</c:when>
		            		<c:when test="${dto.mountain == 1}">
		            			<span>#산</span>
		            		</c:when>
		            		<c:when test="${dto.forest == 1}">
		            			<span>#숲</span>
		            		</c:when>
		            		<c:when test="${dto.valley == 1}">
		            			<span>#계곡</span>
		            		</c:when>
		            		<c:when test="${dto.river == 1}">
		            			<span>#강</span>
		            		</c:when>
		            		<c:when test="${dto.lake == 1}">
		            			<span>#호수</span>
		            		</c:when>
		            		<c:when test="${dto.city == 1}">
		            			<span>#도심</span>
		            		</c:when>
		            		<c:when test="${dto.wifi == 1}">
		            			<span>#와이파이</span>
		            		</c:when>
		            		<c:when test="${dto.hot_water == 1}">
		            			<span>#온수</span>
		            		</c:when>
		            		<c:when test="${dto.shower == 1}">
		            			<span>#샤워시설</span>
		            		</c:when>
		            		<c:when test="${dto.mart == 1}">
		            			<span>#마트이용점</span>
		            		</c:when>
		            		<c:when test="${dto.toilet == 1}">
		            			<span>#화장실</span>
		            		</c:when>
		            		<c:when test="${dto.electric == 1}">
		            			<span>#전기</span>
		            		</c:when>
		            		<c:when test="${dto.pet_open == 1}">
		            			<span>#반려동물가능</span>
		            		</c:when>
		            	</c:choose>
		            </div>
			</c:forEach>
        </div>

    </section>
</body>
</html>