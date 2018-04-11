<%@page import="com.test.mybatis.RailoDAOService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- <style>
   nav a{color:white;}
   nav a:hover{border-radius:15px;}
   li:active{border-radius:15px;}
</style> -->
<style>
#ques_detail img {
	max-width: 200px;
	max-height: 350px;
}
</style>
<html>
<head>
<meta charset="utf-8">
<title>main.jsp</title>
<meta name="description"
	content="Worthy a Bootstrap-based, Responsive HTML5 Template">
<meta name="author" content="htmlcoder.me">

<!-- Mobile Meta -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Favicon -->
<!-- <link rel="shortcut icon" href="resources/images/favicon.ico"> -->

<!-- Web Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,400,700,300&amp;subset=latin,latin-ext'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:700,400,300'
	rel='stylesheet' type='text/css'>

<!-- Bootstrap core CSS -->
<link href="resources/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- Font Awesome CSS -->
<link href="resources/fonts/font-awesome/css/font-awesome.css"
	rel="stylesheet">

<!-- Plugins -->
<link href="resources/css/animations.css" rel="stylesheet">

<!-- Worthy core CSS file -->
<link href="resources/css/style.css" rel="stylesheet">

<!-- Custom css -->
<link href="resources/css/custom.css" rel="stylesheet">
</head>

