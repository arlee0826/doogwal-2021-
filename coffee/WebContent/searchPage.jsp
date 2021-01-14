<%@page import="com.doogwal.coffee.vo.Crew"%>
<%@page import="java.util.List"%>
<%@page import="com.doogwal.coffee.dao.CrewsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색결과</title>
<%@ include file="/WEB-INF/template/link.jsp" %>
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
                <li class="category">
                	<button class="category_a">분류</button>
                    <ul class="category_box"><!-- category_box start-->
                        <li><a href="/searchPage.jsp?categoryNo=" class="game">게임</a></li>
                        <li><a href="/searchPage.jsp?categoryNo=" class="art">문화/예술</a></li>
                        <li><a href="/searchPage.jsp?categoryNo=" class="pet">반려동물</a></li>
                        <li><a href="/searchPage.jsp?categoryNo=" class="volunteer">봉사활동</a></li>
                        <li><a href="/searchPage.jsp?categoryNo=" class="social_gathering">사교모임</a></li>
                        <li><a href="/searchPage.jsp?categoryNo=" class="study">스터디</a></li>
                        <li><a href="/searchPage.jsp?categoryNo=" class="sports">스포츠/레저</a></li>
                        <li><a href="/searchPage.jsp?categoryNo=" class="music">음악/악기</a></li>
                        <li><a href="/searchPage.jsp?categoryNo=" class="outdoor">아웃도어</a></li>
                    </ul><!-- category_box end-->
                </li>

                <li class="ages"><button class="ages_a">연령대</button>
                    <ul class="age_box"><!-- age_box start -->
                        <li><a href="/searchPage.jsp?age=" class="twenties">20대</a></li>
                        <li><a href="/searchPage.jsp?age=" class="thirties">30대</a></li>
                        <li><a href="/searchPage.jsp?age=" class="forties">40대</a></li>
                        <li><a href="/searchPage.jsp?age=" class="fifties">50대</a></li>
                    </ul><!--age_box end -->
                </li>
                
                <li class="number_of_crew"><button class="number_of_crew_a">크루원 수</button>
                  	<ul class="number_of_crew_box"><!-- number_of_crew_box start-->
                        <li><a href="/searchPage.jsp?memberSize=" class="number_of_crew_descending">많은순</a></li>
                        <li><a href="/searchPage.jsp?memberSize=" class="number_of_crew_ascending">적은순</a></li>
                    </ul><!-- number_of_crew_box end-->
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

<script type="text/template" id="searchListTmpl">
<@ _.each(crew,function(c){@>
<li class="crews_recruiting_new_members_item"><a href="">
    <img class="crew_img" src="img/<@=c.crew_img @>" width="247.5" height="180"/>
    <p class="crew_name"><@=c.crew_name @></p>
    <p class="crew_introduction"><@=c.crew_introduction @></p></a>
</li>
<@})@>
</script>

<script>



//검색결과 ajax 코드
_.templateSettings = {interpolate: /\<\@\=(.+?)\@\>/gim,evaluate: /\<\@([\s\S]+?)\@\>/gim,escape: /\<\@\-(.+?)\@\>/gim};

const searchListTmpl = _.template($('#searchListTmpl').html());
const $crewsRecruitingNewMembersList = $('.crews_recruiting_new_members_list');

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

    //분류 드롭박스
    $('.category_box a').click(function(e){
        e.preventDefault();
        $('.category_a').text($(this).text()).css("color","#3D41B3").css("font-weight","900");
        $(".category_box").hide();
    });
    $(".category").mouseenter(function () {
        $(".category_box").show();
    });

    //연령대 드롭박스
    $(".age_box a").click(function (e) {
        e.preventDefault();
       $(".ages_a").text($(this).text()).css("color","#3D41B3").css("font-weight","900");
        $(".age_box").hide();
    });
    $(".ages").mouseenter(function (e) {
        $(".age_box").show();
    });

    //크루원수 드롭박스
    $(".number_of_crew_box a").click(function (e) {
        e.preventDefault();
        $(".number_of_crew_a").text($(this).text()).css("color","#3D41B3").css("font-weight","900");
        $(".number_of_crew_box").hide();
    });
    $(".number_of_crew").mouseenter(function () {
        $(".number_of_crew_box").show();
    });
    
    let categoryNo= null;
    let ages = null;
    let order = "desc";

    function getSearchCrewList() {
        $.ajax({
            url:"/ajax/getSearchCrewList.json",
            type : 'GET',
            data:{
            	categoryNo:categoryNo,
            	ages:ages,
            	order:order
            },
            dataType : "json",
            error : function(xhr, error, code) {
                alert("에러:" + code);
            },
            success:function(json) {
                console.log(json);
                $crewsRecruitingNewMembersList.html(searchListTmpl({crew : json}));
            }
        });
    }// getSearchCrewList();
    
    
    
    getSearchCrewList();
</script>
</body>
</html>