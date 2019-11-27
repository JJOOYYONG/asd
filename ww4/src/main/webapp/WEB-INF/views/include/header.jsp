<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header>

<span id="headlogin">

<c:choose>
	<c:when test="${empty id }">
		<button type="button" class="btn btn-primary" 
		onclick="location.href='/member/login';">로그인</button>
	</c:when>
	<c:otherwise>
		${id}님이 로그인 했습니다.
		<button type="button" class="btn btn-default" 
		onclick="location.href='/member/logout';">로그아웃</button>
	</c:otherwise>
</c:choose>
		
	<button type="button" class="btn btn-default" onclick="location.href='/member/join';">회원가입</button>
	
	<button type="button" class="btn btn-default" onclick="location.href='/board/list';">자유 게시판 </button>
	
	<button type="button" class="btn btn-info" onclick="location.href='/';">현석(radius)</button>
	
	<button type="button" class="btn btn-default" onclick="location.href='/main2';">부트스트랩(점보트론)</button>
	
		<button type="button" class="btn btn-default" onclick="location.href='/main10';">부트스트랩(카로셀)</button>
	
	<br><br>
	
	
	<button type="button" class="btn btn-info"
	onclick="location.href='/main3';">현석(industry)</button>
	
	<button type="button" class="btn btn-info"
	onclick="location.href='/main7';">현석,주영(multiverse)</button>
	
	<button type="button" class="btn btn-primary"
	onclick="location.href='/main8';">주영(stone)</button>
	
	<button type="button" class="btn btn-success"
	onclick="location.href='/main6';">형식(fantasy)</button>
		
	<button type="button" class="btn btn-warning"
	onclick="location.href='/main9';">명한(strongly)</button>
	
	<button type="button" class="btn btn-danger"
	onclick="location.href='/main11';">기태(렌트카)</button>
	
	<button type="button" class="btn btn-default"
	onclick="location.href='/main12';">서영(e-commerce)</button>

	<br><br>

	<button type="button" class="btn btn-default"
	onclick="location.href='/main4';">제출(aboutme)</button>
	
	<button type="button" class="btn btn-default"
	onclick="location.href='/main5';">제출(Glint)</button>
			
	
</span>

</header>