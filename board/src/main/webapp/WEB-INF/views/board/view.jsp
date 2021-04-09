<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 조회</title>
</head>
<body>
	<label>제목</label>
	${view.title}<br />
	
	<label>작성자</label>
	${view.writer}<br />
	
	<label>내용</label>
	${view.content}<br />
	
	
	<div>
		<a href="/board/modify?bno=${view.bno}">게시물 수정</a>
		<a href="/board/delete?bno=${view.bno}">게시물 삭제</a>
	</div>
	<!-- <button type="submit">작성</button> -->
	<!-- 댓글 시작 -->
	<hr/>
	
	<c:forEach items="${reply}" var="reply" varStatus="status">
		<li id="replyBoard${reply.rno}">
			<div>
				<p>${reply.writer} / <fmt:formatDate value="${reply.regDate}" pattern="yyyy-MM-dd"/></p>
				<p>${reply.content}</p>
			</div>		
			<a href="/reply/delete?bno=${view.bno}&rno=${reply.rno}">삭제</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="#" onclick="checkModify(${view.bno}, ${reply.rno}, '${reply.writer}', '${reply.content}')">댓글 수정</a>
		</li>
	</c:forEach>
	<div>
		<form name="rform" method="post" action="/reply/write">
			<input type="hidden" name="bno" value="${view.bno}">
			<p>
				<label>댓글 작성자</label> 
				<input type="text" name="writer" />
			</p>
			<p>
				<textarea rows="5" cols="50" name="content"></textarea>
			</p>
			<p>
				<a href="#" id="submitBtn">댓글 작성</a> 
			</p>
		</form>
	</div>	
	<!-- 댓글 끝 -->

<script>

function checkModify(bno, rno, writer, content) {
	var cell = document.getElementById("replyBoard"+rno);
	var stringTags;
	
	stringTags = "<form name='mform' method='post' action='/reply/modify'>";
	//stringTsgs += "<input type='hidden' name='bno' value='"+bno+"' />";
	//stringTsgs += "<input type='text' name='rno' value='"+rno+"' />";
	stringTags += "<div><p><input type='text' name='writer' value='"+writer+"'/> <input type='hidden' name='bno' value='"+bno+"' /> </p>";
	stringTags += "<p><input type='text' name='content' value='"+content+"'/> <input type='hidden' name='rno' value='"+rno+"' />  </p>";
	stringTags += "<a href='#' onclick='window.location.reload();'>취소</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
	stringTags += "<a href='#' onclick='modify();'>확인</a>";
	stringTags += "</div>";
	stringTags += "</form>";
	
	cell.innerHTML = stringTags 
}


document.getElementById("submitBtn").onclick = function () {
	var myform = document.forms["rform"];
	myform.action = "/reply/write";
	myform.submit();
};

//document.getElementById("modifyBtn").onclick = function () {
	//var myform2 = document.forms["mform"];
	//myform2.action = "/reply/modify";
	//myform2.submit();
	//alert("ok");
//};

function modify() {
	var myform2 = document.forms["mform"];
	myform2.action = "/reply/modify";
	myform2.submit();
	//alert("ok");
};
</script>

</body>
</html>