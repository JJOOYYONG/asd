<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="fh5co-offcanvass">

	<a href="#" class="fh5co-offcanvass-close js-fh5co-offcanvass-close">Menu
		<i class="icon-cross"></i>
	</a>

	<c:choose>
		<c:when test="${empty id }">
			<h1 class="fh5co-logo">
				<a class="navbar-brand" href="/">ASD For You</a>
			</h1>
			<ul>
				<li class="active"><a href="/">Home</a></li>
				<li><a href="/member/join">Join</a></li>
				<li><a href="/member/login">Login</a></li>
				<li><a href="/about">About </a></li>
				<li><a href="/pricing">Pricing </a></li>
				<li><a href="/contact">Contact </a></li>
			</ul>

		</c:when>
		<c:otherwise>
			<h1 class="fh5co-logo">
				<a class="navbar-brand" href="/">${name}의 페이지 </a>
			</h1>
			<ul>
				<li class="active"><a href="/">Home</a></li>
				<li><a href="/member/mypage?email=${email}">My Page</a></li>
				<li><a href="/member/logout">Logout</a></li>
			</ul>

		</c:otherwise>
	</c:choose>


	<h3 class="fh5co-lead">Connect with us</h3>
	<p class="fh5co-social-icons">
		<a href="#"><i class="icon-twitter"></i></a> <a href="#"><i
			class="icon-facebook"></i></a> <a href="#"><i class="icon-instagram"></i></a>
		<a href="#"><i class="icon-dribbble"></i></a> <a href="#"><i
			class="icon-youtube"></i></a>
	</p>

</div>