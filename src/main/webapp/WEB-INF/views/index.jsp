<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<script>
$(document).ready(function(){
	var backitems = $(".backitem"),
		count = backitems.length,
		currentIndex = 0;
	backitems.eq(currentIndex).fadeIn();
    setInterval(next,6000);
    slide(0);
    slide(1);
    slide(2);
    function next(){
        var nextIndex = (currentIndex+1)%count;
        backitems.eq(currentIndex).fadeOut();
        backitems.eq(nextIndex).fadeIn();
        currentIndex = nextIndex;
    }
    function slide(x){
        var slideCount = $(".slides"+x).children().length;
            currentIdx = 0,
            slideWidth = 1000,
            sideHeight = 600,

        $(".slides"+x).css("width",slideWidth*slideCount+"px");

    function moveSlide(y){
            $(".slides"+x).css("left",-y*1000+"px");
            currentIdx = y;
    }
     $(".next"+x).click(function(){
            if(currentIdx < slideCount-1){
                moveSlide(currentIdx + 1);
            }
            else{
                moveSlide(0);
                currentIdx=0;
            }
        })
        $(".prev"+x).click(function(){
            if(currentIdx > 0){
                moveSlide(currentIdx - 1);
            }
            else{
                moveSlide(slideCount-1);
            }
        })
    }
})

</script>
<style>
	*{
		margin: 0;
		padding: 0;
        text-align: center;
	}
	html, body{
        height : 100%;
    }
	.background{
		width: 100%;
		height: 100%;
		min-width:1180px;
        overflow:hidden;
	}
	.backitem{
		width: 100%;
		height: 100%;
		background-size: cover;
		overflow:hidden;
		background-repeat:no-repeat;
		background-position:center bottom;
        display:none;
	}
	.one{
		background-image: url("1.jpg");
	}
	.two{
		background-image: url("2.jpg");
	}
	.three{
		background-image: url("3.jpg");
	}
    table{
        border-collapse: collapse;
    }
    .slider{
        width: 1180px;
        height: 600px;
        margin:0 auto;
    }
    .recommend_title{
        padding: 50px;
    }
    .camp_info{
        width: 100%;
        height: 100%;
        display: inline-block;
    }
    .camp_info tr td{
        padding: 10px;
        box-sizing: border-box;
    }
    .prev0, .next0, .prev1, .next1, .prev2, .next2{
        font-size: 30px;
        cursor: pointer;
    }
    .slider tr td:first-child, .slider tr td:last-child{
        width:90px;
        text-align: center;
    }
    .slide_wrapper{
        position: relative;
        width :1000px;
        height : 600px;
        overflow: hidden;
        }
    .slides0, .slides1, .slides2{
        position: absolute;
        left:0; 
        top:0;
        list-style: none;
        transition: left 0.5s ease-out;
    }
    .slides0 li, .slides1 li, .slides2 li{
        float:left;
    }
    .left tr td:first-child{
        width:200px;
        text-align: left;
    }
    .left tr td:last-child{
        width:800px;
    }
    .right tr td:first-child{
        width:800px;
    }
    .right tr td:last-child{
        width:200px;
        text-align: right;
    }
    .left .camp_name{
        text-align: left;
    }
    .right .camp_name{
        text-align: right;
    }
    .camp_info img{
        width: 780px;
        height: 580px;
    }
