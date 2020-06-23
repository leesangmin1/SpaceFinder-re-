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
<section class="hero-wrap hero-wrap-2" style="background-image: url('/resources/publishing-company-master/images/pc_1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate mb-0 text-center">
            <h1 class="mb-0 bread" style="color: white;">Place Club</h1>
          </div>
        </div>
      </div>
    </section>
    
    <section class="ftco-section bg-light">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-12">
						<div class="wrapper px-md-4">
				<div id="map" style="width: 70%; height: 400px;"></div>
						<code id="snippet" class="snippet"></code>
							<div class="row no-gutters">
								<div class="col-md-7">
									<div class="contact-wrap w-100 p-md-5 p-4">
										<h3 class="mb-4">Contact Us</h3>
										<form method="POST" id="contactForm" name="contactForm" class="contactForm">
											<div class="row">
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" for="name">Full Name</label>
														<input type="text" class="form-control" name="name" id="name" placeholder="Name">
													</div>
												</div>
												<div class="col-md-6"> 
													<div class="form-group">
														<label class="label" for="email">Email Address</label>
														<input type="email" class="form-control" name="email" id="email" placeholder="Email">
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<label class="label" for="subject">Subject</label>
														<input type="text" class="form-control" name="subject" id="subject" placeholder="Subject">
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<label class="label" for="#">Message</label>
														<textarea name="message" class="form-control" id="message" cols="30" rows="4" placeholder="Message"></textarea>
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<input type="submit" value="Send Message" class="btn btn-primary">
														<div class="submitting"></div>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="col-md-5 order-md-first d-flex align-items-stretch">
									<div id="map" class="map"></div>
								</div>


								
							</div>
						</div>
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