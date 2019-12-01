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
								<img src="/resources/upload/${member.mpic }"
									class="img-rounded" width="300" height="400">
							</c:otherwise>
						</c:choose>
					</div>

					<p>
						<br><strong> ${member.comment} </strong>  
					</p>

					<p>${member.story }</p>

					<div class="fh5co-spacer fh5co-spacer-sm"></div>

					<div id="location">
					<c:choose>
						<c:when test="${empty member.location }">
							<img src="/resources/hydrogen/images/img_29_large.jpg"
								class="img-rounded img-responsive" width="700" height="500">
							<br><br>
							<p>위치정보를 등록하지 않았습니다.</p>
						</c:when>
						<c:otherwise>
							<div id="map" style="width: 700px; height: 500px;"></div>
							<br><br>
							<div>
								<input type="hidden" id="search_name" value="${member.location}" />
								<input type="hidden" id="search_lat" /> 
								<input type="hidden" id="search_lng" />
								<input type="button" id="locateMe" class="btn btn-success" value="등록된 위치 보기" onclick="add_search();" />
								
								
							</div>
						</c:otherwise>

					</c:choose>
					</div>


					<div class="fh5co-spacer fh5co-spacer-sm"></div>

					<form action="/member/upmypage" method="post" name="myfrm"
						enctype="multipart/form-data">
						<input type="hidden" name="id" value="${member.id}"> <input
							type="hidden" name="num" value="${member.num}">

						<div class="table-responsive-md">
							<table id="uptable" class="table">


								<tr>
									<th id="upth" class="text-center">닉네임</th>
									<td id="uptd"><input class="form-control col-md-8"
										type="text" name="name" value="${member.name}"></td>
								</tr>

								<tr>
									<th class="text-center">취미</th>
									<td><input class="form-control" type="text" name="hobby"
										value="${member.hobby}"></td>
								</tr>

								<tr>
									<th class="text-center">나이</th>
									<td><input class="form-control" type="number" name="age"
										value="${member.age}"></td>
								</tr>

								<tr>
									<th class="text-center">성별</th>
									<td><input class="form-control" type="text" name="gender"
										value="${member.gender}"></td>
								</tr>

								<tr>
									<th class="text-center">주소</th>
									<td><input class="form-control" type="text"
										name="location" value="${member.location}"></td>
								</tr>

								<tr>
									<th class="text-center">휴대폰 번호</th>
									<td><input class="form-control" type="text" name="mobile"
										value="${member.mobile}"></td>
								</tr>
								
								<tr>
									<th class="text-center">한마디</th>
									<td><input class="form-control" type="text" name="comment"
										value="${member.comment}"></td>
								</tr>
								
								
								<tr>
									<th class="text-center">소개</th>
									<td><textarea class="form-control" name="story"
											style="resize: none;">${member.story}</textarea></td>
								</tr>

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
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
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
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=033ffb3b0837db7593fd93de1e5f8fb2&libraries=services"></script>

	<script>
		
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨 
		};

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		//주소-좌표 변환 객체 생성
		var geocoder = new kakao.maps.services.Geocoder();

		//주소를 좌표를 검색합니다.
		function add_search() {
			var add_search = document.getElementById('search_name').value;
			
			geocoder.addressSearch(
				add_search,
				function(result, status) {

					//정상적으로 검색이 완료됐으면
					if (status == kakao.maps.services.Status.OK) {
						var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

						//결과값으로 받은 위치를 마커로 표시합니다.
						var marker = new kakao.maps.Marker({map : map, position : coords});
						document.getElementById('search_lat').value = result[0].y;
						document.getElementById('search_lng').value = result[0].x;

						//인포윈도우로 장소에 대한 설명을 표시합니다.
						var infowindow = new kakao.maps.InfoWindow({
							content : '<div style="width:150px;text-align:center;padding:6px0;">${member.name}</div>'
						});

						infowindow.open(map, marker);

						//지도의 중심으로 결과으로 받은 위치로 이동시킵니다.
						map.setCenter(coords);
					} // if문  종료(정상검색)
				}); // geocoder.search 종료
		} // add_search 종료
		
	</script>
	<script>
	$(document).ready(function(){
			$("#locateMe").bind("click",function(){
				add_search();
			})
			$("#locateMe").trigger("click");
	})
	</script>
</body>
</html>
