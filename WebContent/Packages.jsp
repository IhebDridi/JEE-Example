é<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tunisian Adventure Packages</title>

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="assets/css/bootstrap.css">
	<link rel="stylesheet" href="assets/vendors/linericon/style.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/css/magnific-popup.css">
	<link rel="stylesheet" href="assets/vendors/owl-carousel/owl.carousel.min.css">
	<link rel="stylesheet" href="assets/vendors/nice-select/css/nice-select.css">
	<!-- main css -->
	<link rel="stylesheet" href="assets/css/style.css">

</head>
<body>

<c:import url="/Header.jsp" />

	<!--================Home Banner Area =================-->
	<section class="banner_area ">
		<div class="banner_inner overlay d-flex align-items-center">
			<div class="container">
				<div class="banner_content">
					<div class="page_link">
						<a href="index.html">Home</a>
						<a href="packages.html">Packages</a>
					</div>
					<h2>Trip Packages</h2>
				</div>
			</div>
		</div>
	</section>
	<!--================End Home Banner Area =================-->

<br>
<br>
	<!--================ Start Feature Area =================-->
	<section class="feature-area section_gap_bottom">
		<div class="container">
			<div class="row align-items-end justify-content-left">
				<div class="col-lg-12">
					<div class="main_title">
						<p>We’re Offering these Popular Services</p>
						<h1>Getting Adventure with Services</h1>
						<span class="title-widget-bg"></span>
					</div>
				</div>
			</div>
			<div class="row">
				<!-- single-feature -->
				<div class="col-lg-4 col-md-6">
					<div class="single-feature">
						<div class="feature-details">
							<h5>Desert Riding Turning <br>
								So much Flowery</h5>
							<p>
								One of the most famous and mysterious places in Tunisia is, without a doubt, the Sahara desert.
								<br>
								<br>
								The vast territory of the Sahara are almost unpopulated, and that little part of the peoples who live here lead a nomadic life and to settle near sources of water and vegetation.
							</p>
							<a href="#" class="primary-btn mb-40">Read More</a>
						</div>
						<div class="feature-thumb">
							<img class="img-fluid" src="assets/img/service/s1.png" alt="">
						</div>
					</div>
				</div>
				<!-- single-feature -->
				<div class="col-lg-4 col-md-6">
					<div class="single-feature">
						<div class="feature-details">
							<h5>Relaxation in the <br>
								Local Beach Campfire</h5>
							<p>
								Some of the Mediterranean's most spectacular beaches are to be found in Tunisia;
								<br>
								<br>
								 to the north you'll discover a coastline of crystal-clear waters,
								  lush vegetation and wild cliffs,
								   while the southern coastline is fascinating due to the desert landscape surrounding it.
							</p>
							<a href="<c:url value="Beach.jsp"/>" class="primary-btn mb-40">Read More</a>
						</div>
						<div class="feature-thumb">
							<img class="img-fluid" src="assets/img/service/s2.png" alt="">
						</div>
					</div>
				</div>
				<!-- single-feature -->
				<div class="col-lg-4 col-md-6">
					<div class="single-feature">
						<div class="feature-details">
							<h5>Forest Exploration <br>
								with Energy Package</h5>
							<p>
								Lorem ipsum dolor sit amet, consecter adipisicing elit, sed do eiusmod tempor incididunt.
							</p>
							<a href="<c:url value="Forest.jsp"/>" class="primary-btn mb-40">Read More</a>
						</div>
						<div class="feature-thumb">
							<img class="img-fluid" src="assets/img/service/s3.png" alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================ End Feature Area =================-->

	<!--================ Start CTA Area =================-->
	<div class="cta-area2 section_gap">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-5">
					<img class="cta-img2 img-fluid" src="assets/img/cta-img2.png" alt="">
				</div>
				<div class="offset-lg-2 col-lg-5">
					<h1>Subscribe <br>
						for our Newsletter</h1>
					<p>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 
						tempor incididunt ut labore et dolore magna aliqua.
					</p>
					<div class="" id="mc_embed_signup2">	
						<form target="_blank" novalidate="true" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
							method="get" class="form-inline">
							<div class="d-flex flex-row">
								<input class="form-control" name="EMAIL" placeholder="Enter Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Email Address '"
									required="" type="email">
								<button class="click-btn btn text-uppercase">subscribe</button>
								<div style="position: absolute; left: -5000px;">
									<input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
								</div>
							</div>
							<div class="info"></div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================ End CTA Area =================-->
	
		<c:import url="/Footer.jsp" />
		
			<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="assets/js/jquery-3.2.1.min.js"></script>
	<script src="assets/js/popper.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/stellar.js"></script>
	<script src="assets/js/jquery.magnific-popup.min.js"></script>
	<script src="assets/vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="assets/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="assets/js/owl-carousel-thumb.min.js"></script>
	<script src="assets/js/jquery.ajaxchimp.min.js"></script>
	<script src="assets/js/mail-script.js"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="assets/js/gmaps.min.js"></script>
	<script src="assets/js/theme.js"></script>

</body>
</html>