<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
</head>
<body>


<div class="container">
	<div class="header">
		 <%@ include file="../include/homeNav.jsp" %>
	</div>
	<div class="jumbotron">
		<h2>Join</h2>
		<p>As of v8.0, Safari exhibits a bug in which resizing your browser horizontally causes rendering errors in the justified nav that are cleared upon refreshing.</p>
   		<p>Donec id elit non mi porta gravida at eget metus.</p>
	</div>
	<form method="post" class="form-signin" action="/user/join" style="margin-top:50px;">
			ID : <input type="text" name="user_id" class="form-control"/> <br/>
			PW : <input type="text" name="user_pw" class="form-control"/> <br/>
			NAME : <input type="text" name="user_name" class="form-control"/> <br/>
			PHONE : <input type="text" name="user_phone" class="form-control"/> <br/>
			EMAIL : <input type="text" name="user_email" class="form-control"/> <br/>
			<p style="text-align: center;"><button type="submit" class="btn btn-lg btn-primary btn-block" style="width: 20%; margin: auto;">작성</button></p>
	</form>

</div>


</body>
</html>