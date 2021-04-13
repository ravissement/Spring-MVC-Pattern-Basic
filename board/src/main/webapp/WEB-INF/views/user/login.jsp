<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<style>
	body {
	    background-color: #eee;
	    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
	    font-size: 14px;
	    line-height: 1.42857143;
	    color: #333;
	    margin: 0;
		display: block;
		
	}
	
	* {
	    box-sizing: border-box;
	}
	
	:after, :before {
	    box-sizing: border-box;
	}
</style>

<body>
	
<div class="container">
	<div class="header" style="margin-bottom:30%;">
	 <%@ include file="../include/homeNav.jsp" %>
	</div>
	<form method="post" action="/user/goLogin" class="form-signin">
		<div style="text-align: center; margin:5% 0 3% 0;">	
			<h2 class="form-signin-heading">Please Login</h2>
		</div>
			<input type="text" name="user_id" class="form-control" placeholder="ID" style="width:40%; margin-left:30%;"/> <br/>
			<input type="text" name="user_pw" class="form-control" placeholder="Password" style="width:40%; margin-left:30%;"/> <br/>
		<p style="text-align: center;"><button type="submit" class="btn btn-lg btn-primary btn-block" style="width: 20%; margin: auto;">Login</button></p>
	</form>
</div>
</body>
</html>