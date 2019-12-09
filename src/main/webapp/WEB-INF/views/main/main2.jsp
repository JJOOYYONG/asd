<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>ASD &mdash; Oppertunity knocks. </title>
<!-- Google Webfonts -->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/css?family=Nanum+Brush+Script&display=swap" rel="stylesheet">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

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
<link rel="stylesheet" href="/resources/css/main.css?v=3">
<!-- Modernizr JS -->
<script src="/resources/hydrogen/js/modernizr-2.6.2.min.js"></script>
</head>
<body>
<jsp:include page="../include/menu.jsp"/>
<jsp:include page="../include/header.jsp"/>


<div class="container">
      <div class="row">
        <div class="col">
          <p>Nav</p>
          <ul class="nav flex-column">
            <li class="nav-item">
              <a class="nav-link active" href="#">Lorem</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Ipsum</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Dolor</a>
            </li>
            <li class="nav-item">
              <a class="nav-link disabled" href="#">Disabled</a>
            </li>
          </ul>
        </div>
      </div>
    </div>


<div id="mainframe">

<c:choose>
<c:when test="${empty email}">

<div class="card">
  <div class="card-header">
    My Card
  </div>
  <img src="/resources/hydrogen/images/img_7.jpg" />
  <div class="card-body">
    <h5 class="card-title">Lorem</h5>
    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam egestas sed sem ut malesuada.</p>
    <a href="#" class="btn btn-primary">More</a>
  </div>
</div>

</c:when>
<c:otherwise>

<div class="container">
<div class="row">

<c:if test="${not empty showMemberList }">
					
<c:forEach var="mem" items="${showMemberList}">
<div class="col-4">
카드
<div class="card">
  <div class="card-header">
    My Card
  </div>
 
  <img id="card" src="/resources/upload/${mem.mpic }" alt="회원 이미지">
 
  <div class="card-body">
    <h5 class="card-title">Lorem</h5>
    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam egestas sed sem ut malesuada.</p>
    <a href="#" class="btn btn-primary">More</a>
  </div>
</div>
</div>


</c:forEach>
</c:if>

</div>
</div>

</c:otherwise>
</c:choose>

</div>




<jsp:include page="../include/footer.jsp"/>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

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