<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>밋팅 디테일</title>
    <link rel="stylesheet" href="/css/reset.css" />
    <link rel="stylesheet" href="/css/all.min.css" />
    <link rel="stylesheet" href="/css/default.css" />
    <link rel="stylesheet" href="/css/tui-chart.min.css"/>
    <link rel="stylesheet" href="/css/meetinghistory.css"/>
    <style>
        #header{
            background-color: #fff;
            position: fixed;
            z-index: 10;
        }
        #container{ /*----------레이아웃*/
            position: relative;
            margin-bottom: 100px;
        }
        #content{/*----------//레이아웃*/
            width: 1080px;
            margin: 30px auto;
        }
        /*--------------------------------------------------------------------------레이아웃*/
        .fa-arrow-left{/*---------- ← 화살표 폰트어썸*/
            font-size: 42px;
            cursor: pointer;
        }
        .classificationl_box{/*----------BOX<분류,카테고리(1,2),테마>*/
            display: flex;
        }
        .classificationl_box div{/*----------분류,카테고리(1,2),테마*/
            font-size: 20px;
            border-radius: 10px;
            padding: 10px;
            background-color: #FFAB40;
            margin-left: 30px;
            font-weight: 700;
            height: 18px;
        }
        .classificationl_box div:nth-child(2){/*----------분류만 색 다르게*/
            background-color: #ff6333;
        }
        /*--------------------------------------------------------------------------1. 박스*/
        .description_box{/*----------첫번 째 섹션*/
            margin-top: 30px;
        }
        .meeting_name{/*----------밋팅 이름*/
            font-size: 35px;
            font-weight: 900;
            margin-bottom: 10px;
        }
        .description_contents{/*----------첫번 째 섹션 내용물들(총3개)*/
            display: flex;
            justify-content: space-between;
            padding-bottom: 30px;
            border-bottom: 1px solid #757575;
        }
        .description_contents_img_box{/*----------첫번 째 내용물 글*/
            font-size: 16px;
        }
        .description_contents_apply img{/*----------첫번 째 내용물 이미지*/
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-top: 12px;
            margin-bottom: 5px;
        }
        .local_map{/*----------두번 째 내용물 지도*/
            width: 400px;
            height: 200px;
            background-color: #ff6333;
        }
        .description_contents_apply{/*----------세번 째 내용물*/
            text-align: center;
            width: 290px;
        }
        .btn_apply{/*----------세번 째 내용물 버튼*/
            width: 200px;
            height: 50px;
            background-color: #ff6333;
            line-height: 50px;
            border-radius: 10px;
            margin: 5px auto;
            color: white;
            font-weight: 900;
            cursor: pointer;

        }
        .btn_apply:hover {
            box-shadow: 1px 1px 1px 1px #999;
        }
        /*--------------------------------------------------------------------------2. description box*/
        .section_second{/*----------두번 째 섹션*/
            display: flex;
            justify-content: space-around;
            padding-bottom: 30px;
            border-bottom: 1px solid #757575;
        }
        .rule_box,.materials_box{/*----------두번 째 섹션 내용물들(총3개)*/
            margin-top: 30px;
        }
        .section_second_subtitle{/*----------규칙,준비물*/
            font-size: 35px;
            font-weight: 900;
            text-align: center;
        }
        .section_second ul>li{/*----------item 간격 및 크기*/
            font-size: 20px;
            margin-top: 15px;
        }
        /*--------------------------------------------------------------------------3. 두번째 섹션*/
        .section_third{/*----------세번 째 섹션*/
            position: relative;
            padding-bottom: 30px;
            border-bottom: 1px solid #757575;
        }
        .section_third_title {/*----------"신청한 크루"*/
            font-size: 35px;
            font-weight: 900;
            margin-bottom: 10px;
            margin-top: 30px;
        }
        .section_third ul{
            display: flex;
            justify-content: space-around;
            margin-bottom: 50px;
        }
        .section_third ul>li>label{/*----------크루 item*/
            display: flex;
            width: 330px;
            min-height: 167px;
            border: 1px solid #757575;
            border-radius: 10px;
            justify-content: center;
            cursor: pointer;
        }
        .section_third ul>li:hover{/*----------크루 item 오버시*/
            opacity: 0.5;
        }
        .section_third ul>li>label img{/*----------크루 이미지*/
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-bottom: 10px;
        }
        .section_third ul>li>label div:nth-child(1){/*----------크루이름*/
            text-align: center;
            padding-top: 20px;
            padding-left: 10px;
        }
        .section_third ul>li>label div:nth-child(2){/*----------크루 한마디,전적*/
            padding-left: 30px;
        }
        .section_third ul>li>label div:nth-child(2)>p:nth-child(1){/*----------크루 한마디*/
            font-size: 17px;
            font-weight: 800;
            margin-top: 50px;
        }
        .section_third ul>li>label div:nth-child(2)>p:nth-child(2){/*----------크루 전적*/
            margin-top: 15px;
        }
        input[name="check_crew"]{
            display: none;
        }
        input[name="check_crew"]:checked+label{
            background-color: #FFAB40;
            border: none;
        }
        .choosing_btn{
            position: absolute;
            width: 200px;
            height: 50px;
            background-color: #ff6333;
            line-height: 50px;
            text-align: center;
            border-radius: 10px;
            color: white;
            font-weight: 900;
            cursor: pointer;
            right: 0;
            margin-right: 12px;
            margin-top: -35px;
        }
        .choosing_btn:hover {
            box-shadow: 1px 1px 1px 1px #999;
        }
        /*--------------------------------------------------------------------------4. 세번째 섹션*/
        .section_fourth{/*----------네번 째 섹션*/
            padding-bottom: 30px;
            border-bottom: 1px solid #757575;
        }
        .history_crew_name{/*----------크루이름*/
            font-size: 35px;
            font-weight: 900;
            margin-bottom: 10px;
            margin-top: 30px;
            display: inline-block;
        }
        .history_crew_name+span{/*----------"히스토리"*/
            font-size: 35px;
            font-weight: 900;
            margin-bottom: 10px;
            margin-top: 30px;
        }
        .history_box_main{/*----------"대결,친목를 담은 box"*/
            display: flex;
            justify-content: space-between;
        }
        .battle_history,.amity_history{
            position: relative;
            width: 539px;
            padding: 20px;
        }
        .battle_history{/*----------"대결"*/
            border-right: 2px solid #757575;
        }
        .battle_total,.amity_total{/*----------"대결 X승 X무 X패"*/
            font-size: 23px;
            font-weight: 700;
            text-align: center;
        }
        .battle_view_more,.amity_view_more{/*----------"대결 더보기"*/
            font-weight: 600;
            font-size: 18px;
            float: right;
            border: none;
            background-color: white;
        }
        .battle_view_more:hover,.amity_view_more:hover {
            box-shadow: 1px 1px 1px 1px #999;
            cursor: pointer;
        }
        .battle_history ul{
            margin-top: 30px;
        }
        .crew_battle_history_content{/*----------"크루 box"*/
            position: relative;
            display: flex;
            border-bottom: 1px solid #757575;
            padding: 30px 0;
        }
        .crew_battle_history_content img{/*----------"크루 이미지"*/
            width: 100px;
            height: 100px;
            border-radius: 50%;
        }
        .crew_battle_history_content div:nth-child(2){/*----------"크루 밋팅 내역"*/
            margin-left: 30px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            font-size: 20px;
        }
        .waiting_for_the_review{/*----------"후기 기다리는중"*/
            background-color: #424242;
            position: absolute;
            right: 0;
            top: 50%;
            margin-top: -15px;
            text-align: center;
            width: 120px;
            height: 30px;
            line-height: 30px;
            border-radius: 10px;
            color: white;
            font-weight: 900;
        }
        .match_result{/*----------"승, 무, 패"*/
            background-color: #424242;
            position: absolute;
            right: 0;
            top: 50%;
            margin-top: -25px;
            text-align: center;
            width: 50px;
            height: 50px;
            line-height: 50px;
            border-radius: 50%;
            color: white;
            font-weight: 900;
        }
        /*--------------------------------------------------------------------------5. 네번째 섹션*/
        /*--------------------------------------------------------------------------map section start*/
        .map_wrap{
            position:relative;
        }
        .custom_zoomcontrol {position:absolute;top:10px;right:10px;width:36px;height:80px;overflow:hidden;z-index:1;background-color:#f5f5f5;}
        .custom_zoomcontrol span {display:block;width:36px;height:40px;text-align:center;cursor:pointer;}
        .custom_zoomcontrol span img {width:15px;height:15px;padding:12px 0;border:none;}
        .custom_zoomcontrol span:first-child{border-bottom:1px solid #bfbfbf;}
        /*--------------------------------------------------------------------------map section end*/
        #meetingHistoryPop{
            width: 100%;
            height: 100%;
            position: fixed;
            background-color: rgba(0,0,0,.3);
            z-index: 20;
            display: none;
        }

        #chart-area{
            /*background-color: #333333;*/
            margin-top: 24px;
        }
    </style>
