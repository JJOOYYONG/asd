<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">  
<link rel="stylesheet" href="/resources/css/main.css?v=1" type="text/css" media="all">
</head>
<body>
 <jsp:include page="../include/header.jsp"/>
<div id="container">
<h1>로그인 화면입니다.</h1>
	<br><br>
	<form action="/member/login" id="loginform" class="form-horizontal" method="post">
	<br>
	<div class="form-group">
		<label class="col-lg-4 control-label" for="id">ID</label>
		<div class="col-lg-1"></div>
		<div class="col-lg-6">
		<input type="text" class="form-control input-lg" id="id" name="id" placeholder="아이디">
		</div>
	</div>
	<div class="form-group">
		<label class="col-lg-5 control-label" for="passwd">Password</label>
		<div class="col-lg-6">
		<input type="password" class="form-control input-lg" id="passwd" name="passwd" placeholder="비밀번호">
		</div>
	</div>
	
	
	<input type="submit" value="로그인" class="btn btn-primary">
	<input type="button" value="메인으로" class="btn btn-default" onclick="location.href='/';">
	
		
	<br>	
	</form>
</div>
 <jsp:include page="../include/footer.jsp"/>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>