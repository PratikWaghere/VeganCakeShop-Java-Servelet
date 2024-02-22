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
	crossorigin="anonymous" />
<title>Remove product</title>
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
		<form action="removeproduct" method="post">
			<input type="hidden" id="status-login"
				value="<%=request.getAttribute("status")%>" />
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Food name</label>
				<input type="text" name="foodname" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp" />
			</div>

			<button type="submit" class="btn btn-primary">Remove product</button>
		</form>
	</div>
	<script type="text/javascript">
		var login_status = document.getElementById('status').value;
		if (login_status == "invaliddata") {
			swal("sorry", "invalid details , Try again!", "error")
		} else if (login_status == "failed") {
			swal("sorry", "product not dound , Try again!", "error")
		} else if (login_status == "success") {
			swal("success", "Login successfull", "success")
		}
	</script>
</body>
</html>