</head>
<body>
<div id="meetingHistoryPop">
    <div id="meetingHistoryPopWrap"><!--meetingHistoryPopWrap start -->
        <button class="close_btn"><i class="fas fa-times"></i></button>
        <div class="select_box">
        </div>
        <ul class="history_box">
            <li class="match_tab">
                <input type="radio" name="history_" id="match_connect" checked>
                <label for="match_connect">대결(21)</label>
                <div class="history_content"><!-- history_content start-->
                    <div class="title"><!-- title start-->
                        <h1>밋팅 히스토리</h1>
                        <h2>대결<span class="record_total">12승 3무 6패</span></h2>
                    </div><!--// title end-->
                    <div class="radar_chart_for_group_personality"><!-- radar_chart_for_group_personality start-->
                        <div id="chart-area1"></div>
                    </div><!--// radar_chart_for_group_personality end-->

                    <ul class="crew_match_list">
                    </ul>
                </div><!--// history_content end-->
            </li>

            <li class="community_gathering_tab">
                <input type="radio" name="history_" id="community_gathering_connect">
                <label for="community_gathering_connect">친목(14)</label>
                <div class="history_content"><!-- history_content start-->
                    <div class="title"><!-- title start-->
                        <h1>밋팅 히스토리</h1>
                        <div class="radar_chart_for_group_personality"><!-- radar_chart_for_group_personality start-->
                            <div id="chart-area2"></div>
                        </div><!--// radar_chart_for_group_personality end-->
                    </div><!--// title end -->

                    <ul class="crew_gathering_list">
                    </ul>
                </div><!--// history_content end-->
            </li>
        </ul>
    </div><!--// meetingHistoryPopWrap end -->
    <div class="review_pop_wrap"><!-- review_pop_wrap start-->
    </div><!--// review_pop_wrap end -->
