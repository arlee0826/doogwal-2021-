<%@page import="com.doogwal.coffee.vo.Crew"%>
<%@page import="java.util.List"%>
<%@page import="com.doogwal.coffee.dao.CrewsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%
	List<Crew> crews = CrewsDAO.selectList();
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색결과</title>
   <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/all.min.css" />
    <link rel="stylesheet" href="css/default.css" />
    <link rel="stylesheet" href="css/searchPage.css" />
</head>
<body>
<!-- 검색결과 페이지 -->
<div id="header"><!--header start -->
    <div class="inner">
        <div class="header_logo_search"><!--header_left start-->
            <img src="img/logo.png" alt="saemo logo" title="saemo logo" />
            <form class="header_search"><!--header_search-->
                <fieldset><!--fieldset-->
                    <legend class="screen_out">검색</legend>
                    <input placeholder="검색어를 입력하세요." maxlength="10" />
                    <button type="submit"><i class="fas fa-search"></i></button>
                </fieldset><!--//header_search-->
            </form><!--//#form -->
        </div><!--//header_left end-->
        <div class="header_crew_list_meeting_status"><!--header_right start-->
            <div class="header_crew_list"><!--header_crew_list-->
                <ul>
                    <li><a href="/"><img class="header_crew_list_on" src="img/category1.jpg" width="40" height="40" /></a></li>
                    <li><a href="/"><img src="img/category2.jpg" width="40" height="40" /></a></li>
                    <li><a href="/"><img src="img/category3.jpg" width="40" height="40" /></a></li>
                </ul>
            </div><!--//header_crew_list -->
            <div class="header_meeting_home"><a href=""><i class="far fa-handshake"></i></a></div>
            <div class="header_status"><a href=""><i class="fas fa-user-circle"></i></a></div>
            <div class="header_status_dropbox">
                <h3 class="screen_out">내메뉴</h3>
                <ul>
                    <li><a href="">마이페이지</a></li>
                    <li><a href="">로그아웃</a></li>
                </ul>
            </div>
        </div><!--//header_right end-->
    </div><!--// inner end-->
</div><!--//header end-->

<div class="hero_img_box"><!-- hero_img start-->
    <div class="hero_title"><!--hero_title start -->
        <h1>2021년은 SAEMO와 함께</h1>
    </div><!--//hero_title end-->
</div><!--// hero_img_box end -->

<div class="search_box"><!-- search_box start -->
    <input class="search_box_input" type="text">
    <a href="" class="search_box_btn"><i class="fas fa-search"></i></a>
</div><!--// search_box end-->

<div id="container"><!-- container start-->
    <div id="content"><!-- content start-->
        <div class="meeting_filters"><!-- meeting_filters start-->
            <ul class="search_specifics">
                <li class="category"><button class="category_a">분류</button>
                    <div class="category_box"><!-- category_box start-->
                        <a href="/searchPage.jsp?no=?age=<%= %>?num=<%= %>" class="game">게임</a>
                        <a href="/searchPage.jsp?no=?age=<%= %>?num=<%= %>" class="art">문화/예술</a>
                        <a href="/searchPage.jsp?no=?age=<%= %>?num=<%= %>" class="pet">반려동물</a>
                        <a href="/searchPage.jsp?no=4?age=<%= %>?num=<%= %>" class="volunteer">봉사활동</a>
                        <a href="/searchPage.jsp?no=5?age=<%= %>?num=<%= %>" class="social_gathering">사교모임</a>
                        <a href="/searchPage.jsp?no=6?age=<%= %>?num=<%= %>" class="study">스터디</a>
                        <a href="/searchPage.jsp?no=7?age=<%= %>?num=<%= %>" class="sports">스포츠/레저</a>
                        <a href="/searchPage.jsp?no=8?age=<%= %>?num=<%= %>" class="music">음악/악기</a>
                        <a href="/searchPage.jsp?no=2?age=<%= %>?num=<%= %>" class="outdoor">아웃도어</a>
                    </div><!-- category_box end-->
                </li>

                <li class="ages"><button class="ages_a">연령대</button>
                    <div class="age_box"><!-- age_box start -->
                        <a href="/searchPage.jsp?no=<%= %>?age=2?num=<%= %>" class="twenties">20대</a>
                        <a href="/searchPage.jsp?no=<%= %>?age=3?num=<%= %>" class="thirties">30대</a>
                        <a href="/searchPage.jsp?no=<%= %>?age=4?num=<%= %>" class="forties">40대</a>
                        <a href="/searchPage.jsp?no=<%= %>?age=5?num=<%= %>" class="fifties">50대</a>
                    </div><!--age_box end -->
                </li>
                <li class="number_of_crew"><button class="number_of_crew_a">크루원 수</button>
                    <div class="number_of_crew_box"><!-- number_of_crew_box start-->
                        <a href="/searchPage.jsp?no=<%= %>?age=<%= %>?num=1" class="number_of_crew_descending">많은순</a>
                        <a href="/searchPage.jsp?no=<%= %>?age=<%= %>?num=2" class="number_of_crew_ascending">적은순</a>
                    </div><!-- number_of_crew_box end-->
                </li>
            </ul>
        </div><!--//meeting_filters end-->

        <div class="crews_recruiting_new_members_box"><!-- crews_recruiting_new_members_box start-->
            <div class="crews_recruiting_new_members_box_top"><!-- crews_recruiting_new_members_box_top start-->
                <h2>모집 중인 크루</h2>
                <a href=""><h3 class="crew_all">더보기</h3></a>
            </div><!--// crews_recruiting_new_members_box_top end-->
            <div>
                <ul class="crews_recruiting_new_members_list">
                    <% for ( Crew crew : crews ) { %>
                    <li class="crews_recruiting_new_members_item"><a href=""><img src="img/<%=crew.getCoverImg() %>" width="247.5" height="180"/><p><%=crew.getName()%></p><p><%=crew.getIntro() %></p></a></li>
                    <% } %>
                </ul>
            </div>
        </div><!--// crews_recruiting_new_members_box end -->
    </div><!--// content end-->
