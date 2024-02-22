<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
	<link rel="stylesheet" href="styles/style.css">
<meta charset="UTF-8">
<title>Admin Login</title>
<style>
body {
	background-image: url(backGround.png);
}

.container {
	margin-top: 10%;
	width: 50%;
	font-size: 24px;
}

input[type="email"], input[type="password"] {
	border-radius: 10px;
	padding: 10px;
	font-size: 10px;
	outline: none;
}

.btn {
	cursor: pointer;
	color: white;
	text-align: center;
	padding: 10px;
	font-size: 15px;
	width: 100px;
}
</style>
</head>
<body>
	<header class="header">
		<div class="logoContent">
			<a href="#" class="logo"><img src="logo.png" alt=""></a>
			<h1 class="logoName">Vegan Cake</h1>
		</div>
		<nav class="navbar">
			<a href="index.jsp">home</a> 
			<li class="dropdown"><a class="dropbtn"
				data-bs-toggle="dropdown" href="#login" role="button"
				aria-expanded="false">Account</a>
				<ul class="dropdown-content">
					<li><a class="dropdown-item" href="adminlogin.jsp">Admin login</a></li>
					<li><a class="dropdown-item" href="login.jsp">Login</a></li>
					<li><a class="dropdown-item" href="regitation.jsp">Registater</a></li>
				</ul></li> <a href="cart.html" class="cart-icon"> <i
				class="fas fa-shopping-cart"></i>
			</a>

		</nav>

		<div class="icon">
			<i class="fas fa-search" id="search"></i> <i class="fas fa-bars"
				id="menu-bar"></i>
		</div>

		<div class="search">
			<input type="search" placeholder="search...">
		</div>
	</header>
	<div class="container">
		<form action="adminlogin" method="post">
			<input type="hidden" id="status-login"
				value="<%=request.getAttribute("status")%>" />
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Email
					address</label> <input type="email" name="adminemail" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp">
				<div id="emailHelp" class="form-text">We'll never share your
					email with anyone else.</div>
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Password</label>
				<input type="password" name="adminpassword" class="form-control"
					id="exampleInputPassword1">
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
			<div class="newaccount">
				<a href="adminregistration.jsp">new account</a>
			</div>
		</form>
	</div>
</body>
</html>