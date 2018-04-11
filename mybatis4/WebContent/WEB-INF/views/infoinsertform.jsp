<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>추천정보 입력</title>
<link href="resources/css/map.css" type="text/css" rel="stylesheet">

<!-- Bootstrap Core CSS -->
<link
	href="resources/startbootstrap-sb-admin-2-gh-pages/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- MetisMenu CSS -->
<link
	href="resources/startbootstrap-sb-admin-2-gh-pages/vendor/metisMenu/metisMenu.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link
	href="resources/startbootstrap-sb-admin-2-gh-pages/dist/css/sb-admin-2.css"
	rel="stylesheet">

<!-- Morris Charts CSS -->
<link
	href="resources/startbootstrap-sb-admin-2-gh-pages/vendor/morrisjs/morris.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="resources/startbootstrap-sb-admin-2-gh-pages/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script type="text/javascript" src="resources/ckeditor/ckeditor.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	$(function() {

		CKEDITOR.replace('ckeditor',
						{//해당 이름으로 된 textarea에 에디터를 적용
							width : '100%',
							height : '400px',
							filebrowserImageUploadUrl : 'http://localhost:8091/mybatis4/community/imageUpload' //여기 경로로 파일을 전달하여 업로드 시킨다.
						});

		CKEDITOR.on('dialogDefinition', function(ev) {
			var dialogName = ev.data.name;
			var dialogDefinition = ev.data.definition;
			switch (dialogName) {
			case 'image': //Image Properties dialog
				//dialogDefinition.removeContents('info');
				dialogDefinition.removeContents('Link');
				dialogDefinition.removeContents('advanced');
				break;
			}
		});
		


	});
</script>
</head>
<body>
	<div id="wrapper">
		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<img id="logo" src="resources/images/logo.png" alt="Worthy">관리자
		</div>
		<!-- /.navbar-header -->

		<ul class="nav navbar-top-links navbar-right">
			<!-- /.dropdown -->
			<!-- 상단 로그아웃부분  -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-user">
					<li class="divider"></li>
					<li><a href="/mybatis4/admin_logout"><i class="fa fa-sign-out fa-fw"></i>
							Logout</a></li>
				</ul> <!-- /.dropdown-user --></li>
			<!-- /.dropdown -->
		</ul>
		<!-- /.navbar-top-links -->
		<div class="navbar-default sidebar" role="navigation" style="margin-top: 50px;">
                <div class="sidebar-nav navbar-collapse" style="margin-top: 80px;">
                    <ul class="nav" id="side-menu">
                        <li>
                           <a href="/mybatis4/admin"><i class="fa fa-bar-chart-o fa-fw">
                            </i> Charts<span class="fa arrow"></span></a>
                        </li>
                        <li>
                           <a href="#"><i class="fa fa-dashboard fa-fw">
                           </i> 추천정보 <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                               <li>
                                  <a href="/mybatis4/infoinsertform"><i class="fa fa-files-o fa-fw">
                                     </i>추천정보 입력 
                                 </a>
                                 </li>
                                 <li>
                                  <a href="/mybatis4/infolist"><i class="fa fa-files-o fa-fw">
                                     </i>추천정보 리스트 
                                 </a>
                                 </li>
                              </ul> 
                        </li>
                        <li>
                            <a href="/mybatis4/admin_queslist"><i class="fa fa-files-o fa-fw">
                            </i>Q & A답변<span class="fa arrow"></span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
           <!--사이드바 끝부분  --> 

		<div id="page-wrapper">
			<form action="/mybatis4/infoinsertcheck" method="post"
				onsubmit="">


				<script type="text/javascript">
					function stationselect(str) {
						if (str == "") {//--셀렉박스값이 NULL일경우 싹다 비우고 지역선택을 생성하고 종료한다

							$('#station').empty();
							$('#station').append("<option value=''>지역 선택</option>");
							return;
						}

						xhttp = new XMLHttpRequest(); //--임시 페이지 만들기

						xhttp.open("GET", "trail?city_code=" + str, true); //--trail 페이지에 city_code로 얻은 리스트 값들을 뿌려준다

						xhttp.send();//얻을 것을 본낸다

						xhttp.onreadystatechange = function() {
							if (this.readyState == 4 && this.status == 200) {

								document.getElementById("station_div").innerHTML = this.responseText;
							}
						};

					}
				</script>


				<input type="text" placeholder="Title 을 입력하세요 " name="info_title"
					style="width: 60%;"> <select name="city_code" id="city"
					onchange="stationselect(this.value)">
					<option value="">지역 선택</option>
					<option value="0">2곳 이상</option>
					<option value="1">수도권</option>
					<option value="2">강원도</option>
					<option value="3">충청남도</option>
					<option value="4">충청북도</option>
					<option value="5">경상남도</option>
					<option value="6">경상북도</option>
					<option value="7">전라남도</option>
					<option value="8">전라북도</option>
				</select>

				<div id="station_div">
					<select id="station" name="station_code">
						<option value="">정차역 선택</option>

						<%-- <c:import url="/WEB-INF/views/trail.jsp"></c:import> --%>

					</select>
				</div>

				<select name="info_code">
					<option value="">정보 유형 선택</option>
					<option value="1">관광</option>
					<option value="2">숙소</option>
					<option value="3">맛집</option>
					<option value="4">코스</option>
				</select> <input type="submit" value="전송">
				<textarea class="form-control" rows="8" id="ckeditor"
					name="info_cont" required></textarea>

				

			</form>
			





		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->



</body>

</html>