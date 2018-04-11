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

<title>Railo_Admin</title>

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
					<li><a href="/mybatis4/admin_logout"><i
							class="fa fa-sign-out fa-fw"></i> Logout</a></li>
				</ul> <!-- /.dropdown-user --></li>
			<!-- /.dropdown -->
		</ul>
		<!-- /.navbar-top-links -->

		<div class="navbar-default sidebar" role="navigation"
			style=" margin-top: 50px;">
			<div class="sidebar-nav navbar-collapse" style="margin-top: 80px;">
				<ul class="nav" id="side-menu">
					<li><a href="/mybatis4/admin"><i
							class="fa fa-bar-chart-o fa-fw"> </i> Charts<span
							class="fa arrow"></span></a></li>
					<li><a href="#"><i class="fa fa-dashboard fa-fw"> </i>
							추천정보 <span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="/mybatis4/infoinsertform"><i
									class="fa fa-files-o fa-fw"> </i>추천정보 입력 </a></li>
							<li><a href="/mybatis4/infolist"><i
									class="fa fa-files-o fa-fw"> </i>추천정보 리스트 </a></li>
						</ul></li>
					<li><a href="/mybatis4/admin_queslist"><i
							class="fa fa-files-o fa-fw"> </i>Q & A답변<span class="fa arrow"></span>
					</a></li>
				</ul>
			</div>
		</div>
		<!--사이드바 끝부분  --> <!-- /.navbar-static-side --> </nav>

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Charts</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-6">
					<div class="panel panel-default">
						<div class="panel-heading"><h4>월별 문의유형</h4></div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div id="morris-area-chart"></div>
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-6 -->
				<div class="col-lg-6">
					<div class="panel panel-default">
						<div class="panel-heading"><h4>도시 및 정보유형 조회수</h4></div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div id="morris-bar-chart"></div>
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-6 -->
				<!-- /.col-lg-6 -->
				<div class="col-lg-6">
					<div class="panel panel-default">
						<div class="panel-heading"><h4>정보유형 별 그래프</h4></div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div id="morris-donut-chart"></div>
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-6 -->
				<div class="col-lg-12">
					<div class="panel panel-default">
						<!-- /.panel-heading -->
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-6 -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script
		src="resources/startbootstrap-sb-admin-2-gh-pages/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script
		src="resources/startbootstrap-sb-admin-2-gh-pages/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script
		src="resources/startbootstrap-sb-admin-2-gh-pages/vendor/metisMenu/metisMenu.min.js"></script>

	<!-- Morris Charts JavaScript -->
	<script
		src="resources/startbootstrap-sb-admin-2-gh-pages/vendor/raphael/raphael.min.js"></script>
	<script
		src="resources/startbootstrap-sb-admin-2-gh-pages/vendor/morrisjs/morris.min.js"></script>
	<script
		src="resources/startbootstrap-sb-admin-2-gh-pages/data/morris-data.js"></script>
	<!-- Custom Theme JavaScript -->
	<script
		src="resources/startbootstrap-sb-admin-2-gh-pages/dist/js/sb-admin-2.js"></script>

</body>

</html>