</div>
<div id="header"><!--header start-->
    <div class="inner">
        <div class="header_logo_search"><!--header_left start-->
            <img src="../../Desktop/1216/img/logo.png" alt="saemo logo" title="saemo logo" />
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
                    <li><a href="/"><img class="header_crew_list_on" src="../../Desktop/1216/img/category1.jpg" width="40" height="40" /></a></li>
                    <li><a href="/"><img src="../../Desktop/1216/img/category2.jpg" width="40" height="40" /></a></li>
                    <li><a href="/"><img src="../../Desktop/1216/img/category3.jpg" width="40" height="40" /></a></li>
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
<div id="container"><!-- container -->
    <div id="content"> <!-- content -->
        <div class="classificationl_box"><!--classificationl_box-->
            <i class="fas fa-arrow-left"></i>
            <div>대결</div>
            <div>스포츠/레저</div>
            <div>축구</div>
            <div>태양보다 더 뜨겁게</div>
        </div><!--//classificationl_box-->
        <div class="description_box">
            <h2 class="meeting_name">강남배 조기축구</h2>
            <div class="description_contents">
                <div class="description_contents_img_box">
                    <h3 class="description_meeting_time">12월 17일 오전 09:00</h3>
                    <img src="../../Desktop/1216/img/category9.jpg" width="400" height="200">
                </div><!--//sdescription_contents_child1-->
                <div class="description_contents_child2">
                    <h3 class="description_meeting_address">서울시 동작구 사당로 13길 31</h3>
                    <div class="map_wrap">
                        <div id="map" class="local_map"></div>
                        <div class="custom_zoomcontrol radius_border">
                            <span onclick="zoomIn()"><img src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_plus.png" alt="확대"></span>
                            <span onclick="zoomOut()"><img src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_minus.png" alt="축소"></span>
                        </div>
                    </div>

                </div><!--//description_contents_child2-->
                <div class="description_contents_apply">
                    <img src="../../Desktop/1216/img/category4.jpg" width="100" height="100">
                    <div>축구왕 슛돌이</div>
                    <div class="btn_apply">-7000P 신청하기</div>
                    <div>수락까지 남은 시간 <span class="remain_time"></span></div>
                </div><!--//description_contents_child3-->
            </div><!--//description_contents-->
        </div><!--//description-->

        <div class="section_second">
            <div class="rule_box">
                <div class="section_second_subtitle">규칙</div>
                <ul>
                    <li>
                        <i class="far fa-check-square"></i>
                        <span class="">준비시간 내에 정확히 와주세요</span>
                    </li>
                    <li>
                        <i class="far fa-check-square"></i>
                        <span class="">오프사이드 있습니다.</span>
                    </li>
                    <li>
                        <i class="far fa-check-square"></i>
                        <span class="">전후반 30분</span>
                    </li>
                    <li>
                        <i class="far fa-check-square"></i>
                        <span class="">패널티 2번 받을 시 퇴장</span>
                    </li>
                </ul>
            </div><!--//rule_box-->
            <div class="materials_box">
                <div class="section_second_subtitle">준비물</div>
                <ul>
                    <li>
                        <i class="far fa-check-square"></i>
                        <span class="">여분의 옷</span>
                    </li>
                    <li>
                        <i class="far fa-check-square"></i>
                        <span class="">재밌게 즐기고 가겠다는 마음</span>
                    </li>
                    <li>
                        <i class="far fa-check-square"></i>
                        <span class="">수건</span>
                    </li>
                    <li>
                        <i class="far fa-check-square"></i>
                        <span class="">축구공</span>
                    </li>
                    <li>
                        <i class="far fa-check-square"></i>
                        <span class="">보호대</span>
                    </li>
                    <li>
                        <i class="far fa-check-square"></i>
                        <span class="">약</span>
                    </li>
                </ul>
            </div><!--//materials_box-->
        </div><!--//section_second-->

        <div class="section_third">
            <div class="section_third_title">신청한 크루</div>
            <ul>
                <li>
                    <input type="radio" id="checkCrew_c1" name="check_crew">
                    <label for="checkCrew_c1">
                        <div>
                            <img src="../../Desktop/1216/img/category8.jpg">
                            <p>FC 최강</p>
                        </div>
                        <div>
                            <p>13명이며 준프로급 실력을 가지고 있습니다.</p>
                            <p>13승 2무 2패</p>
                        </div>
                    </label>
                </li>
                <li>
                    <input type="radio" id="checkCrew_c2" name="check_crew">
                    <label for="checkCrew_c2">
                        <div>
                            <img src="../../Desktop/1216/img/category7.jpg">
                            <p>서울 원탑 축구가자</p>
                        </div>
                        <div>
                            <p>서울 원탑이랑 한판 하실래예?</p>
                            <p>22승 0무 55패</p>
                        </div>
                    </label>
                </li>
                <li>
                    <input type="radio" id="checkCrew_c3" name="check_crew">
                    <label for="checkCrew_c3">
                        <div>
                            <img src="../../Desktop/1216/img/category6.jpg">
                            <p>축구는 인생이다</p>
                        </div>
                        <div>
                            <p>인생을 배우고 싶다면 같이 축구를!</p>
                            <p>0승 0무 2패</p>
                        </div>
                    </label>
                </li>
            </ul>
            <div class="choosing_btn">고르기</div>
        </div><!--//section_third-->

        <div class="section_fourth">
            <div class="history_crew_name">축구왕 슛돌이</div><span> 히스토리</span>
            <div class="history_box_main">
                <div class="battle_history">
                    <div class="battle_total">대결 12승 3무 6패</div>
                    <button class="battle_view_more">대결 더 보기</button>
                    <ul>
                        <li class="crew_battle_history_content">
                            <img src="../../Desktop/1216/img/category5.jpg">
                            <div>
                                <p>5:5 풋살 대회</p>
                                <p>날아라 슛돌이</p>
                                <p>12월 17일 오전 09:00</p>
                            </div>
                            <div class="waiting_for_the_review">후기 기다리는 중</div>
                        </li>
                        <li class="crew_battle_history_content">
                            <img src="../../Desktop/1216/img/category1.jpg">
                            <div>
                                <p>3:3 풋살 대회</p>
                                <p>날아라 슛돌이 가자</p>
                                <p>12월 15일 오전 19:50</p>
                            </div>
                            <div class="match_result">승</div>
                        </li>
                        <li class="crew_battle_history_content">
                            <img src="../../Desktop/1216/img/category2.jpg">
                            <div>
                                <p>5:5 풋살 대회</p>
                                <p>날아라 슛돌이 고</p>
                                <p>12월 14일 오전 09:30</p>
                            </div>
                            <div class="match_result">패</div>
                        </li>
                    </ul>
                </div><!--//battle_history-->
                <div class="amity_history">
                    <div class="amity_total">친목</div>
                    <button class="amity_view_more">친목 더 보기</button>
                    <div id="chart-area"></div>
                </div>
            </div><!--//history_box-->
        </div><!--//section_fourth-->

    </div><!--//content -->
