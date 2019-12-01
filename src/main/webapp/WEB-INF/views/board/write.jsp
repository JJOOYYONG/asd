<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">  
<link rel="stylesheet" href="/resources/css/main.css?v=1" type="text/css" media="all">
</head>
<body>
<jsp:include page="../include/header.jsp"/>




<div class="table-responsive">
<form action="/board/write" method="post" name="fbfrm" encType="Multipart/form-data">
<table id="fbwrite">
	<tr>
		<th class="">작성자</th>
		<td>
			<input type="text" name="username" class="form-control">
		</td>
		<th class="">비밀번호</th>
		<td>
			<input type="password" name="passwd" class="form-control">
		</td>
	</tr>
	<tr>
		<th class="">이메일</th>
		<td>
			<input type="email" name="email" class="form-control">
		</td>
		<th class="">파일</th>
		<td>
			<div id="file_container">
			<input type="file" name="files" multiple="multiple" class="form-control">
			</div>
			<button type="button" class="btn btn-info" onclick="addFile();">파일 추가</button>
		</td>
	</tr>
	<tr>
		<th class="">제목</th>
		<td colspan="3">
			<input type="text" name="subject" class="form-control">
		</td>
		</tr>
	<tr>
		<th class="">내용</th>
		<td colspan="3">
			<textarea name="content"  class="form-control" rows="10"></textarea>
		</td>
	</tr>
	
</table>

<div>
	<input type="submit" value="글쓰기" class="btn btn-primary">
	<input type="reset" value="다시작성" class="btn btn-default">
	<input type="button" value="목록보기" class="btn btn-success" onclick="location.href='/board/list';">
</div>


</form>
</div>

<jsp:include page="../include/footer.jsp"/>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script>
var num=2;

function addFile(){
	if(num>5){
		alert('최대 5개까지만 업로드 가능합니다');
		return;
	}
	// div요소에 file타입 input 요소를 추가하기
	var input = '<br><input type="file" name="files" multiple>';
	// 다음 파일추가를 위해 num 1 증가
	num++;
	
	// id속성값이 file_container인 div요소의 참조 구하기
	var fileContainer = document.getElementById('file_container');
	fileContainer.innerHTML += input;
}

</script>


</body>
</html>