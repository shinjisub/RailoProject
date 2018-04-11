<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="col-xs-7 col-xs-offset-2 text-center">
   <ul class="pagination pagination-sm">
      <li><a
         <c:if test="${pageMaker.prev}">href="${pageMaker.makeSearch(pageMaker.startPage-1)}"</c:if>
         aria-label="Previous"> <span aria-hidden="true">«</span>
      </a></li>
   
      <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}"
         var="idx">
         <li
            <c:out value="${pageMaker.cri.page == idx ? 'class=active' : '' }"/>>
            <a href="${pageMaker.makeSearch(idx)}#clients">${idx}</a>
         </li>
      </c:forEach>
      <li><a
         <c:if test="${pageMaker.next&&pageMaker.endPage>0}"> href="${pageMaker.makeSearch(pageMaker.endPage+1)}"</c:if>
         aria-label="Next"> <span aria-hidden="true">»</span>
      </a></li>
   </ul>
</div>