</div><!--//container-->
<div id="footer"><!--//footer start-->
    <div class="inner"><!--//inner start-->
        <ul class="footer_container_help"><!--// footer_conatiner_left start-->
            <li><a href="">이용약관</a></li>
            <li><a href="">FAQ</a></li>
            <li><a href="">회사소개</a></li>
        </ul><!--// footer_conatiner_left end-->
        <div class="footer_container_company_name clear_fix">
            <span> &copy; 두괄</span>
        </div><!--// footer_conatiner_start end-->
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

<script type="text/template" id="matchTmpl">
    <@ _.each(crew,function(c){@>
    <li class="crew_detail_item"><!--crew_detail_box start -->
        <div class="crew_image"><!--crew_image start -->
            <a href=""><img src="img/<@=c.crew_img @>"></a>
        </div><!--// crew_image end -->
        <div class="meeting_detail"><!-- meeting_detail start -->
            <p><@= c.meeting_name@></p>
            <p><@= c.meeting_desc@></p>
            <p><@= c.meeting_date@></p>
        </div><!--// meeting_detail end -->
        <p class="match_record">5승 12무 8패</p>
        <a href="" class="review_btn">후기</a>
    </li>
    <@})@>
</script>
<script type="text/template" id="fellowshipTmpl">
    <@ _.each(crew,function(c){@>
    <li class="crew_detail_item"><!--crew_detail_box start -->
        <div class="crew_image"><!--crew_image start -->
            <a href=""><img src="img/<@=c.crew_img @>"></a>
        </div><!--// crew_image end -->
        <div class="meeting_detail"><!-- meeting_detail start -->
            <p><@= c.meeting_name@></p>
            <p><@= c.meeting_desc@></p>
            <p><@= c.meeting_date@></p>
        </div><!--// meeting_detail end -->
        <a href="" class="review_btn">후기</a>
    </li>
    <@})@>
