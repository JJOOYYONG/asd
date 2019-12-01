<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>ASD &mdash;  </title>


<!-- Google Webfonts -->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	
<!-- Animate.css -->
<link rel="stylesheet" href="/resources/hydrogen/css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="/resources/hydrogen/css/icomoon.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="/resources/hydrogen/css/magnific-popup.css">
<!-- Salvattore -->
<link rel="stylesheet" href="/resources/hydrogen/css/salvattore.css">
<!-- Theme Style -->
<link rel="stylesheet" href="/resources/hydrogen/css/style.css">
<!-- Main Style -->
<link rel="stylesheet" href="/resources/hydrogen/css/main.css?v=1">

<!-- Modernizr JS -->
<script src="/resources/hydrogen/js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	
	<jsp:include page="../include/menu.jsp"/>
	<jsp:include page="../include/header.jsp" />


	
	<div id="loginframe" class="container">
	<div class="col-md-8 col-md-offset-2">
		
		<br><br>
		<h2> Greeting </h2>
		<br><br>
		
		
		<form action="/member/login" class="form-horizontal" method="post" name="loginfrm">
		<div class="row">
						
			<div class="form-group">
			<div class="col-md-6 col-md-offset-3">		
				<input type="email" class="form-control " id="email" name="email"
						placeholder="이메일 주소"></div>
			</div>
				
			
			<div class="form-group">
			<div class="col-md-6 col-md-offset-3">		
				<input type="password" class="form-control " id="password"
						name="passwd" placeholder="패스워드">
			</div>
			</div>
			
			<div class="form-group">
			<input type="submit" class="btn btn-primary col-md-6 col-md-offset-3" value="로그인">
			</div>
			
		
		</div>
		</form>
	
	</div>
	</div>



	<jsp:include page="../include/footer.jsp" />


	<!-- jQuery -->
	<script src="/resources/hydrogen/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="/resources/hydrogen/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="/resources/hydrogen/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="/resources/hydrogen/js/jquery.waypoints.min.js"></script>
	<!-- Magnific Popup -->
	<script src="/resources/hydrogen/js/jquery.magnific-popup.min.js"></script>
	<!-- Salvattore -->
	<script src="/resources/hydrogen/js/salvattore.min.js"></script>
	<!-- Main JS -->
	<script src="/resources/hydrogen/js/main.js"></script>
</body>
</html>