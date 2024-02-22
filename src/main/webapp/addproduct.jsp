<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<title>Add product</title>
<style>
body {
	background-image: url(backGround.png);
}

.addproduct {
	margin-top: 7%;
	margin-left: 20%;
	width: 50%;
	font-size: 29px;
}

input[type="text"], input[type="number"], input[type="email"], input[type="password"]
	{
	border-radius: 10px;
	padding: 10px;
	font-size: 10px;
	outline: none;
}

.btn {
	cursor: pointer;
	color: white;
	text-align: center;
	/* padding: 10px; */
	font-size: 15px;
	width: 150px;
	height: 50px;
	margin-left: 35%;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Navbar</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="adminpanel.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="addproduct.jsp">Add
							product</a></li>
					<li class="nav-item"><a class="nav-link"
						href="removeproduct.jsp">Remove product</a></li>
					<li class="nav-item"><a class="nav-link disabled"
						aria-disabled="true">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="addproduct">
		<form action="addproduct" method="post">
			<input type="hidden" id="status-login"
				value="<%=request.getAttribute("status")%>" />
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Food name</label>
				<input type="text" name="foodname" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp" />
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Food
					details</label> <input type="text" name="fooddetails" class="form-control"
					id="exampleInputPassword1" />
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Image
					source</label> <input type="text" name="imgsrc" class="form-control"
					id="exampleInputPassword1" />
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Price</label>
				<input type="text" name="price" class="form-control"
					id="exampleInputPassword1" />
			</div>
			<button type="submit" class="btn btn-primary">Add product</button>
		</form>
	</div>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script type="text/javascript">
		var login_status = document.getElementById('status').value;
		if (login_status == "invaliddata") {
			swal("sorry", "invalid credentials , Try again!", "error")
		} else if (login_status == "failed") {
			swal("sorry", "some error occured , Try again!", "error")
		} else if (login_status == "success") {
			swal("success", "Login successfull", "success")
		}
	</script>
</body>
</html>
