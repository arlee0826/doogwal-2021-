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
            position: fixed;
            background-color: white;
            z-index: 2;
        }
        #container{
            position: relative;
        }
        #footer{
            margin-top: 200px;
        }
        #content{
            width: 1080px;
            margin: auto;
        }
        table{
            border: 1px solid #bebebe;
        }
        .form_title{
            font-size: 40px;
            text-align: center;
            margin: 30px 0;
        }
        .first_td{ /*�� ���� ù��° ��*/
            width: 200px;
            height: 100px;
            font-size: 30px;
            border-bottom: 1px solid #bebebe;
            text-align: center;
            line-height: 100px;
            background-color: #dcdcdc;
        }
        .second_td{/*�ι� ° td*/
            width: 850px;
            padding-left: 60px;
            border-bottom: 1px solid #bebebe;
            vertical-align: middle;
            background-color: #F5F5F5;
        }
        .input_style1{ /*<input> �����̸�,���,ȸ��,�غ� */
            width: 230px;
            height: 14px;
            margin-right: 10px;
            font-size: 20px;
            /*box-sizing: border-box;*/
            padding: 8px 10px;
        }
        .detail_input textarea,.add_box_input,.input_style1:focus{/*<input> ��Ŀ���� ����*/
            outline-color: #ff6333;
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
        .counting_characters{/*���� �� ī��Ƽ ��*/
            font-size: 20px;
            vertical-align: bottom;
        }
        .detail_input textarea{/*���� �� ī��Ƽ ��*/
            width: 250px;
            height: 60px;
            vertical-align: middle;
            resize: none;
            margin-right: 10px;
        }
        .create_end_btn{/*<button>���� �����*/
            width: 200px;
            height: 50px;
            background-color: rgb(255, 91, 51);
            border-radius: 8px;
            border: none;
            outline: none;
            color: white;
            font-size: 30px;
            position: absolute;
            top: 850px;
            left: 50%;
            margin-left: -100px;
        }
        .create_end_btn:hover{/*��ư ������*/
            box-shadow: 0 2px 5px 0 rgb(255, 91, 51), 0 2px 10px 0 rgb(255, 91, 51);
            cursor: pointer;
        }
        .local_map{/*���� ����*/
            background-color: #bebebe;
            width: 431px;
            height: 303px;
            position: absolute;
            left: 60%;
            top: 402px;
        }
        .check_date,.span_one{/*<checkbox> �Ϸ�����, '��'*/
            vertical-align: bottom;
            font-size: 20px;
        }
        .each_preparation{/*�غ� �߰��� �ڽ�*/
            width: 210px;
            height: 30px;
            background-color: #FFAB40;
            font-size: 20px;
            text-align: center;
            line-height: 30px;
            border-radius: 8px;
            color: white;
            display: inline-block;
            position: relative;
            float: left;
            border: 1px solid #FF9100;
        }
        .each_preparation:nth-child(2){/*�غ� �ڽ����� ����*/
            margin-left: 4px;
        }
        .each_preparation a{/*�غ� �߰��� �ڽ��ȿ� �ִ� 'x'*/
            margin-left: 10px;
        }
        .each_preparation a:hover{/*�غ� �߰��� �ڽ� ������*/
            cursor: pointer;
            box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
        }
        .preparation_box{/*�� �غ� �ڽ��� ��� �θ�*/
            float: right;
            width: 431px;
        }
        .add_box_input{/*�غ� input*/
            width: 180px;
            height: 14px;
            float: left;
            padding: 8px 10px;
        }
        .add_btn{ /*�غ� input �� '�߰�' ��ư*/
            display: inline-block;
            width: 50px;
            height: 34px;
            border: none;
            font-size: 20px;
            font-weight: 700;
            color: white;
            text-align: center;
            line-height: 36px;
            background-color: #FF9100;
            border-bottom-right-radius: 8px;
            border-top-right-radius: 8px;
            margin-left: -1px;
        }
        .add_btn:hover{ /*�غ� input �� '�߰�' ��ư ������*/
            cursor: pointer;
            box-shadow:1px 1px 1px 1px #999;
        }
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
        }
        .my_address_label:hover{ /*<input>�ּ� �� ������ */
            cursor: pointer;
            box-shadow:1px 1px 1px 1px #999;
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

        <form>
            <div class="form_title"><h1>���� �����ϱ�</h1></div>
            <table>
                <tr>
                    <td class="first_td">���� �̸�</td>
                    <td class="second_td">
                        <input type="text" maxlength="10" class="input_style1 v1" id="nameGathering">
                        <span class="counting_characters v1_v">(0/10��)</span>
                    </td>
                </tr>
                <tr>
                    <td class="first_td">��¥</td>
                    <td class="second_td">
                        <input type="date" class="date_input">
                        <input type="time" class="input_time" id="startTime">
                        <span class="">~</span>
                        <input type="time" class="input_time" id="endTime">
                        <label class="check_date"><input type="checkbox" class="checkbox_date" name="allDay">�Ϸ�����</label>
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
                        <textarea maxlength="100" class="v2" id="meetingDetail"></textarea>
                        <span class="counting_characters v2_v">(0/100��)</span>
                    </td>
                </tr>
                <tr>
                    <td class="first_td">ȸ��</td>
                    <td class="second_td">
                        <input type="number" class="input_style1" value="0" id="dues">
                        <span class="span_one">��</span>
                    </td>
                </tr>
                <tr>
                    <td class="first_td">�غ�</td>
                    <td class="second_td">
                        <input placeholder="�ִ� 2��" maxlength="10" class="add_box_input v3">
                        <a class="add_btn">�߰�</a>
                        <span class="counting_characters v3_v">(0/10��)</span>
                        <div class="preparation_box">
                        </div>
                    </td>
                </tr>
                <div id="map" class="local_map"></div>
            </table>
            <input type="button" class="create_end_btn" value="���Ӹ����">
        </form>
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
    //textarea ���� ���ڼ� ����
    $('.v1').keyup(function (e) {

        let val = $('.v1').val();
        val = val.substr(0, 10);
        $('.v1').val(val);
        $('.v1_v').text("(" + val.length + " / 10��)");
    });
    $('.v2').keyup(function (e) {

        let val = $('.v2').val();
        val = val.substr(0, 100);
        $('.v2').val(val);
        $('.v2_v').text("(" + val.length + " / 100��)");
    });
    $('.v3').keyup(function (e) {
        let val = $('.v3').val();
        val = val.substr(0, 10);
        $('.v3').val(val);
        $('.v3_v').text("(" + val.length + " / 10��)");
        if (e.keyCode == 13) {
            createbox();
        }
    });
    //end textarea ���� ���ڼ� ����
    //--------------------------------------------------------------------------------�ּ� ã�� . ���� ���̱�
    var mapContainer = document.getElementById('map'), // ������ ǥ���� div
        mapOption = {
            center: new daum.maps.LatLng(37.537187, 127.005476), // ������ �߽���ǥ
            level: 5 // ������ Ȯ�� ����
        };
    //������ �̸� ����
    var map = new daum.maps.Map(mapContainer, mapOption);
    //�ּ�-��ǥ ��ȯ ��ü�� ����
    var geocoder = new daum.maps.services.Geocoder();
    //��Ŀ�� �̸� ����
    var marker = new daum.maps.Marker({
        position: new daum.maps.LatLng(37.537187, 127.005476),
        map: map
    });
    let mapnum = 0;  //��ȿ�� �˻� ������
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

                        // -------------------------------------------------------------------�ش� �ּҿ� ���� ��ǥ�� �޾Ƽ�
                        var coords = new daum.maps.LatLng(result.y, result.x);
                        // alert(coords);
                        // ������ �����ش�.
                        mapContainer.style.display = "block";
                        map.relayout();
                        // ���� �߽��� �����Ѵ�.
                        map.setCenter(coords);
                        // ��Ŀ�� ��������� ���� ��ġ�� �ű��.
                        marker.setPosition(coords)
                        // alert(coords);//-----------------------------------------------------�ּ� �߿�
                        mapnum++
                    }
                });
            }
        }).open();
    }
    //end �ּ� ã�� . ���� ���̱�
    //--------------------------------------------------�غ� �߰�
    $(".add_btn").click(createbox);
    let countnumber = 0;
    function createbox(){
        const value = $(".add_box_input").val();
        $(".add_box_input").val("").focus();
        const $a = $("<a class='delete_btn'>").append($("<i class='fas fa-times'>"));
        const $span = $("<span>").text(value);
        $("<div class='each_preparation'>").append($span,$a)
            .appendTo(".preparation_box");
        $('.v3_v').text("(0/10��)");
        countnumber++;
        if(countnumber==2){
            $(".add_box_input").attr("disabled",true);
            $(".add_btn").css({"pointer-events":"none",
                "background-color":"#bebebe"});
            $('.v3_v').text("");
        }
    }
    $(document).on("click",".delete_btn",function () {//�������� �߰��� ���� �̷��� �����ؾ� �̺�Ʈ �����
        $(this).parent().remove();
        countnumber--;

        $(".add_box_input").attr("disabled",false);
        $(".add_btn").css({"pointer-events":"auto",
            "background-color":"#FF9100"});
        $('.v3_v').text("(0/10��)");
    });

    $(".checkbox_date").click(function () {
        if($(this).prop("checked")==true){
            $(".input_time").prop("disabled",true);

        }else{
            $(".input_time").prop("disabled",false);
        }
    });

    $(".create_end_btn").click(function () {
        if ($("#nameGathering").val() === "") {
            alert("���� �̸��� �ۼ����ּ���");
            return false;
        }//�����̸�

        if ($(".date_input").val()===""){
         alert("��¥�� �����ּ���.");
            return false;
        }
        if
        (
            ($("input:checkbox[name=allDay]:checked").length<1)
            &&
            (($("#startTime").val()==="")||($("#endTime").val()===""))
        )
        {
                alert("��¥���� �ð��� �������ּ���.");
            return false;
        }
        if(mapnum<1){
            alert("��Ҹ� �����ϼ���");
            return false;
        }
       if($("#meetingDetail").val() ===""){
            alert("�󼼳����� �����ּ���");
           return false;
        }
        if($("#dues").val() ===""){
            alert("ȸ�� �����ּ���!");
            return false;
        }
      else
         $(".create_end_btn").attr("type","submit");
      return true;
    });

</script>
</body>
</html>