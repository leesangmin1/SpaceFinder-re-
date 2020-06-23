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
    <style>
    	.text-center {text-align : center;}
    </style>
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
            <h1 class="mb-0 bread"style="color: white;">Place Club</h1>
          </div>
        </div>
      </div>
    </section>

	<!-- 지도 부분 -->
	<section class="ftco-section bg-light">
		<div class="container">
			<div class="col-md-12" >
				<div class="row justify-content-center">
						<div id="map" style="width: 70%; height: 400px;"></div>
						<code id="snippet" class="snippet"></code>
<!-- 				<form action="#" class="search-form" style="width: 70%;">  -->
<!-- 					<input type="submit" class="form-control" value="핀 주변 클럽 검색"> -->
<!-- 				</form> -->
						
				</div>
<!-- 				<div class="row justify-content-center"> -->
<!-- 						<div class="row mb-5"> -->
<!-- 								<div class="col-md-4"> -->
<!-- 									<div class="dbox w-100 text-center"> -->
<!-- 				        		<div class="icon d-flex align-items-center justify-content-center"> -->
<!-- 				        			<span class="fa fa-map-marker"></span> -->
<!-- 				        		</div> -->
<!-- 				        		<div class="text"> -->
<!-- 					            <p>핀 주변 클럽 검색</p> -->
<!-- 					          </div> -->
<!-- 				          </div> -->
<!-- 				          </div> -->
<!-- 				          	<div class="col-md-3"> -->
<!-- 									<div class="dbox w-100 text-center"> -->
<!-- 				        		<div class="icon d-flex align-items-center justify-content-center"> -->
<!-- 				        			<span class="fa fa-map-marker"></span> -->
<!-- 				        		</div> -->
<!-- 				        		<div class="text"> -->
					            
<!-- 					          </div> -->
					          
<!-- 				          </div> -->
<!-- 				          <p>나의 클럽</p> -->
<!-- 				          </div> -->
<!-- 				          </div> -->
<!-- 				          </div> -->
					<br>
					<br>
				          <div class="row mb-5">
								<div class="col-md-4 text-center" OnClick="location.href ='#'" style="cursor:pointer;">
									<div class="dbox w-150 text-center">
				        		<div class="icon d-flex align-items-center justify-content-center">
				        			<span class="fa fa-map-marker"></span>
				        		</div>
				        		<div class="text">
					            <p><span>핀 주변 클럽 검색</span></p>
					          </div>
				          </div>
								</div>
								<div class="col-md-4" OnClick="location.href ='/placeClub/clubReg'" style="cursor:pointer;">
									<div class="dbox w-150 text-center">
				        		<div class="icon d-flex align-items-center justify-content-center">
				        			<span class="fa fa-plus"></span>
				        		</div>
				        		<div class="text">
					            <p><span>클럽 만들기</span></p>
					          </div>
				          </div>
								</div>
								<div class="col-md-4" OnClick="location.href ='#'" style="cursor:pointer;">
									<div class="dbox w-150 text-center">
				        		<div class="icon d-flex align-items-center justify-content-center">
				        			<span class="fa fa-group"></span>
				        		</div>
				        		<div class="text">
					            <p><span>나의 클럽</span></p>
					          </div>
				          </div>
								</div>
<!-- 								<div class="col-md-3"> -->
<!-- 									<div class="dbox w-100 text-center"> -->
<!-- 				        		<div class="icon d-flex align-items-center justify-content-center"> -->
<!-- 				        			<span class="fa fa-globe"></span> -->
<!-- 				        		</div> -->
<!-- 				        		<div class="text"> -->
<!-- 					            <p><span>Website</span> <a href="#">yoursite.com</a></p> -->
<!-- 					          </div> -->
<!-- 				          </div> -->
<!-- 								</div> -->
<!-- 							</div> -->
				          
			</div>
		</div>			
			
	</section>
	
	<!-- 나의 클럽 게시판 이동 -->
	
	




	<!-- 스크립트 -->
 <script id="code">
      //지도를 삽입할 HTML 요소 또는 HTML 요소의 id를 지정합니다.
      /* var mapDiv = document.getElementById('map'); // 'map'으로 선언해도 동일
      
      //옵션 없이 지도 객체를 생성하면 서울 시청을 중심으로 하는 16 레벨의 지도가 생성됩니다.
      var map = new naver.maps.Map(mapDiv); */
      var map = new naver.maps.Map('map', {
          center: new naver.maps.LatLng(35.896061, 128.621659),
          zoom: 16,
          mapTypeId: naver.maps.MapTypeId.NORMAL
      });

      var infowindow = new naver.maps.InfoWindow();

      function onSuccessGeolocation(position) {
          /* var location = new naver.maps.LatLng(position.coords.latitude,
                                               position.coords.longitude); */
          var location = new naver.maps.LatLng(35.896061, 128.621659);

          map.setCenter(location); // 얻은 좌표를 지도의 중심으로 설정합니다.
          map.setZoom(16); // 지도의 줌 레벨을 변경합니다.

          /* infowindow.setContent('<div style="padding:20px;">' + 'geolocation.getCurrentPosition() 위치' + '</div>');

          infowindow.open(map, location); */
          console.log('Coordinates: ' + location.toString());
      }
      function onErrorGeolocation() {
          var center = map.getCenter();

          infowindow.setContent('<div style="padding:20px;">' +
              '<h5 style="margin-bottom:5px;color:#f00;">Geolocation failed!</h5>'+ "latitude: "+ center.lat() +"<br />longitude: "+ center.lng() +'</div>');

          /* 에러메세지 나는부분 주석처리 해놓음*/
          /* infowindow.open(map, center); */
      }
      $(window).on("load", function() {
          if (navigator.geolocation) {
              /**
               * navigator.geolocation 은 Chrome 50 버젼 이후로 HTTP 환경에서 사용이 Deprecate 되어 HTTPS 환경에서만 사용 가능 합니다.
               * http://localhost 에서는 사용이 가능하며, 테스트 목적으로, Chrome 의 바로가기를 만들어서 아래와 같이 설정하면 접속은 가능합니다.
               * chrome.exe --unsafely-treat-insecure-origin-as-secure="http://example.com"
               */
              navigator.geolocation.getCurrentPosition(onSuccessGeolocation, onErrorGeolocation);
          } else {
              var center = map.getCenter();
              infowindow.setContent('<div style="padding:20px;"><h5 style="margin-bottom:5px;color:#f00;">Geolocation not supported</h5></div>');
              infowindow.open(map, center);
          }
      });
      var marker = new naver.maps.Marker();
      naver.maps.Event.addListener(map, 'click', function(e) {
            marker.setPosition(e.coord);
            marker.setMap(map);
            console.log("위도 경도"+e.coord);
            $('input#GP_lat').val(e.coord.y);
            $('input#GP_long').val(e.coord.x);
        });
   </script>
   
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