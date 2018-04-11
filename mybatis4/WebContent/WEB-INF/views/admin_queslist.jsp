<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>admin_queslist.jsp</title>

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
    <!-- jQuery -->
	<script
		src="resources/startbootstrap-sb-admin-2-gh-pages/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script
		src="resources/startbootstrap-sb-admin-2-gh-pages/vendor/bootstrap/js/bootstrap.min.js"></script>
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
        </nav>
        <script type="text/javascript">
        	function deletecheck(str) 
        	{
				if (confirm("해당 문의을 삭제하시겠습니까?")) 
				{
					//alert("/mybatis4/admin_delete?ques_num="+str);
					var href = "/mybatis4/admin_quesdelete?ques_num="+str;
					location.href = href;
				}
			}
        </script>
        <div id="page-wrapper">
           <div class="row text-center">
              <div class="col-md-12">
                 <h2 style="float:left;">문의 Q&A</h2>
                 <table class="table table-border text-center" >
                    <tr >
                       <th class="text-center">번호</th>
                       <th class="text-center">닉네임</th>
                       <th class="text-center">제목</th>
                       <th class="text-center">작성일</th>
                       <th class="text-center">답변여부</th>
                    </tr>
                 <c:forEach items="${queslist}" var="list" >   
                    <tr style="color: black;">
                        <td style="vertical-align:middle;">${list.ques_num }</td>
                               <td style="vertical-align:middle;">${list.nic }</td>
                             <td style="vertical-align:middle;"><a href="/mybatis4/admin_detail?ques_num=${list.ques_num}">${list.ques_title }</a></td>
                             <td style="vertical-align:middle;">${list.ques_date } </td>
                             
                            <c:set var="anser" value="${list.anser }"></c:set> 
                            <c:choose>
                                   <c:when test="${anser eq '답변 없음'}">
                              <td>
                                  <button type="button" class="btn btn-default" onclick="location.href='/mybatis4/admin_anser?ques_num=${list.ques_num}';">답변입력</button>
                            	  <button type="button" class="btn btn-danger" onclick="deletecheck('${list.ques_num}')">문의 삭제</button>
                              </td>
                           </c:when>  
                           <c:when test="${anser ne '답변 없음'}">
                              <td>
                                 <button type="button" class="btn btn-info"
                                 onclick="location.href='/mybatis4/admin_updateform?ques_num=${list.ques_num}';">수정</button>
                                 <button type="button" class="btn btn-danger" 
                                 onclick="deletecheck('${list.ques_num}')">삭제</button>
                              </td>
                           </c:when>                                 
                             </c:choose>
                    </tr>
                 </c:forEach>
                 </table>
                 <jsp:include page="./page.jsp"></jsp:include>
              </div>
              <!-- 검색단 시작 -->
              <div class="col-md-12 text-center">
                 <form action="" method="get">
                        <select  style="color: black; height: 30px;" name="searchType">
                           <option value="" selected="selected">검색유형</option>
                           <option value="1" ${pageMaker.cri.searchType == '1' ? 'selected' : ''}>닉네임</option>
                           <option value="2" ${pageMaker.cri.searchType == '2' ? 'selected' : ''}>제목</option>
                           <option value="3">답변없음</option>
                        </select>
                           <input type="text" name="keyword" maxlength="50" style="color: black; width: 300px; height: 30px;" value="${pageMaker.cri.keyword}"/>
                           <button type="submit" class="glyphicon glyphicon-search" style="height: 30px;">검색</button>
                   </form>  
              </div>
              <!-- 검색단 끝 -->
           </div>
        </div>
        
</div>
</body>
</html>