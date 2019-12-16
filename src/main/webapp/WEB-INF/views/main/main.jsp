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
<title>ASD &mdash;MAIN</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
<meta name="author" content="FREEHTML5.CO" />

<!-- Facebook and Twitter integration -->
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
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Gaegu&display=swap"
	rel="stylesheet">


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
<link rel="stylesheet" href="/resources/css/main.css?ver=1">

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
	<c:choose>
		<c:when test="${empty email}">

			<div id="fh5co-main">
				<div class="container">
					<div class="row">
						<div id="fh5co-board" data-columns>


							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_1.jpg"
										class="image-popup fh5co-board-img"
										title="Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, eos?">
										<img src="/resources/hydrogen/images/img_1.jpg"
										alt="Free HTML5 Bootstrap template">
									</a>
								</div>
								<div class="fh5co-desc">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit. Explicabo, eos?</div>
							</div>
							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_2.jpg"
										class="image-popup fh5co-board-img"> <img
										src="/resources/hydrogen/images/img_2.jpg"
										alt="Free HTML5 Bootstrap template"></a>
									<div class="fh5co-desc">Veniam voluptatum voluptas
										tempora debitis harum totam vitae hic quos.</div>
								</div>
							</div>
							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_3.jpg"
										class="image-popup fh5co-board-img"> <img
										src="/resources/hydrogen/images/img_3.jpg"
										alt="Free HTML5 Bootstrap template"></a>
									<div class="fh5co-desc">Optio commodi quod vitae, vel,
										officiis similique quaerat odit dicta.</div>
								</div>
							</div>
							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_4.jpg"
										class="image-popup fh5co-board-img"> <img
										src="/resources/hydrogen/images/img_4.jpg"
										alt="Free HTML5 Bootstrap template"></a>
									<div class="fh5co-desc">Dolore itaque deserunt sit, at
										exercitationem delectus, consequuntur quaerat sapiente.</div>
								</div>
							</div>
							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_5.jpg"
										class="image-popup fh5co-board-img"> <img
										src="/resources/hydrogen/images/img_5.jpg"
										alt="Free HTML5 Bootstrap template"></a>
									<div class="fh5co-desc">Tempora distinctio inventore,
										nisi excepturi pariatur tempore sit quasi animi.</div>
								</div>
							</div>
							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_6.jpg"
										class="image-popup fh5co-board-img"> <img
										src="/resources/hydrogen/images/img_6.jpg"
										alt="Free HTML5 Bootstrap template"></a>
									<div class="fh5co-desc">Sequi, eaque suscipit accusamus.
										Necessitatibus libero, unde a nesciunt repellendus!</div>
								</div>
							</div>
							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_7.jpg"
										class="image-popup fh5co-board-img"> <img
										src="/resources/hydrogen/images/img_7.jpg"
										alt="Free HTML5 Bootstrap template"></a>
									<div class="fh5co-desc">Necessitatibus distinctio eos
										ipsam cum hic temporibus assumenda deleniti, soluta.</div>
								</div>
							</div>
							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_8.jpg"
										class="image-popup fh5co-board-img"> <img
										src="/resources/hydrogen/images/img_8.jpg"
										alt="Free HTML5 Bootstrap template"></a>
									<div class="fh5co-desc">Debitis voluptatum est error
										nulla voluptate eum maiores animi quasi?</div>
								</div>
							</div>
							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_9.jpg"
										class="image-popup fh5co-board-img"> <img
										src="/resources/hydrogen/images/img_9.jpg"
										alt="Free HTML5 Bootstrap template"></a>
									<div class="fh5co-desc">Maxime qui eius quisquam quidem
										quos unde consectetur accusamus adipisci!</div>
								</div>
							</div>
							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_21.jpg"
										class="image-popup fh5co-board-img"> <img
										src="/resources/hydrogen/images/img_21.jpg"
										alt="Free HTML5 Bootstrap template"></a>
									<div class="fh5co-desc">Deleniti aliquid, accusantium,
										consectetur harum eligendi vitae quaerat reiciendis sit?</div>
								</div>
							</div>
							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_10.jpg"
										class="image-popup fh5co-board-img"> <img
										src="/resources/hydrogen/images/img_10.jpg"
										alt="Free HTML5 Bootstrap template"></a>
									<div class="fh5co-desc">Incidunt, eaque et. Et odio
										excepturi, eveniet facilis explicabo assumenda.</div>
								</div>
							</div>


						</div>
					</div>
				</div>
			</div>

		</c:when>

		<c:otherwise>
			<div id="fh5co-main">
				<div class="container">
					<div class="row">
						<div id="fh5co-board" data-columns>

							<c:if test="${not empty showMemberList }">

								<c:forEach var="mem" items="${showMemberList}">

									<div class="item">
										<div class="animate-box">

											<c:choose>
												<c:when test="${empty mem.mpic }">
													<a href="/resources/hydrogen/images/img_1.jpg"
														class="image-popup fh5co-board-img"
														title="Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, eos?">
														<img src="/resources/hydrogen/images/img_1.jpg"
														alt="회원사진이 등록 되지 않았습니다.">
													</a>
												</c:when>
												<c:otherwise>

													<img class="cardimage" data-num="${mem.unum }"
														src="/resources/upload/${mem.mpic }" alt="회원 이미지">
												</c:otherwise>
											</c:choose>

											<c:choose>
												<c:when test="${empty mem.intro }">
													<div class="fh5co-desc">자기소개가 아직 작성되지 않았습니다.</div>
												</c:when>
												<c:otherwise>

													<div class="intro">
														<div class="line1">
															${mem.username } &nbsp;

															<c:if test="${mem.gender eq '남' }">
																<img src="/resources/images/icon/manicon1.png"
																	width="50" height="50">
															</c:if>
															<c:if test="${mem.gender eq '여' }">
																<img src="/resources/images/icon/womanicon1.png"
																	width="50" height="50">
															</c:if>

															<!-- hobby -->
															<c:if test="${mem.hobby1 eq 'hobby1' }">
																<img src="/resources/images/hobby/drink.png" width="30"
																	height="30">
															</c:if>

															<c:if test="${mem.hobby1 eq 'hobby2' }">
																<img src="/resources/images/hobby/Ham.png" width="30"
																	height="30">
															</c:if>

															<c:if test="${mem.hobby1 eq 'hobby3' }">
																<img src="/resources/images/hobby/soccer.png" width="30"
																	height="30">
															</c:if>

															<c:if test="${mem.hobby1 eq 'hobby4' }">
																<img src="/resources/images/hobby/study.png" width="30"
																	height="30">
															</c:if>

															<c:if test="${mem.hobby1 eq 'hobby5' }">
																<img src="/resources/images/hobby/trip.png" width="30"
																	height="30">
															</c:if>

															&nbsp; ${mem.age } 세

														</div>

														<div class="line2">
															<span class="comment">${mem.intro }</span>
														</div>



													</div>


												</c:otherwise>

											</c:choose>

										</div>
									</div>

								</c:forEach>
							</c:if>


						</div>
					</div>
				</div>
			</div>


		</c:otherwise>

	</c:choose>










	<jsp:include page="../include/footer.jsp" />
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

	<!-- 	<!-- jQuery -->
	-->
	<!-- 	<script src="/resources/hydrogen/js/jquery.min.js"></script> -->
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

	<script>
		$('img.cardimage').each(function(index, item) {
			var $img = $(item);
			var num = $img.data('num');
			console.log(num);

			$.ajax({
				url : '/popup',
				data : {
					unum : num
				},
				success : function(data) {
					console.log(data);

					$($img).magnificPopup({
						items : data,
						gallery : {
							enabled : true
						},

						type : 'image'
					});
				}
			});
		});
	</script>
</body>
</html>
