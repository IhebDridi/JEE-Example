<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--================ Start Header Menu Area =================-->
	<header class="header_area">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="<c:url value="/Index.jsp"/>"><img src="assets/Logo/Logo-no-background.png" height="50px" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item "><a class="nav-link" href="<c:url value="/Index.jsp"/>">Home</a></li>
							<li class="nav-item"><a class="nav-link" href="<c:url value="/Packages.jsp"/>">Packages</a></li>
							<li class="nav-item"><a class="nav-link" href="<c:url value="/About.jsp"/>">About</a></li>
							<li class="nav-item"><a class="nav-link" href="<c:url value="/Contact.jsp"/>">Contact</a></li>
						</ul>
						<ul class="nav navbar-nav ml-auto">
							<li class="nav-item">
								<a href="<c:url value="/BookTrip.jsp"/>" class="primary-btn">Book a trip</a>
							</li>
							<!-- <li class="nav-item">
								<button type="button" class="search nav-link">
									<i class="lnr lnr-magnifier" id="search"></i>
								</button>
							</li> -->
						</ul>
					</div>
				</div>
			</nav>
			
			<div class="search_input" id="search_input_box">
				<div class="container">
					<form class="d-flex justify-content-between">
						<input type="text" class="form-control" id="search_input" placeholder="Search Here">
						<button type="submit" class="btn"></button>
						<span class="lnr lnr-cross" id="close_search" title="Close Search"></span>
					</form>
				</div>
			</div>
		</div>
	</header>
	<!--================ End Header Menu Area =================-->
