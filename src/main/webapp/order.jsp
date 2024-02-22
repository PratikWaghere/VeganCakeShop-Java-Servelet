<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="styles/style.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<title>Place order</title>
<style>
body {
	background-image: url(images/backGround.png);
}

.container {
	/* margin-right: 100%; */
	width: 50%;
	margin-left: -100px;
	margin-top: 5%;
}

.inputBox {
	width: 100%;
	padding: 10px 10px 20px 10px;
	outline: 0;
	border: 1px solid rgba(105, 105, 105, 0.397);
	border-radius: 10px;
	background-color: #f4f4f4;
}

.box {
	font-size: 14px;
	padding: 3px;
	width: 100%;
}

span {
	font-size: 29px;
	color: #131b05;
	font-family: 'Quicksand', sans-serif;
	font-weight: 200;
}

input[type="text"], input[type="number"], input[type="email"], input[type="password"],
	input[type="datetime-local"], input[type="button"] .eml {
	box-sizing: border-box;
	font-family: inherit;
	font-size: 14px;
	vertical-align: baseline;
	font-weight: 400;
	line-height: 1.29;
	letter-spacing: .16px;
	border-radius: 0;
	outline: 2px solid transparent;
	outline-offset: -2px;
	width: 100%;
	height: 40px;
	border: none;
	border-bottom: 1px solid #8d8d8d;
	background-color: #f4f4f4;
	padding: 0 16px;
	color: #161616;
	transition: background-color 70ms cubic-bezier(.2, 0, .38, .9), outline
		70ms cubic-bezier(.2, 0, .38, .9); : focus { outline : 2px solid
	#0f62fe;
	outline-offset: -2px;
}

}
.btn {
	position: relative;
	left: 100%;
	margin-top: 3px;
	margin-bottom: 3px;
	font-size: 20px;
	height: 7%;
	width: 20%;
	background-color: #81a745;
}
</style>
</head>
<body>
	<header class="header">
		<div class="logoContent">
			<a href="#" class="logo"><img src="images/logo.png" alt=""></a>
			<h1 class="logoName">Vegan Cake</h1>
		</div>
		<nav class="navbar">
			<a href="#home">home</a>
			<li class="dropdown"><a class="dropbtn"
				data-bs-toggle="dropdown" href="#login" role="button"
				aria-expanded="false">Account</a>
				<ul class="dropdown-content">
					<li><a class="dropdown-item" href="adminlogin.jsp">Admin login</a></li>
					<li><a class="dropdown-item" href="login.jsp">Login</a></li>
					<li><a class="dropdown-item" href="regitation.jsp">Registater</a></li>
				</ul>
		</nav>
	</header>
	<div class="container">
		<form action="order" method="post">
			<input type="hidden" id="status"
				value="<%=request.getAttribute("status")%>" />
			<div class="box-container">
				<div class="box">
					<div class="inputBox">
						<span>full name</span> <input type="text" name="username"
							placeholder="enter your name">
					</div>
					<div class="inputBox">
						<span>food name</span> <input type="text" name="fooditem"
							placeholder="food you want">
					</div>
					<div class="inputBox">
						<span>order details</span> <input type="text" name="details"
							placeholder="specifics with food">
					</div>
					<div class="inputBox">
						<span>your address</span>
						<input type="text" name="address" placeholder="enter your address" id="">
					</div>
				</div>
				<div class="box">
					<div class="inputBox">
						<span>number</span> <input type="number" name="contact"
							placeholder="enter your number">
					</div>
					<div class="inputBox">
						<span>how much</span> <input type="number" name="count"
							placeholder="how many you want">
					</div>
					<div class="inputBox">
						<span>when</span> <input type="datetime-local" name="time">
					</div>

				</div>
			</div>
			<button type="submit" id="order" class="btn">Order now</button>
		</form>
	</div>
	<footer class="footer" id="contact">
		<div class="box-container">
			<div class="mainBox">
				<div class="content">
					<a href="#"><img src="images/logo.png" alt=""></a>
					<h1 class="logoName">Sweet Cake</h1>
					<div class="box">
						<h3>Contact Info</h3>
						<a href="#"> <i class="fas fa-phone"></i>1234567890
						</a> <a href="#"> <i class="fas fa-envelope"></i>pratikwaghere02@gmail.com
						</a>

					</div>

				</div>
				<div class="share">
					<a href="#" class="fab fa-facebook-f"></a> <a href="#"
						class="fab fa-twitter"></a> <a href="#" class="fab fa-instagram"></a>
					<a href="#" class="fab fa-linkedin"></a> <a href="#"
						class="fab fa-pinterest"></a>
				</div>
	</footer>

	<script type="text/javascript">
		var login_status = document.getElementById('status').value;
		if (login_status == "invaliddate") {
			swal("sorry", "invalid date , Enter a valid date!", "error")
		} else if (login_status == "invaliddata") {
			swal("success", "Login successfull", "error")
		} else if (login_status == "failed") {
			swal("success", "Login failed , Some error occured", "fail")
		} else if (login_status == "success") {
			swal("success", "Login successfull", "success")
		}
	</script>
</body>
</html>