<%-- 
    Document   : login
    Created on : 05-03-2023, 16:10:25
    Author     : fpt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Signin</title>
	<link rel="stylesheet" type="text/css" href="assets/css/as-alert-message.min.css">
	<link rel="stylesheet" type="text/css"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="assets/css/style-starter.css">
	<link rel="stylesheet" type="text/css" href="assets/css/sign-in.css">
</head>

<body>
	<header id="site-header" class="w3l-header fixed-top">
		<!--/nav-->
		<nav class="navbar navbar-expand-lg navbar-light fill px-lg-0 py-0 px-3">
			<div class="container">
				<h1><a class="navbar-brand" href="home"><span class="fa fa-play icon-log"
							aria-hidden="true"></span>
							KazuMoV</a></h1>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
				</div>
				
				<!-- toggle switch for light and dark theme -->
				
			</div>
		</nav>
	</header>

	<div class="container_signup_signin" id="container_signup_signin">
		<div class="form-container sign-up-container">
			<form name="sign-up-form" action="signup" method="post">
				<h1>Đăng ký</h1>
				<input name="user" type="text" placeholder="Name" required />
				<input name="pass" type="password" placeholder="Password" required />
				<input name="repass" type="password" placeholder="RePassword" required />
				<button>Đăng nhập</button>
			</form>
		</div>
		<div class="form-container sign-in-container">
			<form name="sign-in-form" style="color: var(--theme-title);" action="login" method ="post">
				<h1>Đăng nhập</h1>
                                <p class="text-danger">${mess}</p>
				<input name="user" type="text" placeholder="Name" required />
				<input name="pass" type="password" placeholder="Password" required />
<!--				<a href="#">Forgot your password?</a>-->
				<button>Đăng nhập</button>
			</form>
		</div>
		<div class="overlay-container">
			<div class="overlay">
				<div class="overlay-panel overlay-left">
					<h1>おはよう</h1>
					<p>Hãy đăng nhập để sử dụng các chức năng của chúng tôi</p>
					<button class="ghost" id="signIn">Sign In</button>
				</div>
				<div class="overlay-panel overlay-right">
					<h1>Chào mừng</h1>
					<p>Hãy đăng ký và đặt vé ngay nào!!!</p>
					<button class="ghost" id="signUp">Đăng ký</button>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="assets/js/as-alert-message.min.js"></script>
	<script src="assets/js/jquery-3.3.1.min.js"></script>
	<!--/theme-change-->
	<script src="assets/js/theme-change.js"></script>
	<!-- disable body scroll which navbar is in active -->
	<script>
		$(function () {
			$('.navbar-toggler').click(function () {
				$('body').toggleClass('noscroll');
			})
		});
	</script>
	<!-- disable body scroll which navbar is in active -->
	<!--/MENU-JS-->
	<script>
		$(window).on("scroll", function () {
			var scroll = $(window).scrollTop();

			if (scroll >= 80) {
				$("#site-header").addClass("nav-fixed");
			} else {
				$("#site-header").removeClass("nav-fixed");
			}
		});

		//Main navigation Active Class Add Remove
		$(".navbar-toggler").on("click", function () {
			$("header").toggleClass("active");
		});
		$(document).on("ready", function () {
			if ($(window).width() > 991) {
				$("header").removeClass("active");
			}
			$(window).on("resize", function () {
				if ($(window).width() > 991) {
					$("header").removeClass("active");
				}
			});
		});
	</script>
	<script src="assets/js/bootstrap.min.js"></script>

	<script type="text/javascript" src="assets/js/sign-in.js"></script>

</body>

</html>