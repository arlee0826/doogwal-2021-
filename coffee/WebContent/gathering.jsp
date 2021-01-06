<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>font awesome ������ ���</title>
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/all.min.css" />
    <link rel="stylesheet" href="css/default.css" />
    <style>
        #header{
            z-index: 10;
            background-color: white;
            position: fixed;
        }
        #container{
            position: relative;
        }
        #footer{
            margin-top: 200px;
        }
        /*12-18*/
        #content{
            width: 1080px;
            margin: auto;
        }
        .form_title{ /*"���� �����ϱ�*/
            font-size: 40px;
            text-align: center;
            margin: 30px 0;
        }
        .first_td{ /*�� ���� ù��° ��*/
            width: 200px;
            height: 100px;
            font-size: 30px;
            text-align: center;
            line-height: 100px;
            background-color: #3EB39D;
            color: white;
            border-bottom: 1px solid #bebebe;
        }
        .second_td{/*�ι� ° td*/
            width: 850px;
            padding-left: 60px;
            border:1px solid #bebebe;
            vertical-align: middle;
        }
        .input_time{ /*<input> �ð�  */
            width: 150px;
            height: 30px;
            vertical-align: middle;
        }
        .date_input{ /*<input> ���� */
            height: 30px;
            width: 150px;
            margin-right: 30px;
        }
        .local_input input{/*�ּ�, �����ּ�*/
            display: block;
            margin-top: 6px;
        }
        .local_map{/*���� ����*/
            background-color: #bebebe;
            width: 431px;
            height: 303px;
            position: absolute;
            left: 60%;
            top: 402px;
        }
        .check_date{/*<checkbox> �Ϸ�����, '��'*/
            vertical-align: bottom;
            font-size: 20px;
        }
        /*------------------------------------------12-19*/
        .meet_name{/* <p>���� �̸�*/
            font-size: 40px;
            font-weight: 900;
        }
        .meet_content{ /* <p>���� ��*/
            width: 340px;
            height: 90px;
            font-size: 18px;
            line-height: 24px;
        }
        .dues{ /* <p>����(1234��) */
            font-size: 20px;
        }
        .materials_item{ /* <p> �� �غ� */
            font-size: 20px;
            margin: 10px 0;
        }
        /*-----------------------------12-20�������� box*/
        .attendance_status_box{ /* �������� ���� */
            width: 1078px;
            height: 440px;
            border: 1px solid rgb(190, 190, 190);
            border-top: none;
            position: relative;
        }
        .attend_box{ /* ���� ���� */
            width: 538px;
            height: 440px;
            float: left;
            border-right: 1px solid black;
            /*background-color: #bebebe;*/
            padding-top: 30px;
            padding-left: 30px;
            box-sizing: border-box; /*padding�� �ָ� div�� Ŀ���� �� ������ �ذ��ϱ� ���ؼ� ����*/
        }
        .attend_btn:hover{ /* ���� ��ư ������ */
            cursor: pointer;
        }
        .attend_title,.no_attend_title{/* ����,���� ��ư */
            width: 100px;
            height: 100px;
            background-color: #bebebe;
            border-radius: 50%;
            text-align: center;
            line-height: 100px;
            font-size: 40px;
            font-weight: 900;
            color: white;
            display: inline-block;
            margin-bottom: 30px;
        }
        .attend_box input[type="radio"]{/* ���� ��ư���� radio �Ⱥ��̰� �α�*/
            display: none;
        }
        .attendees,.non_attendees{ /* "X��" */
            margin-left: 50px;
            font-size: 30px;
            font-weight: 500;
        }
        .attend_box ul{ /* ������ ���� ���� */
            width: 478px;
            height: 280px;
            /*background-color: #bebebe;*/
            padding-left: 36px;
            box-sizing: border-box; /*padding�� �ָ� div�� Ŀ���� �� ������ �ذ��ϱ� ���ؼ� ����*/
        }
        .attend_box ul:hover{ /* ������ ���� ���� ������ �������� */
            width: 890px;
            /*width: 1020px;*/
            padding-left: 0;
            background-color: #FF6333;
            border-radius: 8px;
            position: absolute;
        }
        .attend_box ul:hover img{ /* ������ ���� ���� ������ �������� */
            margin-left: 8px;
        }
        .attendees_img{ /* ������ ���� */
            width: 80px;
            height: 80px;
            border-radius: 50%;
            float: left;
            margin-left: -36px;
            margin-top: 10px;
        }
        /*---------------------������ ����-------------------*/
        .no_attend_box{ /* ������ ���� */
            width: 539px;
            height: 440px;
            float: left;
            /*background-color: #bebebe;*/
            padding-top: 30px;
            padding-left: 30px;
            padding-right: 30px;
            box-sizing: border-box; /*padding�� �ָ� div�� Ŀ���� �� ������ �ذ��ϱ� ���ؼ� ����*/
        }
        .no_attend_box input[type="radio"]{/* ���� ��ư���� radio �Ⱥ��̰� �α�*/
            display: none;
        }
        .no_attend_btn:hover{ /* ������ ��ư ������ */
            cursor: pointer;
        }
        .no_attend_box ul{ /* ���� ������ ���� ���� */
            width: 478px;
            height: 280px;
            /*background-color: #bebebe;*/
            padding-left: 36px;
            box-sizing: border-box; /*padding�� �ָ� div�� Ŀ���� �� ������ �ذ��ϱ� ���ؼ� ����*/
        }
        .no_attend_box ul:hover{ /* ������ ���� ���� ������ �� ������ */
            width: 890px;
            /*width: 1020px;*/
            padding-left: 0;
            background-color: #FFAB40;
            border-radius: 8px;
            float: right;
        }
        .no_attend_box ul:hover img{ /* ������ ���� ���� ������ �������� */
            margin-left: 8px;
        }
        .attend_btn input[type="radio"]:checked+.attend_title{/*�������ο� ���� ��ư ��*/
            background-color: #3EB39D;
        }
        .no_attend_btn input[type="radio"]:checked+.no_attend_title{/*�������ο� ���� ��ư ��*/
            background-color: #3EB39D;
        }
        .attendees_img.my_img{/*���� ���� ����*/
            border: 5px solid #3EB39D;
            width: 70px;
            height: 70px;
        }
        /*    12-24*/
        .not_required{/*�������� �ʿ���� �͵�*/
            display: none;
        }
        .my_address_label{ /*<input>�ּ� �� */
            display: inline-block;
            width: 350px;
            height: 40px;
            border: 1px solid #bebebe;
            vertical-align: middle;
            font-size: 20px;
            text-align: center;
            line-height: 40px;
            pointer-events: none;
        }
        .my_address_label:hover{ /*<input>�ּ� �� ������ */
            cursor: pointer;
            box-shadow:1px 1px 1px 1px #999;
        }
        .local_map{/*���� ����*/
            background-color: #bebebe;
            width: 431px;
            height: 303px;
            position: absolute;
            left: 60%;
            top: 402px;
        }
    </style>
