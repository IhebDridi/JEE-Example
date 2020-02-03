<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tunisian Adventure Booking</title>


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
						<a href="book-trip.html">Book a Trip</a>
					</div>
					<h2>Book a Trip</h2>
				</div>
			</div>
		</div>
	</section>
	<!--================End Home Banner Area =================-->

	<!--================ Start Book a Trip Area =================-->
	<fieldset>
	
	<section class="trip-area section_gap">
		<div class="container" id="CreationTrip">
			<div class="row justify-content-center">
				<div class="col-lg-7 col-md-10">
					<div class="trip-form-section">
						<h1>Book a Trip <br>
							for your next Tour</h1>
						<form class="trip-form-area trip-page-form trip-form text-right" action="TripBooking"  method="post">
							<div class="form-group col-md-12">
								<div class="form-select">
									<select required name="PackagesType">
										<option value="Desert package">Desert package</option>
										<option value="Forest package">Forest package</option>
										<option value="Beach package">Beach package</option>
									</select>
								</div>
							</div>
							<!-- <div class="form-group col-md-12">
								<input type="text" class="form-control" id="name" name="name" placeholder="To" onfocus="this.placeholder = ''"
								 onblur="this.placeholder = 'To'">
							</div> -->
							<div class="form-group col-md-12">
								<input required type="text" class="form-control" id=nameOfTrip name="nameOfTrip" placeholder="nameOfTrip" onfocus="this.placeholder = ''"
								 onblur="this.placeholder = 'nameOfTrip'">
							</div>
							<!-- <div class="form-group col-md-12">
								<input type="text" class="form-control" id="subject" name="subject" placeholder="Return" onfocus="this.placeholder = ''"
								 onblur="this.placeholder = 'Return'">
							</div>  -->
							<div class="form-group col-md-12">
								<input required type="text" class="form-control" id=TripClient name="TripClient" placeholder="TripClient" onfocus="this.placeholder = ''"
								 onblur="this.placeholder = 'TripClient'">
							</div>

							<div class="form-group col-md-12">
								<input required type="email" class="form-control" id="ClientEmail" name="ClientEmail" placeholder="ClientEmail" onfocus="this.placeholder = ''"
								 onblur="this.placeholder = 'ClientEmail'">
							</div>
							
							<div class="form-group col-md-12">
								<input required type="date" class="form-control" id="dateOfStarting" name="dateOfStarting" placeholder="dateOfStarting" onfocus="this.placeholder = 'date'"
								 onblur="this.placeholder = 'dateOfStarting'">
							</div>
							<div class="col-lg-12 text-center">
								<input  type="submit" value="Save Trip">
							</div>
							
						</form>
					</div>
				</div>
			</div>
		</div>	
	</section>
	</fieldset>
	<!--================ End Book a Trip Area =================-->
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