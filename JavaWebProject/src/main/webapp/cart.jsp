<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>BKMT WATCH | Cart</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">

<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/ionicons.min.css">

<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">

<link rel="stylesheet" href="fontawesome-free-6.2.0-web/css/all.css">

<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/mystyle.css">
</head>

<body class="goto-here">
	<jsp:include page="header.jsp"></jsp:include>
	<!-- END nav -->

	<div class="hero-wrap hero-bread"
		style="background-image: url('images/bg_1.jpeg');">
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index.html">Home</a></span> <span>Cart</span>
					</p>
					<h1 class="mb-0 bread">Cart</h1>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section ftco-cart">
		<div class="container">
			<div class="row">
				<div class="col-md-12 ftco-animate">
					<div class="cart-list">
						<table class="table">
							<tbody>
								<c:forEach items="${sessionScope.cart}" var="p">
									<tr class="text-center">
									<td class="product-remove"><input type="checkbox" id="buy"
										name="watch01" value="buy"></td>

									<td class="image-prod">
										<div class="img"
											style="background-image: url(${p.image});"></div>
									</td>

									<td class="product-name">
										<h3>${p.name}</h3>
										<p>${p.desc}</p>
										<p class="price">Price: $${p.price}</p>
										<div class="cart_quantity">
											<span>Quantity: </span> <input type="number" name="quantity"
												class="quantity cart_quantity_input input-number" value="${p.quantity}"
												min="1" max="100" onchange="changeQuantity(${p.id}, this)">
										</div>
										<div class="cart_product_remove">
											<a href="#" onclick="deleteFromCart(${p.id})"><span class="ion-ios-close"></span></a>
										</div>
									</td>
								</tr>
								</c:forEach>
								<!-- END TR-->
							</tbody>
						</table>
					</div>
					<p class="text-center mt-5"
						style="display: flex; justify-content: space-between;">
						<a href="OrderHistory" class="btn btn-primary"
							style="margin: 0 2rem;">Order history</a><a href="Shop?page=1"
							class="btn btn-primary" style="margin: 0 2rem;">Continue
							shopping</a>
					</p>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section ftco-no-pt ftco-no-pb py-5 bg-light">
		<div class="row justify-content-end mb-5">
			<div class="col-lg-6 cart-wrap ftco-animate">
				<div class="cart-total mb-3">
					<h2 class="text-center">Coupon Code</h2>
					<p>Enter your coupon code if you have one</p>
					<form action="#" class="info">
						<div class="form-group">
							<label for="">Coupon code</label> <input type="text"
								class="form-control text-left px-3" placeholder="">
						</div>
					</form>
				</div>
				<p class="text-center">
					<a href="checkout.html" class="btn btn-primary py-3 px-4">Apply
						Coupon</a>
				</p>
			</div>
			<div class="col-lg-6 cart-wrap ftco-animate">
				<div class="cart-total mb-3">
					<h2 class="text-center">Cart Totals</h2>
					<p class="d-flex">
						<span>Subtotal</span> <span>${sessionScope.total}$</span>
					</p>
					<p class="d-flex">
						<span>Shipping</span> <span>0$</span>
					</p>
					<p class="d-flex">
						<span>Discount</span> <span>0$</span>
					</p>
					<hr>
					<p class="d-flex total-price">
						<span>Total</span> <span>${sessionScope.total}$</span>
					</p>
				</div>
				<p class="text-center">
					<a href="Checkout" class="btn btn-primary py-3 px-4">Proceed
						to Checkout</a>
				</p>
			</div>
		</div>
	</section>
	<footer>
		<div class="Our_social_media">
			<a href="#"><i class="fa-brands fa-facebook"></i></a> <a href="#"><i
				class="fa-brands fa-instagram"></i></a> <a href="#"><i
				class="fa-brands fa-twitter"></i></a> <a href="#"><i
				class="fa-brands fa-youtube"></i></a>
		</div>
		<div class="more_info">
			<a href="#">Contact us</a> <a href="#">Our Services</a> <a href="#">Privacy
				Policy</a> <a href="#">Terms & Conditions</a> <a href="#">Career</a>
		</div>
		<p>INFERNO Copyright Â© 2021 Inferno - All rights reserved ||
			Designed By: Mahesh</p>
	</footer>



	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" />
		</svg>
	</div>


	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>
	<script src="js/cart.js"></script>
	<script>
		$(document).ready(function() {

			var quantitiy = 0;
			$('.quantity-right-plus').click(function(e) {

				// Stop acting like a button
				e.preventDefault();
				// Get the field name
				var quantity = parseInt($('#quantity').val());

				// If is not undefined

				$('#quantity').val(quantity + 1);

				// Increment

			});

			$('.quantity-left-minus').click(function(e) {
				// Stop acting like a button
				e.preventDefault();
				// Get the field name
				var quantity = parseInt($('#quantity').val());

				// If is not undefined

				// Increment
				if (quantity > 0) {
					$('#quantity').val(quantity - 1);
				}
			});

		});
	</script>

</body>

</html>