<body class="no-trans">
	<!-- scrollToTop -->
	<!-- ================ -->
	<div class="scrollToTop">
		<i class="icon-up-open-big"></i>
	</div>

	<!-- header start -->
	<!-- ================ -->
	<header class="header fixed clearfix navbar navbar-fixed-top">
	<div class="container">
		<div class="row">
			<div class="col-md-4">

				<!-- header-left start -->
				<!-- ================ -->
				<div class="header-left clearfix">

					<!-- logo -->
					<div class="logo smooth-scroll">
						<a href="#banner"><img id="logo"
							src="resources/images/logo.png" alt="Worthy"></a>
					</div>

					<!-- name-and-slogan -->
					<div class="site-name-and-slogan smooth-scroll">
						<div class="site-name">
							<a href="#banner">Railro</a>
						</div>
						<div class="site-slogan">
							<!-- <a target="_blank" href="http://htmlcoder.me">HtmlCoder</a> -->
						</div>
					</div>

				</div>
				<!-- header-left end -->

			</div>
			<div class="col-md-8">

				<!-- header-right start -->
				<!-- ================ -->
				<div class="header-right clearfix">

					<!-- main-navigation start -->
					<!-- ================ -->
					<div class="main-navigation animated">

						<!-- navbar start -->
						<!-- ================ -->
						<nav class="navbar" role="navigation">
						<div class="container-fluid">

							<!-- Toggle get grouped for better mobile display -->
							<div class="navbar-header">
								<button type="button" class="navbar-toggle"
									data-toggle="collapse" data-target="#navbar-collapse-1">
									<span class="sr-only">Toggle navigation</span> <span
										class="icon-bar"></span> <span class="icon-bar"></span> <span
										class="icon-bar"></span>
								</button>
							</div>

							<!-- Collect the nav links, forms, and other content for toggling -->
							<div class="collapse navbar-collapse scrollspy smooth-scroll"
								id="navbar-collapse-1">
								<ul class="nav navbar-nav navbar-right">
									<li class="active"><a href="#banner">내일로</a></li>
									<li><a href="#services">소개</a></li>
									<li><a href="#about">정보</a></li>
									<li><a href="#portfolio">추천정보</a></li>
									<li><a href="#clients">문의목록</a></li>
									<li><a href="#contact">문의</a></li>
								</ul>
							</div>

						</div>
						</nav>
						<!-- navbar end -->

					</div>
					<!-- main-navigation end -->

				</div>
				<!-- header-right end -->

			</div>
		</div>
	</div>
	</header>
	<!-- header end -->

	<!-- banner start -->
	<!-- ================ -->

	<div id="banner" class="banner">
		<div class="banner-image"></div>
		<div class="banner-caption">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 object-non-visible"
						data-animation-effect="fadeIn">
						<h1 class="text-center">
							여행으로 <span>,나를 완성하다</span>
						</h1>
						<p class="lead text-center">
							떠나는 이유. 늘 여행을 꿈꾸면서도 떠나지 못하는 사람들에게는 <br> 수백가지 이유가 있다.
						</p>
						<p class="lead text-center">
							여행을 떠나는 사람들의 이유는 단 한가지. <br> 지금. 떠나야하기 때문이다.
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- banner end -->
	<!-- section start -->
	<!-- ================ -->
	<div class="section translucent-bg bg-image-1 ">
		<div class="container object-non-visible"
			data-animation-effect="fadeIn">
			<h1 id="services" class="text-center title">Railo 소개</h1>
			<div class="space"></div>
			<div class="row">
				<div class="col-md-3" >
					<img alt="소개사진" src="resources/images/sogepicture.jpg"
						style="height: 550px;">
				</div>
				<div class="space visible-xs"></div>
				<div class="col-md-8">
					<hr>
					<h3>
						<p>우선 저희 Railo 홈페이지를 이용해 주셔 감사합니다</p>
					</h3>
					<h3>
						<p>저희는 젊은 청춘들만에 특권이자 추억인 내일로 정보를 제공해주고자</p>
					</h3>
					<h3>
						<p>홈페이지를 만들게 되었으며 저희가 추천한 코스를 보시면서 내일로 여행</p>
					</h3>
					<h3>
						<p>코스를 조금더 쉽게 계획하며 즐기셧으면 좋겠습니다.</p>
					</h3>
					<h3>
						<p>감사합니다.</p>
					</h3>
					<img alt="" src="resources/images/tit_img_rail.jpg">
				</div>
			</div>
		</div>
	</div>
	<!-- section end -->
	<!-- section start -->
	<!-- ================ -->
	<div class="section clearfix object-non-visible"
		data-animation-effect="fadeIn">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1 id="about" class="title text-center">
						<span>Information</span>
					</h1>
					<p class="lead text-center">이용하기 전에 미리 알고 있으면 좋은 정보들</p>
					<div class="space"></div>
					<div class="row">
						<div class="col-md-6">
							<img src="resources/images/section-image-1.png" alt="">
							<div class="space"></div>
						</div>
						<div class="col-md-6">
							<p>2007년에 계획, 처음 발매하였으며, 그 기대속에 2008, 2009년에도 발매를 시작하였다. 참고로
								이 내일로를 내놓게 해준 공로자는 코레일 고객 대표인데, 이 고객 대표 회의에서 처음으로 언급되었다. 어느 정도는
								철도 동호인의 노력이 있었던 셈. 2009년부터는 겨울 시즌에도 발매하고 있다. 가격은 60,000원이기 때문에,
								열차를 한두 번 탈 것이 아니라면 상당히 좋은 편이다.</p>
							<p>또한 여름기간(6월 ~ 9월)/겨울기간(12월~2월) 한정이고, 더군더나 연령제한도 있는 티켓이다.</p>

							&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span
								style="color: blue; text-align: center;">청춘 18 티켓 과 다른점</span>
							<ul class="list-unstyled">
								<li><i class="fa fa-caret-right pr-10 text-colored"></i> 청춘
									18 티켓은 연령제한이 없다. 하지만 내일로는 연령제한이 있다.</li>
								<li><i class="fa fa-caret-right pr-10 text-colored"></i> 청춘
									18 티켓은 무기명식이고 양도가 가능하나, 내일로는 기명식이고 본인만 사용할 수 있다.</li>
								<li><i class="fa fa-caret-right pr-10 text-colored"></i>
									연령제한이 없는 대신 청춘 18 티켓은 5일 비연속식이다. 5장으로 구성되어있고 티켓 1장이 하루에 해당한다.
									기간내라면 여유있게 탈 수 있다.</li>
								<li><i class="fa fa-caret-right pr-10 text-colored"></i> 청춘
									18 티켓은 보통 혹은 (신)쾌속등급만 이용할 수 있지만, 내일로는 특급격이라고 할 수 있는 ITX까지 이용
									가능하다.</li>
								<li><i class="fa fa-caret-right pr-10 text-colored"></i> 청춘
									18 티켓은 야간 열차 탑승시, 해당일 자정을 넘는 순간, 그 다음 정차역까지만 유효하지만, 내일로티켓은, 해당
									열차의 종착역까지 이용할 수 있다.</li>
							</ul>
						</div>
					</div>
					<div class="space"></div>
					<h2>인기가 좋은 지역의 예시</h2>
					<div class="row">
						<div class="col-md-6">
							<p>1) 일단 역에서 내려 조금만 이동하면 바로 바닷가가 나오는 경우.</p>
							<br>
							<p>2) 해당 시/군이 볼거리, 먹거리 등의 관광도시로 유명한 경우</p>
							<br>
							<p>3) 해당 시/군이 규모가 작은데 볼거리가 많아 당일치기 여행이 가능한 경우</p>
							<br>
							<p>
								4) 해당 도시가 교통로의 극단에 위치한 메갈로폴리스인 경우. <br>이 경우는 목적지가 굉장히 유명한데도
								자신이 사는 도시와 거리가 멀어 평소에는 가기 힘들다가 이런 기회에 찾아가는 경우가 많다.
							</p>
							<br>
							<p>
								5) 해당 역이 주요 노선의 결절점에 해당하는 허브 위치인 경우. <br>이런 경우는 목적지에 도달하기
								위해서라도 내려야만 하는데, 단순히 환승만 하는 게 아니라 끼니를 때우거나 무언가 볼거리가 없나 하고 둘러보게
								된다. 다만 행동 반경이 역 주변으로만 한정된다는 제한이 있다. 익산시나 제천시처럼 관광도시로서의 입지는 비교적
								약한 도시들도 있다.
							</p>
							<br>
							<p>6) 특정 이벤트 시기 수요가 급증하는 경우</p>
						</div>
						<div class="col-md-6">
							<div class="panel-group" id="accordion" role="tablist"
								aria-multiselectable="true">
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingOne">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseOne" aria-expanded="true"
												aria-controls="collapseOne"> 내일로 티켓 정보 </a>
										</h4>
									</div>
									<div id="collapseOne" class="panel-collapse collapse in"
										role="tabpanel" aria-labelledby="headingOne">
										<div class="panel-body">
											<!-- Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher. -->
											<a data-toggle="modal" data-target="#image"><img alt=""
												src="resources/images/check.PNG"></a>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingTwo">
										<h4 class="panel-title">
											<a class="collapsed" data-toggle="collapse"
												data-parent="#accordion" href="#collapseTwo"
												aria-expanded="false" aria-controls="collapseTwo"> 내일로
												정차역 지도 </a>
										</h4>
									</div>
									<div id="collapseTwo" class="panel-collapse collapse"
										role="tabpanel" aria-labelledby="headingTwo">
										<div class="panel-body">
											<a data-toggle="modal" data-target="#image-1"><img alt=""
												src="resources/images/map.png"></a>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingThree">
										<h4 class="panel-title">
											<a class="collapsed" data-toggle="collapse"
												data-parent="#accordion" href="#collapseThree"
												aria-expanded="false" aria-controls="collapseThree">
												이용가능한 열차와 불가능한 열차 </a>
										</h4>
									</div>
									<div id="collapseThree" class="panel-collapse collapse"
										role="tabpanel" aria-labelledby="headingThree">
										<div class="panel-body">
											<a data-toggle="modal" data-target="#image-2"><img alt=""
												src="resources/images/stop.png"></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- section end -->
	<div class="modal fade" id="image" style="width: 80%;">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
				</button>
			</div>
			<div class="modal-body">
				<img alt="" src="resources/images/check.PNG">
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-sm btn-default"
					data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
	<div class="modal fade" id="image-1" style="width: 80%;">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
				</button>
			</div>
			<div class="modal-body">
				<img alt="" src="resources/images/map.png">
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-sm btn-default"
					data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
	<div class="modal fade" id="image-2" style="width: 80%;">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
				</button>
			</div>
			<div class="modal-body">

				<h2>이용 가능 열차</h2>
				<p>다음에 해당하는 열차는 입석 또는 자유석으로 이용할 수 있다. 즉, 무궁화호 이상 새마을호 및 ITX-청춘
					이하 열차의 일반실이다.</p>
				<p>ITX-청춘</p>
				<p>ITX-새마을</p>
				<p>새마을호 일반실</p>
				<p>무궁화호 일반실</p>
				<p>누리로</p>
				<p>경북관광순환테마열차 1호차, 2호차 객실</p>
				<p>통근열차</p>
				<br> <br> <br>
				<h2>이용 불가능 열차</h2>
				<p>다음에 해당하는 열차는 내일로 티켓으로 이용할 수 없다. 이용하고자 한다면 내일로 티켓과 상관없는 별도의
					승차권을 구입해야 한다.</p>
				<p>KTX : 프리미엄 내일로 티켓 이용시 2회 좌석 지정 후 이용이 가능하다.</p>
				<p>인천국제공항철도 : 직통열차 정상가 14,800원 대신 6,900원 할인 이용은 가능하다.</p>
				<p>각 열차의 특실</p>
				<p>수도권 전철 등 각 지역 도시, 광역 철도</p>
				<p>각종 관광, 전세, 군용 열차 및 차량</p>
				<p>레일크루즈 해랑, 바다열차, 와인시네마트레인, 통통통 뮤직카페트레인, 군전세객차 등</p>


			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-sm btn-default"
					data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>


	<!-- section start -->
	<!-- ================ -->
	<div class="default-bg space grey">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<h3 class="text-center">딱 떠나는거야~ 내일로</h3>
				</div>
			</div>
		</div>
	</div>
	<!-- section end -->

	<!-- section start -->
	<!-- ================ -->
	<div class="section">
		<div class="container">
			<h1 class="text-center title" id="portfolio">추천 정보</h1>
			<div class="separator"></div>
			<p class="lead text-center">
				저희 <span style="color: blue; font-weight: bold;">Railo</span> 홈페이지에서
				추천해드리는 공간입니다.
			</p>
			<br>
			<div class="row object-non-visible" data-animation-effect="fadeIn">
				<div class="col-md-12">

					<!-- isotope filters start -->
					<div class="filters text-center">
						<ul class="nav nav-pills">
							<!-- <li class="active"><a href="#" data-filter="*">All</a></li>
							<li><a href="#" data-filter=".web-design">Web design</a></li>
							<li><a href="#" data-filter=".app-development">App
									development</a></li>
							<li><a href="#" data-filter=".site-building">Site
									building</a></li>
							<li><a href="#" data-filter=".sample">Sample</a></li> -->
							지역:
							<li class="active"><a href="#" data-filter="*">전국</a></li>
							<li class="active"><a href="#" data-filter=".수도권">수도권</a></li>
							<li class="active"><a href="#" data-filter=".강원도">강원도</a></li>
							<br>
							<li class="active"><a href="#" data-filter=".충청남도">충청남도</a></li>
							<li class="active"><a href="#" data-filter=".충청북도">충청북도</a></li>
							<li class="active"><a href="#" data-filter=".경상북도">경상북도</a></li>
							<li class="active"><a href="#" data-filter=".경상남도">경상남도</a></li>
							<li class="active"><a href="#" data-filter=".전라북도">전라북도</a></li>
							<li class="active"><a href="#" data-filter=".전라남도">전라남도</a></li>
							<br>
							<br> 정보 유형 :
							<li class="active"><a href="#" data-filter="*">전체</a></li>
							<li class="active"><a href="#" data-filter=".숙소">숙소</a></li>
							<li class="active"><a href="#" data-filter=".관광">관광</a></li>
							<li class="active"><a href="#" data-filter=".맛집">맛집</a></li>
							<li class="active"><a href="#" data-filter=".코스">코스</a></li>
						</ul>

					</div>
					<!-- isotope filters end -->
					<%
						
					%>
					<script type="text/javascript">
						function countup(info_num) 
						{
							var cookie = getCookie(info_num);
							if (cookie == "") 
							{
								xhttp = new XMLHttpRequest();

								xhttp.open("GET", "countup?info_num=" + info_num, true);

								xhttp.send();
								
								//alert("조회수 증가");
								var d = new Date();
								d.setDate(d.getDate()+1/24);
								var expires ="expires="+d.toGMTString();
								document.cookie=info_num+"="+info_num+";"+expires;
							}
							else 
							{
								//alert("그냥 열림");
								
							}
						}
						
						function getCookie(cname){
							alert("cname : "+cname);
							var name = cname + "=";

							var ca = document.cookie.split(';');

							for(var i=0; i<ca.length;i++){

							var c = ca[i];

							while(c.charAt(0)==' ') c = c.substring(1);

							if(c.indexOf(name) == 0) return c.substring(name.length,c.length);

							}

							return "";

							}


					</script>

					<!-- portfolio items start -->
					<div class="isotope-container row grid-space-20">

						<c:forEach items="${infolist}" var="list">

							<div 
								class="col-sm-6 col-md-3 isotope-item  ${list.city_name } ${list.info_name}"
								onclick="countup(${list.info_num})">


								<div class="image-box">
									<div class="overlay-container">
										<%-- <img src="${list.image }" alt=""> --%>
										<img src="${list.image }" alt=""> <a class="overlay"
											data-toggle="modal" data-target="#project-${list.info_num }">
											<i class="fa fa-search-plus"></i> <span>내용 더보기</span>
										</a>
									</div>
									<a class="btn btn-default btn-block" data-toggle="modal"
										data-target="#project-${list.info_num }">${list.info_title }</a>
								</div>


								<!-- Modal -->
								<div class="modal fade" id="project-${list.info_num }"
									tabindex="-1" role="dialog"
									aria-labelledby="project-${list.info_num }-label"
									aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal">
													<span aria-hidden="true">&times;</span><span
														class="sr-only">Close</span>
												</button>
												<h4 class="modal-title" id="project-${list.info_num }-label">${list.info_title }</h4>
											</div>
											<div class="modal-body">
												<h3>조회수 ${list.count }</h3>
												<div class="row">${list.info_cont}</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-sm btn-default"
													data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
								<!-- Modal end -->
							</div>

						</c:forEach>

					</div>
					<!-- portfolio items end -->

				</div>
			</div>
		</div>
	</div>
	<!-- section end -->

	<!-- section start -->
	<!-- ================ -->
	<div class="section translucent-bg bg-image-2 pb-clear">
		<div class="container object-non-visible"
			data-animation-effect="fadeIn">
			<h1 id="clients" class="title text-center">QUESTION LIST</h1>
			<div class="space"></div>
			<div class="row">
				<table class="table">
					<tr class="">
						<th>번호</th>
						<th>이름</th>
						<th>제목</th>
						<th>등록일</th>
						<th>답변여부</th>
					</tr>

					<c:forEach var="queslist" items="${queslist }">
						<tr onclick="detailques('${queslist.ques_num }')">
							<td>${queslist.ques_num }</td>
							<td>${queslist.nic }</td>
							<td>${queslist.ques_title }</td>
							<td>${queslist.ques_date }</td>
							<td>${queslist.anser }</td>
						</tr>
					</c:forEach>
				</table>
				<jsp:include page="./page.jsp"></jsp:include>

				<script type="text/javascript">
					function detailques(str) {
						if (str == "") {

							$('#station').empty();
							return;
						}

						xhttp = new XMLHttpRequest();

						xhttp.open("GET", "search?ques_num=" + str, true);

						xhttp.send();

						xhttp.onreadystatechange = function() {
							if (this.readyState == 4 && this.status == 200) {

								document.getElementById("ques_detail").innerHTML = this.responseText;
							}
						};

					}
				</script>

				<div id="ques_detail"></div>
			</div>
			<div class="row"></div>
		</div>
		<!-- section start -->
		<!-- ================ -->
		<div class="translucent-bg ">
			<div class="container">
				<div class="list-horizontal"></div>
			</div>
		</div>
	</div>
	<!-- section end -->
	</div>
	<!-- section end -->

	<!-- section start -->
	<!-- ================ -->
   <div class="default-bg space">
      <div class="container">
         <div class="row">
         <form action="#clients" method="get">
            <div class="col-md-8 col-md-offset-3">
               <div class="col-md-8 text-center">
                  <select style="color: black; height: 30px;" name="searchType">
                     <option value="0" ${pageMaker.cri.searchType == '0' ? 'selected' : ''} >검색유형</option>
                     <option value="1" ${pageMaker.cri.searchType == '1' ? 'selected' : ''} >닉네임</option>
                     <option value="2" ${pageMaker.cri.searchType == '2' ? 'selected' : ''} >제목</option>
                  </select> <input type="text" name="keyword" maxlength="50"
                     style="color: black; width: 300px; height: 30px;" value="${pageMaker.cri.keyword}" /> 
                  <button class="glyphicon glyphicon-search" style="height: 30px;">검색</button>
               </div>
            </div>
         </form>
         </div>
      </div>
   </div>
	<!-- section end -->

	<!-- footer start -->
	<!-- ================ -->
	<footer id="footer"> <!-- .footer start --> <!-- ================ -->
	<div class="footer section">
		<div class="container">
			<h1 class="title text-center" id="contact">Questioin</h1>
			<div class="space"></div>
			<div class="row">
				<div class="col-sm-6">
					<div class="footer-content">
						<p class="large">이용 시 불편한 점이나 문의하실게 있으시면 작성해주세요</p>
						<ul class="list-icons">
							<li><i class="fa fa-map-marker pr-10"></i>가산디지털단지역 Hollys</li>
							<li><i class="fa fa-phone pr-10"></i> +012 9293 2526</li>
							<!-- <li><i class="fa fa-fax pr-10"></i> +00 1234567891 </li> -->
							<li><i class="fa fa-envelope-o pr-10"></i> railo@gmail.com</li>
						</ul>
						<ul class="social-links">
							<li><img alt=""
								src="resources/images/thumb-2348839987_1462249917.5682_600x462.jpg"></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="footer-content">
						<form role="form" method="post" id="footer-form"
							action="/mybatis4//quesinsertcheck">
							<div class="form-group has-feedback">
								<label class="sr-only" for="name2">Nicname</label> <input
									type="text" class="form-control" id="nic" placeholder="Nicname"
									name="nic" required> <i
									class="fa fa-user form-control-feedback"></i>
							</div>
							<div class="form-group has-feedback">
								<label class="sr-only" for="email2">title</label> <input
									type="text" class="form-control" id="ques_title"
									placeholder="title" name="ques_title" required> <i
									class="fa fa-comment-o form-control-feedback"></i>
							</div>
							<div class="form-group has-feedback">
								<label class="sr-only" for="message2">Message</label>
								<textarea class="form-control" rows="8" id="ckeditor"
									placeholder="Message" name="ques_cont" required></textarea>
								<i class="fa fa-pencil form-control-feedback"></i>
							</div>
							<select name="ques_code">
								<option value="1">내일로 문의</option>
								<option value="2">스탬프 문의</option>
								<option value="3">추천정보 문의</option>
								<option value="4">기타 문의</option>
								<option value="5">정차역 문의</option>
								<option value="6">정보제공</option>
								<option value="7">후원문의</option>
							</select> <input type="submit" value="Send" class="btn btn-default">
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- .footer end --> <!-- .subfooter start --> <!-- ================ -->
	<div class="subfooter">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<p class="text-center">
						© 2017 김진호, 신지섭 by <a target="_blank" href="http://htmlcoder.me">회사
							소개</a>
					</p>
				</div>
			</div>
		</div>
	</div>
	<!-- .subfooter end --> </footer>
	<!-- footer end -->

	<!-- JavaScript files placed at the end of the document so the pages load faster
		================================================== -->
	<!-- Jquery and Bootstap core js files -->
	<script type="text/javascript" src="resources/plugins/jquery.min.js"></script>
	<script type="text/javascript"
		src="resources/bootstrap/js/bootstrap.min.js"></script>

	<!-- Modernizr javascript -->
	<script type="text/javascript" src="resources/plugins/modernizr.js"></script>

	<!-- Isotope javascript -->
	<script type="text/javascript"
		src="resources/plugins/isotope/isotope.pkgd.min.js"></script>

	<!-- Backstretch javascript -->
	<script type="text/javascript"
		src="resources/plugins/jquery.backstretch.min.js"></script>

	<!-- Appear javascript -->
	<script type="text/javascript" src="resources/plugins/jquery.appear.js"></script>

	<!-- Initialization of Plugins -->
	<script type="text/javascript" src="resources/js/template.js"></script>

	<!-- Custom Scripts -->
	<script type="text/javascript" src="resources/js/custom.js"></script>

	<!-- ckeditor 적용 script  -->
	<script type="text/javascript" src="resources/ckeditor/ckeditor.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


	<!-- 실행문 ck이름으로 된것에 에디터 적용  -->
	<script>
	    $(function(){
	         
	        CKEDITOR.replace( 'ckeditor', {//해당 이름으로 된 textarea에 에디터를 적용
	            width:'100%',
	            height:'400px',
	            filebrowserImageUploadUrl: 'http://localhost:8091/mybatis4/community/imageUpload' //여기 경로로 파일을 전달하여 업로드 시킨다.
	        });
	         
	         
	        CKEDITOR.on('dialogDefinition', function( ev ){
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
</body>
</html>