</style>
</head>
<body>
    <jsp:include page="template/header.jsp" flush="false"></jsp:include>
	<div class="background">
		<div class="backitem one"></div>
		<div class="backitem two"></div>
		<div class="backitem three"></div>
    </div>
    <h1 class="recommend_title">별점순 추천</h1>
    <table class="slider">
        <tr>
            <td><span class="next0"><</span></td>
            <td>
                <div class="slide_wrapper">
                    <ul class="slides0">
                       <li>
                            <table class="camp_info left">
                               <tr>
                                   <td>
                                       <h3 class="camp_name">그렇고 그런 캠프장</h3><br>
                                       <span class="camp_content">그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그런 캠프장</span><br>
                                       <span class="camp_star">★★★★☆ 4.2</span>
                                   </td>
                                   <td>
                                       <img src="../../img/mainpage/1.jpg">
                                   </td>
                                </tr>
                            </table>
                        </li> 
                        <li>
                            <table class="camp_info left">
                                <tr>
                                    <td>
                                        <h3 class="camp_name">그렇고 그런 캠프장</h3><br>
                                        <span class="camp_content">그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그런 캠프장</span><br>
                                        <span class="camp_star">★★★★☆ 4.2</span>
                                    </td>
                                    <td>
                                        <img src="../../img/mainpage/1.jpg">
                                    </td>
                                 </tr>
                            </table>
                        </li> 
                        <li>
                            <table class="camp_info left">
                                <tr>
                                    <td>
                                        <h3 class="camp_name">그렇고 그런 캠프장</h3><br>
                                        <span class="camp_content">그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그런 캠프장</span><br>
                                        <span class="camp_star">★★★★☆ 4.2</span>
                                    </td>
                                    <td>
                                        <img src="../../img/mainpage/1.jpg">
                                    </td>
                                 </tr>
                            </table>
                        </li> 
                    </ul>
                </div>
            </td>
            <td><span class="prev0">></span></td>
        </tr>
    </table>
    <h1 class="recommend_title">찜별 추천</h1>
    <table class="slider">
        <tr>
            <td><span class="next1"><</span></td>
            <td>
                <div class="slide_wrapper">
                    <ul class="slides1">
                       <li>
                            <table class="camp_info right">
                               <tr>
                                   <td>
                                       <img src="../../img/mainpage/1.jpg">
                                   </td>
                                   <td>
                                       <h3 class="camp_name">그렇고 그런 캠프장</h3><br>
                                       <span class="camp_content">그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그런 캠프장</span><br>
                                       <span class="camp_star">★★★★☆ 4.2</span>
                                   </td>
                                </tr>
                            </table>
                        </li> 
                        <li>
                            <table class="camp_info right">
                                <tr>
                                    <td>
                                        <img src="../../img/mainpage/1.jpg">
                                    </td>
                                    <td>
                                        <h3 class="camp_name">그렇고 그런 캠프장</h3><br>
                                        <span class="camp_content">그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그런 캠프장</span><br>
                                        <span class="camp_star">★★★★☆ 4.2</span>
                                    </td>
                                 </tr>
                            </table>
                        </li> 
                        <li>
                            <table class="camp_info right">
                                <tr>
                                    <td>
                                        <img src="../../img/mainpage/1.jpg">
                                    </td>
                                    <td>
                                        <h3 class="camp_name">그렇고 그런 캠프장</h3><br>
                                        <span class="camp_content">그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그런 캠프장</span><br>
                                        <span class="camp_star">★★★★☆ 4.2</span>
                                    </td>
                                 </tr>
                            </table>
                        </li> 
                    </ul>
                </div>
            </td>
            <td><span class="prev1">></span></td>
        </tr>
    </table>
    <h1 class="recommend_title">날씨별 추천</h1>
    <table class="slider">
        <tr>
            <td><span class="next2"><</span></td>
            <td>
                <div class="slide_wrapper">
                    <ul class="slides2">
                       <li>
                            <table class="camp_info left">
                               <tr>
                                   <td>
                                       <h3 class="camp_name">그렇고 그런 캠프장</h3><br>
                                       <span class="camp_content">그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그런 캠프장</span><br>
                                       <span class="camp_star">★★★★☆ 4.2</span>
                                   </td>
                                   <td>
                                       <img src="../../img/mainpage/1.jpg">
                                   </td>
                                </tr>
                            </table>
                        </li> 
                        <li>
                            <table class="camp_info left">
                                <tr>
                                    <td>
                                        <h3 class="camp_name">그렇고 그런 캠프장</h3><br>
                                        <span class="camp_content">그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그런 캠프장</span><br>
                                        <span class="camp_star">★★★★☆ 4.2</span>
                                    </td>
                                    <td>
                                        <img src="../../img/mainpage/1.jpg">
                                    </td>
                                 </tr>
                            </table>
                        </li> 
                        <li>
                            <table class="camp_info left">
                                <tr>
                                    <td>
                                        <h3 class="camp_name">그렇고 그런 캠프장</h3><br>
                                        <span class="camp_content">그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그렇고 그런 캠프장</span><br>
                                        <span class="camp_star">★★★★☆ 4.2</span>
                                    </td>
                                    <td>
                                        <img src="../../img/mainpage/1.jpg">
                                    </td>
                                 </tr>
                            </table>
                        </li> 
                    </ul>
                </div>
            </td>
            <td><span class="prev2">></span></td>
        </tr>
    </table>
    <jsp:include page="template/footer.jsp" flush="false"></jsp:include>
</html>