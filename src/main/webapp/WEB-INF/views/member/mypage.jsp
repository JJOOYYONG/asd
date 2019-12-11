<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>ASD &mdash; Oppertunity knocks.</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
<meta name="author" content="FREEHTML5.CO" />

<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">

<!-- Google Webfonts -->
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>


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
<link rel="stylesheet" href="/resources/hydrogen/css/main.css?v=5">



<!-- Modernizr JS -->
<script src="/resources/hydrogen/js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

</head>
<body>

	<jsp:include page="../include/menu.jsp" />
	<jsp:include page="../include/header.jsp" />
	<!-- END .header -->


	<div id="fh5co-main">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<h2>Personal Bio</h2>
					<div class="fh5co-spacer fh5co-spacer-sm"></div>

					<div id="upimg">
						<c:choose>
							<c:when test="${empty member.mpic}">
								<img src="/resources/hydrogen/images/img_29_large.jpg"
									class="img-rounded img-responsive">
							</c:when>
							<c:otherwise>
								<img src="/resources/upload/${member.mpic}"
									class="img-rounded" width="300" height="400">
							</c:otherwise>
						</c:choose>
					</div>

					<p>
						<br><strong> ${member.intro} </strong>  
					</p>

<%-- 					<p>${member.story}</p> --%>

					<div class="fh5co-spacer fh5co-spacer-sm"></div>

					<div id="map" style="width: 800px; height: 400px;"></div>

					<div class="fh5co-spacer fh5co-spacer-sm"></div>

					<form action="/member/upmypage" method="post" name="myfrm"
						enctype="multipart/form-data">
						<input type="hidden" name="email" value="${member.email}">
						<input type="hidden" name="unum" value="${member.unum}">

						<div class="table-responsive-md">
							<table id="uptable" class="table">


								<tr>
									<th id="upth" class="text-center">닉네임</th>
									<td id="uptd"><input class="form-control col-md-8"
										type="text" name="username" value="${member.username}"></td>
								</tr>

								<tr>
									<th class="text-center">취미</th>
									<td><input class="form-control" type="text" name="hobby"
										value="${member.hobby}"></td>
								</tr>

								<tr>
									<th class="text-center">주민등록번호</th>
									<td><input class="form-control" type="text" name="residentId"
										value="${member.residentId}"></td>
								</tr>

								<tr>
									<th class="text-center">지역</th>
									<td><input class="form-control" type="text"
										name="local" value="${member.local}"></td>
								</tr>

								<tr>
									<th class="text-center">휴대폰 번호</th>
									<td><input class="form-control" type="text" name="mobile"
										value="${member.mobile}"></td>
								</tr>
								
								<tr>
									<th class="text-center">한마디</th>
									<td><input class="form-control" type="text" name="intro"
										value="${member.intro}"></td>
								</tr>
								
								
