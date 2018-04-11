<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<select id="station" name="station_code">
<option value="">정차역 선택</option>
<option value="0">2개 이상</option>


<c:forEach items="${trail}" var="trainlist">
<option value="${trainlist.station_code}">${trainlist.station_name}</option>
</c:forEach>
</select>