</head>
<body>
<div id="header"><!--header start-->
    <div class="inner">
        <div class="header_logo_search"><!--header_left start-->
            <img src="img/logo.png" alt="saemo logo" title="saemo logo" />
            <form class="header_search"><!--header_search-->
                <fieldset><!--fieldset-->
                    <legend class="screen_out">�˻�</legend>
                    <input placeholder="�˻�� �Է��ϼ���." maxlength="10" />
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
                <h3 class="screen_out">���޴�</h3>
                <ul>
                    <li><a href="">����������</a></li>
                    <li><a href="">�α׾ƿ�</a></li>
                </ul>
            </div>
        </div><!--//header_right end-->
    </div><!--// inner end-->
</div><!--//header end-->
<!-- container -->
<div id="container">
    <!-- content -->
    <div id="content">

        <div class="form_title"><h1>���� ��</h1></div>
        <table>
            <tr>
                <td class="first_td">���� �̸�</td>
                <td class="second_td">
                    <p class="meet_name">�ΰ��� ����� �Ա�</p>
                </td>
            </tr>
            <tr>
                <td class="first_td">��¥</td>
                <td class="second_td">
                    <input type="date" class="date_input" disabled>
                    <input type="time" class="input_time" disabled>
                    <span class="">~</span>
                    <input type="time" class="input_time" disabled>
                    <label class="check_date"><input type="checkbox" disabled>�Ϸ�����</label>
                </td>
            </tr>
            <tr class="local_input">
                <td class="first_td">���</td>
                <td class="second_td">
                    <div class="not_required">
                        <input type="text" id="sample5_address" placeholder="�ּ�">
                        <input id="address_content" type="button" onclick="sample5_execDaumPostcode()" value="�ּ� �˻�"><br>
                    </div>
                    <label for="address_content" class="my_address_label" id="addressContent">�ּ� ã��</label>
                </td>
            </tr>
            <tr class="detail_input">
                <td class="first_td">��</td>
                <td class="second_td">
                    <p class="meet_content">
                        �ѱ��� �����/���� �˻��� �λ���б� �ΰ����ɿ����ǰ� (��)����������ũ�� �Բ� ����� �ֽ��ϴ�.
                        �� �˻��� �����̳�
                        �л��� ����� ����� �� �ֽ��ϴ�. QWERTYASDFFGZ
                    </p>
                </td>
            </tr>
            <tr>
                <td class="first_td">ȸ��</td>
                <td class="second_td">
                    <p class="dues">11500��</p>
                </td>
            </tr>
            <tr>
                <td class="first_td">�غ�</td>
                <td class="second_td">
                    <p class="materials_item"><i class="far fa-check-square"></i>������ ������������ ��</p>
                    <p class="materials_item"><i class="far fa-check-square"></i>���� �־�� ��̴�. </p>
                </td>
            </tr>
            <div id="map" class="local_map"></div>
        </table>
        <!---------------------------------------���� ������ ����---------------------------------------->
        <div class="attendance_status_box">
            <div class="attend_box">
                <label class="attend_btn">
                    <input type="radio" name="attendance_radio" class="attendance_radio">
                    <div class="attend_title">����</div>
                </label>
                <span class="attendees"></span>
                <ul class="attendees_list">

                </ul>
            </div>
            <div class="no_attend_box">
                <label class="no_attend_btn">
                    <input type="radio" name="attendance_radio" class="no_attendance_radio">
                    <div class="no_attend_title">����</div>
                </label>
                <span class="non_attendees"></span>
                <ul class="not_attendees_list">

                </ul>
            </div>
        </div>
    </div>
    <!-- //content -->