<!-- 								<tr> -->
<!-- 									<th class="text-center">소개</th> -->
<!-- 									<td><textarea class="form-control" name="story" -->
<%-- 											style="resize: none;">${member.intro}</textarea></td> --%>
<!-- 								</tr> -->

								<tr>
									<th class="text-center">파일</th>
									<td>
										<div id="file_container">
											<input class="form-control" type="file" name="files"
												multiple="multiple">
										</div>
									</td>
								</tr>


							</table>
						</div>

						<br>
						<br> <input type="submit" value="프로필 수정"
							class="btn btn-info col-md-offset-4 col-md-4">

					</form>

				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../include/footer.jsp" />


	<!-- jQuery -->
	<script src="/resources/hydrogen/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="/resources/hydrogen/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="/resources/hydrogen/js/jquery.waypoints.min.js"></script>
	<!-- Magnific Popup -->
	<script src="/resources/hydrogen/js/jquery.magnific-popup.min.js"></script>
	<!-- Salvattore -->
	<script src="/resources/hydrogen/js/salvattore.min.js"></script>
	<!-- Main JS -->
	<script src="/resources/hydrogen/js/main.js"></script>
	<!-- kakao JS -->
	<script type="text/javascript"
	   src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=4820dee17d15845074a3087a1a27ea0c&libraries=services"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>

	<script type="text/javascript">
	
	document.addEventListener("DOMContentLoaded", getPositions(oneNear(35.163826,129.055451), twoNear(35.156034,129.058726)));
	
	// 1번째 유저의 경도위도 위치값을 받아 저장하는 함수
	function oneNear(oneLat, oneLong) {
		var one = [];
		one.push(oneLat);
		one.push(oneLong);
		return one;
	}
	
	// 2번째 유저의 경도위도 위치값을 받아 저장하는 함수
	function twoNear(twoLat, twoLong) {
		var two = [];
		two.push(twoLat);
		two.push(twoLong);
		return two;
	}
	
	var currentPos = [];
	
	function getPositions(oneNear, twoNear) {
		
		// 현재 위치값을 가진 지도 표시 함수(최대 2명 추가)
		function getLocation(position) {
		
			var latitud = position.coords.latitude;
			var longitude = position.coords.longitude;
			
			currentPos = [latitud,longitude];
			
			var mapContainer = document.getElementById("map") // 지도를 표시할 DIV
			var mapOption = {
				center : new kakao.maps.LatLng(latitud,
				      longitude), // 지도의 중심좌표
				level : 5
				// 지도의 확대레벨
			}
		
			// 지도를 생성
			var map = new daum.maps.Map(mapContainer, mapOption);
			
			// 마커를 표시할 위치와 content 객체 배열입니다 
			var positions = [
				{ //여기서 부터 현재 위치 경도,위도 찍힙니당,
					content : '<div>학원</div>',
					latlng : new kakao.maps.LatLng(latitud, longitude)
				},
				{
					content : '<div>1</div>',
					latlng : new kakao.maps.LatLng(oneNear[0], oneNear[1])
				},
				{
					content : '<div>2</div>',
					latlng : new kakao.maps.LatLng(twoNear[0], twoNear[1])
				}
				
			];
			   
			// 마커 이미지의 이미지 주소입니다
			var imageSrc = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
			
			
			// positions에 저장된 위치값 기반으로 마커를 생성하는 반복문
			for (var i = 0; i < positions.length; i++) {
			
				// 마커 이미지의 이미지 크기 입니다
				var imageSize = new kakao.maps.Size(24, 35);
			
				// 마커 이미지를 생성합니다    
				var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
			
				// 마커를 생성합니다
				var marker = new kakao.maps.Marker({
					map : map, // 마커를 표시할 지도
					position : positions[i].latlng, // 마커를 표시할 위치
					image : markerImage
					// 마커 이미지 
				});
				
				// 마커를 클릭했을 때 마커 위에 표시할 인포윈도우를 생성합니다
				var iwContent = positions[i].content;
				
				// 인포윈도우를 생성합니다
				var infowindow = new kakao.maps.InfoWindow({
					content : iwContent,
				});
			
				// 마커에 클릭이벤트를 등록합니다
				kakao.maps.event.addListener(marker, 'mouseover',
					function(infowindow, marker) {
						return function() {
							infowindow.open(map, marker);
						}
					}(infowindow, marker)
				);
				kakao.maps.event.addListener(marker, 'mouseout',
					function(infowindow, marker) {
						return function() {
							infowindow.close();
						}
					}(infowindow, marker)
				);
			}
			
			// 지도에 표시할 원을 생성합니다
			var circle = new kakao.maps.Circle({
				center : new kakao.maps.LatLng(latitud, longitude), // 원의 중심좌표 입니다 
				radius : 500, // 미터 단위의 원의 반지름입니다
				strokeWeight : 1, // 선의 두께입니다
				strokeColor : '#75B8FA', // 선의 색깔입니다
				strokeOpacity : 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
				strokeStyle : 'solid', // 선의 스타일 입니다
				fillColor : '#CFE7FD', // 채우기 색깔입니다
				fillOpacity : 0.7
				// 채우기 불투명도 입니다   
			});
			
			// 지도에 원을 표시합니다 
			circle.setMap(map);
		}
		
		// 현재 위치가 존재할때, 지도맵 실행
		if (navigator.geolocation) {
			navigator.geolocation.getCurrentPosition(
				getLocation, function(error) {
					consol.log(error.message);
				}
			);
		} else {
			consol.log("Geolocation을 지원하지 않는 브라우저 입니다.");
		}
	}
	</script>
</body>
</html>