</script>
<script type="text/template" id="reviewTmpl">
    <div class="community_gathering_review_box"><!--community_gathering_review_box start-->
        <span class="prev_btn"><i class="fas fa-arrow-left"></i></span>
        <h1 class="review_box_title">후기</h1>
        <span class="time_crew_wrote_the_review"><@=review.regdate@> 작성</span>
        <form class="community_gathering_review_form">
            <div class="crew_profile"><!-- crew_profile start-->
                <img src="img/<@= review.crew_img@>">
                <p><@= review.crew_name@></p>
            </div><!--//crew_profile end-->
            <div class="check_list"><!-- check_list start-->
                <label><input type="checkbox" checked="checked" disabled="disabled">상대팀의 매너가 좋았나요?</label>
                <label><input type="checkbox" checked="checked" disabled="disabled">상대팀의 실력이 좋았나요?</label>
                <label><input type="checkbox" checked="checked" disabled="disabled">상대팀은 화목했나요?</label>
                <label><input type="checkbox">상대팀은 의욕적이었나요?</label>
                <label><input type="checkbox">상대팀은 단합이 좋았나요?</label>
            </div><!--// check_list end-->
            <div class="send_message_box"><!-- send_message_box start -->
                <p class="send_message_box_title">상대 크루에게 한 마디 해주세요</p>
                <textarea class="type_comment" disabled><@= review.review@></textarea>
            </div><!--// send_message_box end -->
        </form>
    </div><!--// community_gathering_review_box end-->
