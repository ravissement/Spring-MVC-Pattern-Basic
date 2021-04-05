<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 LIST</title>
</head>
<body>
<div id="nav">
 <%@ include file="../include/nav.jsp" %>
</div>

<table>
	<thead>
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>작성일</td>
			<td>작성자</td>
			<td>조회수</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${list}" var="list">
			<tr>
				<td>${list.bno}</td>
				<td><a href="/board/view?bno=${list.bno}">${list.title}</a></td>
				<td><fmt:formatDate value="${list.regDate}" pattern="yyyy-MM-dd" /></td>
				<td>${list.writer}</td>
				<td>${list.viewCnt}</td>		
			</tr>
		</c:forEach>
	</tbody>
</table>

<div>
	<c:if test="${page.prev}">
		<span>[ <a href="/board/listPage?num=${page.startPageNum - 1}">이전</a> ]</span>
	</c:if>
	
	<c:forEach begin="${page.startPageNum}" end="${page.endPageNum}" var="num">
		<span>
		<a href="/board/listPage?num=${num}">${num}</a> 
		</span>
	</c:forEach>
	
	<c:if test="${page.next}">
		<span>[ <a href="/board/listPage?num=${page.endPageNum + 1}">다음</a> ]</span>
	</c:if>
</div>

</body>
</html>