<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
	<link rel="stylesheet" href="styles/style.css">
<title>Admin panel</title>
<style>
.adminpanel {
	margin-top: 100px;
	margin-left: 5px;
	/* display: inline; */
	width: fit-content;
	/* padding: 2px; */
	margin-right: 29px;
	justify-content: center;
}

td {
	background-color: #81a745;
	color: black;
	border-color: black;
	font-size: 12px;
	width: 5px;
}

table {
	border: 2px;
	border-width: 2px;
	width: 10%;
	height: 20%;
	font-weight: 100s;
	justify-content: center;
	border-color: black;
}

tr {
	width: fit-content;
	padding: 2px;
	font-size: 12px;
}
</style>
</head>
<body>
	<header class="header" style="background-color: #F0F0F0;">
		<div class="logoContent">
            <a href="#" class="logo"><img src="logo.png" alt=""></a>
            <h1 class="logoName">Vegan Cake</h1>
        </div>
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
		<div class="container-fluid" style="background-color: #F0F0F0;">
			<div class="collapse navbar-collapse" id="navbarNav" style="background-color: #F0F0F0;">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="adminpanel.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link"
						href="addproduct.jsp">Add product</a></li>
					<li class="nav-item"><a class="nav-link"
						href="removeproduct.jsp">Remove product</a></li>
					<li class="nav-item"><a class="nav-link disabled"
						aria-disabled="true">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
</header>
	<div class="adminpanel">
		<table border="2">
			<tr>
				<td>userid</td>
				<td>username</td>
				<td>fooditem</td>
				<td>details</td>
				<td>address</td>
				<td>contact</td>
				<td>no of items</td>
				<td>date & time</td>
			</tr>
			<%
			try {
				Class.forName("com.mysql.jdbc.Driver");
				String url = "jdbc:mysql://localhost:3306/pratikw?allowPublicKeyRetrieval=true&useSSL=false";
				String username = "root";
				String password = "prajyot123";
				String query = "select * from orders";
				Connection conn = DriverManager.getConnection(url, username, password);
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(query);
				while (rs.next()) {
			%>
			<tr>
				<td>
					<%
					out.println(rs.getInt("id"));
					%>
				</td>
				<td>
					<%
					out.println(rs.getString("username"));
					%>
				</td>

				<td>
					<%
					out.println(rs.getString("fooditem"));
					%>
				</td>

				<td>
					<%
					out.println(rs.getString("details"));
					%>
				</td>

				<td>
					<%
					out.println(rs.getString("address"));
					%>
				</td>
				<td>
					<%
					out.println(rs.getString("contact"));
					%>
				</td>
				<td>
					<%
					out.println(rs.getString("count"));
					%>
				</td>
				<td>
					<%
					out.println(rs.getString("vdatetime"));
					%>
				</td>
			</tr>
			<%
			}
			%>
		</table>
		<%
		rs.close();
		stmt.close();
		conn.close();
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>

	</div>
</body>
</html>