</script>
<script src="js/jquery.js"></script>
<script src="js/tui-chart-all.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9461990ea008279ad054cf44109aa103&libraries=services"></script>
<script src="js/moment-with-locales.js"></script>
<script src="js/underscore-min.js"></script>
<script>

    //--------------------------------------------------------------------------------주소 찾기 . 지도 보이기
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new daum.maps.LatLng(37.0013545214342, 127.648247356919), // 지도의 중심좌표
            level: 5 // 지도의 확대 레벨
        };
    //지도를 미리 생성
    var map = new daum.maps.Map(mapContainer, mapOption);
    //주소-좌표 변환 객체를 생성
    var geocoder = new daum.maps.services.Geocoder();
    //마커를 미리 생성
    var marker = new daum.maps.Marker({
        position: new daum.maps.LatLng(37.0013545214342, 127.648247356919),
        map: map
    });


    function sample5_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = data.address; // 최종 주소 변수
                // 주소 정보를 해당 필드에 넣는다.
                document.getElementById("sample5_address").value = addr;
                //---------------------------------------------------------------------주소 우회
                document.getElementById("addressContent").innerHTML = addr;
                // 주소로 상세 정보를 검색
                geocoder.addressSearch(data.address, function(results, status) {
                    // 정상적으로 검색이 완료됐으면
                    if (status === daum.maps.services.Status.OK) {

                        var result = results[0]; //첫번째 결과의 값을 활용

                        // 해당 주소에 대한 좌표를 받아서
                        var coords = new daum.maps.LatLng(result.y, result.x);
                        // 지도를 보여준다.
                        mapContainer.style.display = "block";
                        map.relayout();
                        // 지도 중심을 변경한다.
                        map.setCenter(coords);
                        // 마커를 결과값으로 받은 위치로 옮긴다.
                        marker.setPosition(coords)
                    }
                });
            }
        }).open();
    }

    // 지도 확대, 축소 컨트롤에서 확대 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
    function zoomIn() {
        map.setLevel(map.getLevel() - 1);
    }

    // 지도 확대, 축소 컨트롤에서 축소 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
    function zoomOut() {
        map.setLevel(map.getLevel() + 1);
    }
    //end 주소 찾기 . 지도 보이기

    //시간 차이 보여줌 1초마다 차이가 줄어듦
    //let meetingDue = 미팅시간-3일
    let tomorrow = moment('2021/1/6');
    function displaytime(){
        //  Date객체 생성
        let now = moment();

        //  역사 1900년대 사람들은 2000년대를 고려하지 않고 getYear라는 함수를 만들었었음
        let tmp = moment.duration(tomorrow.diff(now)).asMinutes();

        //시분초 차이 구하기
        let seconds = moment.duration(tomorrow.diff(now)).seconds();
        let minute = moment.duration(tomorrow.diff(now)).minutes();
        let hour = moment.duration(tomorrow.diff(now)).hours();

        let fullTime;
        //00:00:00으로 보이게 하기
        if(minute<10 && seconds<10){
            fullTime =  hour+":0" + minute+":0" + seconds;
        }else if(minute<10){
            fullTime =  hour+":0" + minute+":" + seconds;
        }else if(seconds<10){
            fullTime =  hour+":" + minute+":0" + seconds;
        }else{
            fullTime =  hour+":" + minute+":" + seconds;
        }

        // text 표시
        $(".remain_time").text(fullTime);

    }//displayTime() end
    setInterval(function (){
        displaytime();
    },1000);

    // 신청까지 남은시간 end



    //밋팅 history chart 시작
    var container = document.getElementById('chart-area');
    var container1 = document.getElementById('chart-area1');
    var container2 = document.getElementById('chart-area2');
    var data = {
        categories: ["매너", "실력", "화목", "의욕", "단합"],
        series: [
            {
                // name: 'Budget',
                data: [25/50, 23/50, 22/50, 11/50, 20/50]
            },
        ]
    };
    var options = {
        chart: {
            title: '',
            width: 500,
            height: 480
        },
        series: {
            showDot: false,
            showArea: false
        },
        plot: {
            type: 'circle',
            hideLine: true// whether hide line or not

        },
        legend: {
            visible: false
        },
        chartExportMenu: {
            visible: false
        },
        yAxis:{
            min:0,
            max:1
        }
    };
    var options1 = {
        chart: {
            title: '',
            width: 400,
            height: 300
        },
        series: {
            showDot: false,
            showArea: false
        },
        plot: {
            type: 'circle',
            hideLine: true// whether hide line or not

        },
        legend: {
            visible: false
        },
        chartExportMenu: {
            visible: false
        },
        yAxis:{
            min:0,
            max:1
        }
    };

    var theme = {
        series: {
            colors: [
                '#424242'
            ]
        }
    };// For apply theme

    tui.chart.registerTheme('myTheme', theme);
    options.theme = 'myTheme';
    // 생성자()
    const chart = tui.chart.radialChart(container, data, options);
    const chart1 = tui.chart.radialChart(container1, data, options1);
    const chart2 = tui.chart.radialChart(container2, data, options1);
    chart.on('afterShowTooltip', function(params) {
        chart.hideTooltip();
    });
    chart.on('beforeHideTooltip', function(params) { /* 3 */
        chart.hideTooltip();
    });
    chart1.on('afterShowTooltip', function(params) {
        chart1.hideTooltip();
    });
    chart1.on('beforeHideTooltip', function(params) { /* 3 */
        chart1.hideTooltip();
    });
    chart2.on('afterShowTooltip', function(params) {
        chart2.hideTooltip();
    });

    chart2.on('beforeHideTooltip', function(params) { /* 3 */
        chart2.hideTooltip();
    });
    //밋팅 history chart end



    /*템플릿 시작*/
    // % -> @ 으로
    _.templateSettings = {interpolate: /\<\@\=(.+?)\@\>/gim,evaluate: /\<\@([\s\S]+?)\@\>/gim,escape: /\<\@\-(.+?)\@\>/gim};

    const matchTmpl = _.template($('#matchTmpl').html());
    const fellowshipTmpl = _.template($('#fellowshipTmpl').html());
    const reviewTmpl = _.template($('#reviewTmpl').html());

    const $crewMatchList = $('.crew_match_list');
    const $crewGatheringList = $('.crew_gathering_list');
    const $reviewPopWrap = $('.review_pop_wrap');

    $.ajax({
        url:"data/match_history.json",
        type : 'POST',
        dataType : "json",
        error : function(xhr, error, code) {
            alert("에러:" + code);
        },
        success:function(json) {
            console.log(json);
            $crewMatchList.html(matchTmpl({crew : json}));
        }
    });
    $.ajax({
        url:"data/fellowship_history.json",
        type : 'POST',
        dataType : "json",
        error : function(xhr, error, code) {
            alert("에러:" + code);
        },
        success:function(json) {
            console.log(json);
            $crewGatheringList.html(fellowshipTmpl({crew:json}));
        }
    });



    let review;
    const $meetingHistoryPopWrap = $('#meetingHistoryPopWrap');
    /*후기 읽기 start*/
    $(document).on("click", '.review_btn',function (e) {
        //클릭시 페이지가 안바뀜
        e.preventDefault();
        console.log($reviewPopWrap.hasClass("appear"));
        if(!$reviewPopWrap.hasClass("appear")){
            $reviewPopWrap.addClass("appear");
            $meetingHistoryPopWrap.addClass("disappear");
            $.ajax({
                url:"data/review.json",
                type : 'POST',
                dataType : "json",
                error : function(xhr, error, code) {
                    alert("에러:" + code);
                },
                success:function(json) {
                    console.log(json.crew_name);
                    review = json
                    $reviewPopWrap.html(reviewTmpl({review:json}));
                }
            });
        }else{
            $reviewPopWrap.removeClass("appear");
            $meetingHistoryPopWrap.removeClass("disappear");
        }
    });

    $(document).on("click", '.prev_btn',function (e) {
        if(!$reviewPopWrap.hasClass("appear")){
            $reviewPopWrap.addClass("appear");
            $meetingHistoryPopWrap.addClass("disappear");
        }else{
            $reviewPopWrap.removeClass("appear");
            $meetingHistoryPopWrap.removeClass("disappear");
        }
    });
    /*후기 읽기 end*/

    $(".battle_view_more").click(function () {
        $("#meetingHistoryPop").css("display","block");
        $("html").css("overflow-y","hidden");
    });

    $(".amity_view_more").click(function () {
        $("#meetingHistoryPop").css("display","block");
        $("html").css("overflow-y","hidden");
    });
    //팝업 닫기버튼
    $(".close_btn").click(function () {
        $("#meetingHistoryPop").css("display","none");
        $("html").css("overflow-y","auto");
        // $("#meetingHistoryPop").css("backgroundColor","rgba(0,0,0,0)");

    });//click() end

</script>
</body>
</html>