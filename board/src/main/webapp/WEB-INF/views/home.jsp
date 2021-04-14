<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<html>
<head>
	<title>Home</title>
</head>
<body>
<div class="container">
	<div class="header">
	 <%@ include file="include/homeNav.jsp" %>
	</div>
	<div class="jumbotron">
		<h1>It is being tested.</h1>
		<p>Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
		<c:if test="${userJoinName != null}">
			<script>
				alert("가입을 축하드립니다.")
			</script>
		</c:if>
	</div>

<div class="row">
  <div class="col-lg-4">
    <h2>Safari bug warning!</h2>
    <p class="text-danger">As of v8.0, Safari exhibits a bug in which resizing your browser horizontally causes rendering errors in the justified nav that are cleared upon refreshing.</p>
    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
    <p><a class="btn btn-primary" href="#" role="button">View details »</a></p>
  </div>
  <div class="col-lg-4">
    <h2>Heading</h2>
    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
    <p><a class="btn btn-primary" href="#" role="button">View details »</a></p>
 </div>
  <div class="col-lg-4">
    <h2>Heading</h2>
    <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>
    <p><a class="btn btn-primary" href="#" role="button">View details »</a></p>
  </div>
</div>

<div style=" width:100%; margin: 10px;">
	<div id="carousel-example-generic" class="carousel slide" >
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="https://images.unsplash.com/photo-1618251824331-d903ce9bdefd?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60" style="width:100%;">
				<div class="carousel-caption" style="color:black;">
				</div>
			</div>
			<div class="item">
				<img src="https://images.unsplash.com/photo-1618173745201-8e3bf8978acc?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60" style="width:100%;">
				<div class="carousel-caption" style="color:black;">
				</div>
			</div>
			<div class="item">
				<img src="https://images.unsplash.com/photo-1617961940214-ae863cb58f1a?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60" style="width:100%;">
				<div class="carousel-caption" style="color:black;">
				</div>
			</div>
		</div>
		<!-- 왼쪽 화살표 버튼 -->
		<!-- href는 carousel의 id를 가르킨다. -->
		<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
		<!-- 왼쪽 화살표 -->
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		</a>
		<!-- 오른쪽 화살표 버튼 -->
		<!-- href는 carousel의 id를 가르킨다. -->
		<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
		<!-- 오른쪽 화살표 -->
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		</a>
	</div>
</div>
<script>
$(function(){
	// 이미지 슬라이드 컨트롤를 사용하기 위해서는 carousel를 실행해야한다.
	$('#carousel-example-generic').carousel({
		// 슬리아딩 자동 순환 지연 시간
		// false면 자동 순환하지 않는다.
		interval: 5000,
		// hover를 설정하면 마우스를 가져대면 자동 순환이 멈춘다.
		pause: "hover",
		// 순환 설정, true면 1 -> 2가면 다시 1로 돌아가서 반복
		wrap: true,
		// 키보드 이벤트 설정 여부(?)
		keyboard : true
	});
});


</script>
 <%@ include file="include/footer.jsp" %>
</div>

</body>
</html>
