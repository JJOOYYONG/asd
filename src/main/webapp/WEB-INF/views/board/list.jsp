<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유 게시판</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">  
<link rel="stylesheet" href="/resources/css/main.css?v=1" type="text/css" media="all">
</head>
<body>
<jsp:include page="../include/header2.jsp"/>

<div id="container">
<h1>자유 게시판 입니다.</h1>

	
	<h3> Total : ${pageInfoMap.count} </h3>
	
	<table id="freeboard" class="table table-dark table-hover">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		
		<c:choose>
			<c:when test="${pageInfoMap.count gt 0 }">
			
			</c:when>
			<c:otherwise>
				<tr>
					<td colspan="5"> 글이 없습니다.</td>
				</tr>
			</c:otherwise>
		</c:choose>
		
	</table>
	
	<c:if test="${pageInfoMap.count gt 0 }">
		<%--[이전] 출력 --%>
		<c:if test="${pageInfoMap.startPage gt pageInfoMap.pageBlock }">
		
		</c:if>
		<%--페이지 5(임의)개 출력 --%>
		<c:forEach var="i" begin="${pageInfoMap.startPage }" end="${pageInfoMap.endPage }" step="1">
		
		</c:forEach>
		
		<%--[다음] 출력 --%>
		<c:if test="${pageInfoMap.endPage lt pageInfoMap.pageCount }">
		
		</c:if>
	</c:if>


	<form action="/board/list" method="get">
	<div id="table_search">
		<input type="text" name="search" value="${search}" class="input">
		<input type="submit" value="제목검색" class="btn btn-default">
		<input type="button" value="글쓰기" class="btn btn-primary"
			onclick="location.href='/board/write';">
	</div>
	</form>

</div>


<jsp:include page="../include/footer2.jsp"/>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


</body>
</html>