</div>
<!-- //container -->
<div id="footer"><!--//footer start-->
    <div class="inner"><!--//inner start-->
        <ul class="footer_container_help"><!--// footer_conatiner_left start-->
            <li><a href="">�̿���</a></li>
            <li><a href="">FAQ</a></li>
            <li><a href="">ȸ��Ұ�</a></li>
        </ul><!--// footer_conatiner_left end-->
        <div class="footer_container_company_name clear_fix">
            <span> &copy; �ΰ�</span>
        </div><!--// footer_conatiner_start end-->
        <dl>
            <dt>
                <address class="footer_address">�ּ� : ����Ư���� ���Ǳ� ��õ�� 72-6 7��</address>
            </dt>
            <dt>
                <div class="footer_phone_num">��ȭ��ȣ : 02-123-1234</div>
            </dt>
        </dl>


    </div><!--//footer_container end-->
</div><!--//footer end-->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9461990ea008279ad054cf44109aa103&libraries=services"></script>
<script src="js/jquery.js"></script>
<script>
    //--------------------------------------------------------------------------------�ּ� ã�� . ���� ���̱�
    var mapContainer = document.getElementById('map'), // ������ ǥ���� div
        mapOption = {
            center: new daum.maps.LatLng(37.0013545214342, 127.648247356919), // ������ �߽���ǥ
            level: 5 // ������ Ȯ�� ����
        };
    //������ �̸� ����
    var map = new daum.maps.Map(mapContainer, mapOption);
    //�ּ�-��ǥ ��ȯ ��ü�� ����
    var geocoder = new daum.maps.services.Geocoder();
    //��Ŀ�� �̸� ����
    var marker = new daum.maps.Marker({
        position: new daum.maps.LatLng(37.0013545214342, 127.648247356919),
        map: map
    });
    function sample5_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = data.address; // ���� �ּ� ����
                // �ּ� ������ �ش� �ʵ忡 �ִ´�.
                document.getElementById("sample5_address").value = addr;
                //---------------------------------------------------------------------�ּ� ��ȸ
                document.getElementById("addressContent").innerHTML = addr;
                // �ּҷ� �� ������ �˻�
                geocoder.addressSearch(data.address, function(results, status) {
                    // ���������� �˻��� �Ϸ������
                    if (status === daum.maps.services.Status.OK) {

                        var result = results[0]; //ù��° ����� ���� Ȱ��

                        // �ش� �ּҿ� ���� ��ǥ�� �޾Ƽ�
                        var coords = new daum.maps.LatLng(result.y, result.x);
                        // ������ �����ش�.
                        mapContainer.style.display = "block";
                        map.relayout();
                        // ���� �߽��� �����Ѵ�.
                        map.setCenter(coords);
                        // ��Ŀ�� ��������� ���� ��ġ�� �ű��.
                        marker.setPosition(coords)
                    }
                });
            }
        }).open();
    }
    //end �ּ� ã�� . ���� ���̱�
    $.ajax({
        url:"data/list.json",//��û�ϴ� �����ּ�
        type:"GET", //Ŭ���̾�Ʈ -> ���� GET, POST
        dataType:"json", //����->Ŭ���̾�Ʈ ������Ÿ��
        error:function(xhr,code,type) {
            alert("���� ������!");
        },
        success:function(json) {

            const list = json;
            const adnumber = list.filter(function (element) {
                return element.attendance==true;
            });
            $(".attendees").text(adnumber.length+"��");
            $(".non_attendees").text(list.length-adnumber.length+"��");
            $(list).each(function () {
                // if(this.attendance===true){
                //     const $img = $("<img class='attendees_img'>").attr("src","img/"+this.photo);
                //     $("<li>").append($img).appendTo('.attendees_list');
                // }
                // if(this.attendance===false){
                //     const $img = $("<img class='attendees_img'>").attr("src","img/"+this.photo);
                //     $("<li>").append($img).appendTo('.not_attendees_list');
                // }
                // if(this.name==="������"){//�ڱ��� ��������
                //     if (this.attendance===true){
                //         $(".attendance_radio").prop("checked",true);
                //     }else {
                //         $(".no_attendance_radio").prop("checked",true);
                //     }
                // }

                if(this.name==="������"){//�ڱ��� ��������
                    if (this.attendance===true){
                        const $img = $("<img class='attendees_img my_img'>").attr("src","img/"+this.photo);
                        $("<li>").append($img).appendTo('.attendees_list');
                        $(".attendance_radio").prop("checked",true);
                    }else {
                        const $img = $("<img class='attendees_img my_img'>").attr("src","img/"+this.photo);
                        $("<li>").append($img).appendTo('.not_attendees_list');
                        $(".no_attendance_radio").prop("checked",true);
                    }
                }//if(this.name==="������") end
                else{
                    if(this.attendance===true){
                        const $img = $("<img class='attendees_img'>").attr("src","img/"+this.photo);
                        $("<li>").append($img).appendTo('.attendees_list');
                    }
                    if(this.attendance===false){
                        const $img = $("<img class='attendees_img'>").attr("src","img/"+this.photo);
                        $("<li>").append($img).appendTo('.not_attendees_list');
                    }
                }





            });//each() end
            //---------------------------------------------------------��ư Ŭ�� ��
            $(".no_attend_btn").click(function () {
                $(list).each(function () {
                    if(this.name==="������"){
                        this.attendance=false;
                    }
                })
                $.ajax({
                    url: "data/list.json",//��û�ϴ� �����ּ�
                    type: "GET", //Ŭ���̾�Ʈ -> ���� GET, POST
                    dataType: "json", //����->Ŭ���̾�Ʈ ������Ÿ��
                    error: function (xhr, code, type) {
                        alert("���� ������!");
                    },
                    success: function (json) {

                        const list = json;
                        const adnumber = list.filter(function (element) {
                            return element.attendance == true;
                        });
                        $(".attendees").text(adnumber.length + "��");
                        $(".non_attendees").text(list.length - adnumber.length + "��");
                        $(".not_attendees_list").empty();
                        $(".attendees_list").empty();
                        $(list).each(function () {
                            if (this.attendance === true) {
                                const $img = $("<img class='attendees_img'>").attr("src", "img/" + this.photo);
                                $("<li>").append($img).appendTo('.attendees_list');
                            }
                            if (this.attendance === false) {
                                const $img = $("<img class='attendees_img'>").attr("src", "img/" + this.photo);
                                $("<li>").append($img).appendTo('.not_attendees_list');
                            }
                            if (this.name === "������") {//�ڱ��� ��������
                                if (this.attendance === true) {
                                    $(".attendance_radio").prop("checked", true);
                                } else {
                                    $(".no_attendance_radio").prop("checked",true);
                                }
                            }
                        });//each() end
                    }//success() end
                });//ajax() end
            })//$(".no_attend_btn").click() end

            $(".attend_btn").click(function () {
                $(list).each(function () {
                    if(this.name==="������"){
                        this.attendance=true;
                    }
                })
                $.ajax({
                    url: "data/list.json",//��û�ϴ� �����ּ�
                    type: "GET", //Ŭ���̾�Ʈ -> ���� GET, POST
                    dataType: "json", //����->Ŭ���̾�Ʈ ������Ÿ��
                    error: function (xhr, code, type) {
                        alert("���� ������!");
                    },
                    success: function (json) {

                        const list = json;
                        const adnumber = list.filter(function (element) {
                            return element.attendance == true;
                        });
                        $(".not_attendees_list").empty();
                        $(".attendees_list").empty();
                        $(".attendees").text(adnumber.length + "��");
                        $(".non_attendees").text(list.length - adnumber.length + "��");
                        $(list).each(function () {
                            if (this.attendance === true) {
                                const $img = $("<img class='attendees_img'>").attr("src", "img/" + this.photo);
                                $("<li>").append($img).appendTo('.attendees_list');
                            }
                            if (this.attendance === false) {
                                const $img = $("<img class='attendees_img'>").attr("src", "img/" + this.photo);
                                $("<li>").append($img).appendTo('.not_attendees_list');
                            }
                            if (this.name === "������") {//�ڱ��� ��������
                                if (this.attendance === true) {
                                    $(".attendance_radio").prop("checked", true);
                                } else {
                                    $(".no_attendance_radio").prop("checked",true);
                                }
                            }
                        });//each() end
                    }//success() end
                });//ajax() end
            })//$(".attend_btn").click() end
            // ---------------------------------------------------------��ư Ŭ�� ��
        }//success end
    });//$.ajax() end

</script>
</body>
</html>
