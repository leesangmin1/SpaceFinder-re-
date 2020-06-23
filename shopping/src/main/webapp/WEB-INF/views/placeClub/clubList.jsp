<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Space Finder</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lora:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="/resources/publishing-company-master/css/animate.css">
    
    <link rel="stylesheet" href="/resources/publishing-company-master/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/resources/publishing-company-master/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/resources/publishing-company-master/css/magnific-popup.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.min.css">
    
    <link rel="stylesheet" href="/resources/publishing-company-master/css/flaticon.css">
    <link rel="stylesheet" href="/resources/publishing-company-master/css/style.css">
    
    <script src="/resources/jquery/jquery-3.5.1.min.js"></script>
    <script src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=mn7cwsrvym"></script>
  </head>
  <body>

<!-- Page Header -->
	<header>
		<%@ include file="../include/header.jsp"%>
	</header>

	<!-- Navigation -->
	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<%@ include file="../include/nav.jsp"%>
	</nav>
	
<!--  이미지 넣을 것 -->
<section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_5.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate mb-0 text-center">
            <h1 class="mb-0 bread">Place Club</h1>
          </div>
        </div>
      </div>
    </section>

   	<!-- Footer -->
	<footer>
		<%@ include file="../include/footer.jsp"%>
	</footer>
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="/resources/publishing-company-master/js/jquery.min.js"></script>
  <script src="/resources/publishing-company-master/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="/resources/publishing-company-master/js/popper.min.js"></script>
  <script src="/resources/publishing-company-master/js/bootstrap.min.js"></script>
  <script src="/resources/publishing-company-master/js/jquery.easing.1.3.js"></script>
  <script src="/resources/publishing-company-master/js/jquery.waypoints.min.js"></script>
  <script src="/resources/publishing-company-master/js/jquery.stellar.min.js"></script>
  <script src="/resources/publishing-company-master/js/owl.carousel.min.js"></script>
  <script src="/resources/publishing-company-master/js/jquery.magnific-popup.min.js"></script>
  <script src="/resources/publishing-company-master/js/jquery.animateNumber.min.js"></script>
  <script src="/resources/publishing-company-master/js/scrollax.min.js"></script>
  
  <script src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=rebzhg9z1c"></script>
  <script src="/resources/publishing-company-master/js/google-map.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>
  <script src="/resources/publishing-company-master/js/main.js"></script>
    
  </body>
</html>