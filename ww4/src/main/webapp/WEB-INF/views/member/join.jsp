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
<h1>조인 화면입니다.</h1>

<br><br>

<form action="/member/join" class="form-horizontal" method="post" id="joinform" name="joinfrm">

<br><br>

<div class="form-group">
    <label for="id" class="col-sm-2 control-label">ID</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="id" name="id" placeholder="아이디">
    <span id="id-message"></span> 
    </div>
</div>

<div class="form-group">
    <label for="password" class="col-sm-2 control-label">Password</label>
    <div class="col-sm-6">
    <input type="password" class="form-control" id="password" name="passwd" placeholder="패스워드">   
    </div>
</div>

<div class="form-group">
    <label for="name" class="col-sm-2 control-label">Name</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="name" name="name" placeholder="닉네임">   
    </div>
</div>

<div class="form-group">
    <label for="email" class="col-sm-2 control-label">Email</label>
    <div class="col-sm-6">
    <input type="email" class="form-control" id="email" name="email" placeholder="이메일">   
    </div>
</div>

<div class="form-group">
    <label for="hobby" class="col-sm-2 control-label">Hobby</label>
    
    <div class="col-sm-6 btn-group btn-group-toggle" data-toggle="buttons">
    	<label class="btn btn-primary" for="hobby1">
    	<input type="radio" class="custom-control-input" id="hobby1" name="hobby" value="hobby1">
     	Hobby 1 
     	</label>   
     
     	<label class="btn btn-success" for="hobby2">
    	<input type="radio" class="custom-control-input" id="hobby2" name="hobby" value="hobby2">
     	Hobby 2 
     	</label>
     	
     	<label class="btn btn-warning" for="hobby3">
    	<input type="radio" class="custom-control-input" id="hobby3" name="hobby" value="hobby3">
     	Hobby 3 
     	</label> 
     	
     	<label class="btn btn-info" for="hobby4">
    	<input type="radio" class="custom-control-input" id="hobby4" name="hobby" value="hobby4">
     	Hobby 4 
     	</label>
     	
     	<label class="btn btn-danger" for="hobby5">
    	<input type="radio" class="custom-control-input" id="hobby5" name="hobby" value="hobby5">
     	Hobby 5 
     	</label>  
    </div>    
</div>

<div class="form-group">
	<label for="birth" class="col-sm-2 control-label">Birth</label>
	<div class="col-sm-6">
    <input type="date" class="form-control" id="birth" name="birth">   
    </div>
</div>


<br><br>


<input type="submit" value="가입하기" class="btn btn-primary">
<input type="reset"  value="다시작성" class="btn btn-default">
<input type="button" value="메인으로" class="btn btn-danger" onclick="location.href='/';">

<br><br>

</form>
</div>
 <jsp:include page="../include/footer.jsp"/>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script>
$('#id').keyup(function(){
	var id = $(this).val();
	
	$.ajax({
		url:'/member/joinIdDupCheckJson',
		data: {id:id},
		success:function(data){
			
			idDupMessage(data);
		}
		
	});	
	
});

function idDupMessage(isIdDup){
	if(isIdDup){
		$('span#id-message').html('중복된 아이디입니다.').css('color','red');
	} else {
		$('span#id-message').html('사용가능한 아이디입니다.').css('color','green');
	}
}



</script>
</body>
</html>