<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>admin_updateform.jsp</title>
 <!-- Bootstrap Core CSS -->
    <link href="resources/startbootstrap-sb-admin-2-gh-pages/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- MetisMenu CSS -->
    <link href="resources/startbootstrap-sb-admin-2-gh-pages/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/startbootstrap-sb-admin-2-gh-pages/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="resources/startbootstrap-sb-admin-2-gh-pages/vendor/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="resources/startbootstrap-sb-admin-2-gh-pages/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="col-md-12">
   <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <img id="logo" src="resources/images/logo.png" alt="Worthy">관리자
            </div>
            <!-- /.navbar-header -->

           <ul class="nav navbar-top-links navbar-right">
                <!-- /.dropdown -->
                <!-- 상단 로그아웃부분  -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li class="divider"></li>
                        <li><a href="/mybatis4/admin_logout"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

         <div class="navbar-default sidebar" role="navigation" style="border: 1px solid blue;margin-top: 50px;">
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
           
            <!-- /.navbar-static-side -->
        </nav>
        <div id="page-wrapper">
         <h2>답변 수정</h2>
         <hr />
         <form action="/mybatis4/admin_update" method="get">
         <c:forEach items="${list }" var="list">
         <div class="col-md-12">
            <div class="col-md-2">
               <input type="text" style="width:180px; height: 200px;" class="form-control text-center" value="내용" readonly="readonly" /></div>
            <div class="col-md-10">
               <input type="text"  class="form-control" style="width:850px; height: 200px;" value="${list.ques_cont }" />
            </div>
         </div>
         <div class="col-md-12 ">
            <div class="col-md-2 text-right">
               <input type="text" style="width:180px; height: 300px;" class="form-control text-center" value="답변작성" readonly="readonly"  /></div>
            <div class="col-md-10 text-left">
               <input type="text" name="anser"  class="form-control" style="width:850px; height: 300px;" value="${list.anser_cont }" />
            </div>
         </div>
         </c:forEach>
         <div class="col-md-12" style="margin-top: 20px;">
            <div class="col-md-10">
                  <button type="submit" class="btn btn-info">저장</button>
                  <input type="hidden" name="num" value="<%=request.getParameter("ques_num") %>"/>
            </div>
            <div class="col-md-2">
               <button type="button" class="btn btn-info" onclick="location.href='/mybatis4/admin_queslist'">취소</button>
            </div>
         </div>
      </form>
        </div>
       </div>
</body>
</html>