</div><!--// container end-->

<div id="footer"><!--//footer start-->
    <div class="inner"><!--//inner start-->
        <ul class="footer_container_help"><!--// footer_container_left start-->
            <li><a href="">이용약관</a></li>
            <li><a href="">FAQ</a></li>
            <li><a href="">회사소개</a></li>
        </ul><!--// footer_container_left end-->
        <div class="footer_container_company_name clear_fix">
            <span> &copy; 두괄</span>
        </div><!--// footer_container_start end-->
        <dl>
            <dt>
                <address class="footer_address">주소 : 서울특별시 관악구 봉천로 72-6 7층</address>
            </dt>
            <dt>
                <div class="footer_phone_num">전화번호 : 02-123-1234</div>
            </dt>
        </dl>
    </div><!--//footer_container end-->
</div><!--//footer end-->
<script src="js/jquery.js"></script>
<script>
    $(window).scroll(function (evt) {
        let y = $(this).scrollTop();
        if(y>400){
            $(".header_search").css({
                "display":"block"
            });
            $("#header").css({
                "position":"fixed"
            });
            $(".search_box").css({
                "display":"none"
            });
        }else{
            $(".header_search").css({
                "display":"none"
            });
            $("#header").css({
                "position":"relative"
            });
            $(".search_box").css({
                "display":"block"
            });
        }
    });

    $(".game").click(function (e) {
    
        $(".category_a").text("게임").css("color","#3D41B3").css("font-weight","900");
        $(".category_box").hide();
    });
    $(".category").mouseenter(function () {
        $(".category_box").show();
    });
    $(".art").click(function (e) {
        $(".category_a").text("문화/예술").css("color","#3D41B3").css("font-weight","900");
        $(".category_box").hide();
    });
    $(".category").mouseenter(function () {
        $(".category_box").show();
    });
    $(".pet").click(function (e) {
        $(".category_a").text("반려동물").css("color","#3D41B3").css("font-weight","900");
        $(".category_box").hide();
    });
    $(".category").mouseenter(function () {
        $(".category_box").show();
    });
    $(".volunteer").click(function (e) {
        $(".category_a").text("봉사활동").css("color","#3D41B3").css("font-weight","900");
        $(".category_box").hide();
    });
    $(".category").mouseenter(function () {
        $(".category_box").show();
    });
    $(".social_gathering").click(function (e) {
        $(".category_a").text("사교모임").css("color","#3D41B3").css("font-weight","900");
        $(".category_box").hide();
    });
    $(".category").mouseenter(function () {
        $(".category_box").show();
    });
    $(".study").click(function (e) {
        $(".category_a").text("스터디").css("color","#3D41B3").css("font-weight","900");
        $(".category_box").hide();
    });
    $(".category").mouseenter(function () {
        $(".category_box").show();
    });
    $(".sports").click(function (e) {
        $(".category_a").text("스포츠/레저").css("color","#3D41B3").css("font-weight","900");
        $(".category_box").hide();
    });
    $(".category").mouseenter(function () {
        $(".category_box").show();
    });
    $(".music").click(function (e) {
        $(".category_a").text("음악/악기").css("color","#3D41B3").css("font-weight","900");
        $(".category_box").hide();
    });
    $(".category").mouseenter(function () {
        $(".category_box").show();
    });
    $(".outdoor").click(function (e) {
        $(".category_a").text("아웃도어").css("color","#3D41B3").css("font-weight","900");
        $(".category_box").hide();
    });
    $(".category").mouseenter(function () {
        $(".category_box").show();
    });

    $(".twenties").click(function (e) {
        e.preventDefault();
       $(".ages_a").text("20대").css("color","#3D41B3").css("font-weight","900");
        $(".age_box").hide();
    });
    $(".ages").mouseenter(function (e) {
        $(".age_box").show();
    });
    $(".thirties").click(function (e) {
        e.preventDefault();
        $(".ages_a").text("30대").css("color","#3D41B3").css("font-weight","900");
        $(".age_box").hide();
    });
    $(".ages").mouseenter(function () {
        $(".age_box").show();
    });
    $(".forties").click(function (e) {
        e.preventDefault();
        $(".ages_a").text("40대").css("color","#3D41B3").css("font-weight","900");
        $(".age_box").hide();
    });
    $(".ages").mouseenter(function () {
        $(".age_box").show();
    });
    $(".fifties").click(function (e) {
        e.preventDefault();
        $(".ages_a").text("50대").css("color","#3D41B3").css("font-weight","900");
        $(".age_box").hide();
    });
    $(".ages").mouseenter(function () {
        $(".age_box").show();
    });

    $(".number_of_crew_ascending").click(function (e) {
        e.preventDefault();
        $(".number_of_crew_a").text("적은순").css("color","#3D41B3").css("font-weight","900");
        $(".number_of_crew_box").hide();
    });
    $(".number_of_crew").mouseenter(function () {
        $(".number_of_crew_box").show();
    })
    $(".number_of_crew_descending").click(function (e) {
        e.preventDefault();
        $(".number_of_crew_a").text("많은순").css("color","#3D41B3").css("font-weight","900");
        $(".number_of_crew_box").hide();
    });
    $(".number_of_crew").mouseenter(function () {
        $(".number_of_crew_box").show();
    });
</script>
</body>
</html>