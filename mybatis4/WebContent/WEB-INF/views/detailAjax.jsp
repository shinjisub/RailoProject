<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="col-md-5">제목
   <input type="text" class="form-control"  readonly="readonly" id="ques_title" value="${rail.ques_title}" >
</div>
<div class="col-md-4">닉네임
   <input type="text" class="form-control" readonly="readonly" id="nic" value="${rail.nic}" >
</div>
<div class="col-md-3">날짜
   <input type="text" class="form-control" readonly="readonly" id="ques_date" value="${rail.ques_date}" >
</div>
	<br>내용
	<br>
<div class="col-md-12" id="ques_cont" style="background-color: gray;">
	${rail.ques_cont}
</div>
<br>
답변
	<br>
<div  class="col-md-12" style="background-color: gray;" >
	
	${rail.anser_cont }
</div>