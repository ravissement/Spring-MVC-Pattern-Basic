<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 작성</title>
</head>
<body>

<div class="container">
	<div class="header">
	 <%@ include file="../include/nav.jsp" %>
	</div>
	<form name="wform" method="post" class="form-signin" style="margin-top:50px;">
	<table class="table">	
		<tr>
			<th style="width:10%;">제목</th>
			<td><input type="text" name="title" id="title" class="form-control"/></td>
			<th style="width:10%; text-align:center;">작성자</th>
			<td style="width:15%;"><input type="text" name="writer" id="writer" class="form-control" /></td>
		</tr>
		<tr>	
		<th>내용</th>
		<td colspan="4"><textarea cols="50" rows="5" name="content" id="content" class="form-control"></textarea></td>
		</tr>
	</table>
	</form>
	<input type="button" id="submitBtn" class="btn btn-lg btn-primary btn-block" style="width: 10%; margin: auto;" value="작성"/>
	<%@ include file="../include/footer.jsp" %>
</div>

<script type="text/javascript">

document.getElementById("submitBtn").onclick = function () {
	
	if (!$('#title').val()){
		alert("제목을 입력해주세요.");
		$('#title').focus();
		return false;
	}

	
	if (!$('#writer').val()){
		alert("작성자를 입력해주세요.");
		$('#writer').focus();
		return false;
	}

	if (!$('#content').val()){
		alert("내용을 입력해주세요.");
		$('#content').focus();
		return false;
	}
	
	var myform = document.forms["wform"];
	myform.action = "/board/write";
	myform.submit();
};

</script>


</body>
</html>