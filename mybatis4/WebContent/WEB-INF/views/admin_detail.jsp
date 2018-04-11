<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>admin_detail.jsp</title>
<style type="text/css">
img{
   max-height: 300px;
   max-width: 400px;      
   }

</style>
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
           
            <!-- /.navbar-static-side -->
        </nav>
        <div id="page-wrapper">
           <h2>문의 상세내역</h2>
           <hr />
           <c:forEach items="${result }" var="list">
              <div class="col-md-12">
                 <div class="col-md-5 col-xs-6">
                  <div class="col-md-2 col-xs-4 ">
                     <input type="text" style="width: 120px;" class="form-control text-center" value="제목" readonly="readonly" /></div>
                  <div class="col-md-9 col-xs-8">
                     <input type="text" value="${list.ques_title }" class="form-control" style="width: 510px;" />
                  </div>
               </div>
               <div class="col-md-7 ">
                  <div class="col-md-2  ">
                     <input type="text" style="width: 140px;" class="form-control text-center" value="작성일" readonly="readonly"  /></div>
                  <div class="col-md-3">
                     <input type="text" value="${list.ques_date }" style="width: 200px;" class="form-control"  />
                  </div>
               </div>
              
                 <table class="table table-bordered" style="margin-left:30px; width: 940px;">
                    <tr class="success text-center">
                       <th class="text-center">문의 상세 내역</th>
                    </tr>
                    <tr>
                       <td style="max-height:30%; max-width: 400px;">${list.ques_cont }</td>
                    </tr>
                 </table>
              </div>
            </c:forEach>
            <div class="col-md-12">
               <div class="col-md-2"></div>
               <div class="col-md-10 text-center">
                  <a href="/mybatis4/admin_queslist"><button class="btn btn-info" style="width: 150px; margin-left: 100px;">돌아가기 </button></a>
               </div>
            </div>
        </div>
</body>
</html>