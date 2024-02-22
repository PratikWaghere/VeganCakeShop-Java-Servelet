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
<title>Vegan Cake</title>

<!-- swiper link  -->
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link rel="stylesheet" href="styles/style.css">

</head>

<body>
	<!-- header section start here  -->
	<header class="header">
		<div class="logoContent">
			<a href="#" class="logo"><img src="images/logo.png" alt=""></a>
			<h1 class="logoName">Vegan Cake</h1>
		</div>

		<nav class="navbar">
			<a href="#home">home</a> <a href="shop.html">Shop</a> <a
				href="#product">product</a> <a href="#contact">contact</a> <a
				href="#review">review</a>
			<li class="dropdown"><a class="dropbtn"
				data-bs-toggle="dropdown" href="#login" role="button"
				aria-expanded="false">Account</a>
				<ul class="dropdown-content">
					<li><a class="dropdown-item" href="adminlogin.jsp">admin
							login</a></li>
					<li><a class="dropdown-item" href="login.jsp">Login</a></li>
					<li><a class="dropdown-item" href="regitation.jsp">Register</a></li>
				</ul></li> <a href="#" class="cart-icon"> <i class="fas fa-shopping-cart"></i>
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
	<!-- header section end here  -->

	<!-- home section start here  -->
	<section class="home" id="home">
		<div class="homeContent">
			<h2>We relish the vegan cake delish!</h2>
			<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum
				excepturi doloribus, fuga quod deserunt recusandae?</p>
			<div class="home-btn">
				<a href="#"><button>see more</button></a>
			</div>
		</div>
	</section>

	<!-- home section end here  -->

	<!-- product section start here  -->
	<section class="product" id="product">
		<div class="heading">
			<h2>Our Exclusive Products</h2>
		</div>

		<div class="swiper product-row">
			<div class="swiper-wrapper">
				<%
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/pratikw?allowPublicKeyRetrieval=true&useSSL=false", "root", "prajyot123");
					Statement stmt = conn.createStatement();
					ResultSet rs = stmt.executeQuery("select * from products");
					while (rs.next()) {
				%><div class="swiper-slide box">
					<div class="img">
						<img src="<%out.println(rs.getString("imgsrc"));%>" alt="">
					</div>
					<div class="product-content">
						<h3>
							<%
							out.println(rs.getString("foodname"));
							%>
						</h3>
						<p>
							<%
							out.println(rs.getString("fooddetails"));
							%>
						</p>

						<h4> Price :
							<%
							out.println(rs.getString("foodprice"));
							%>
						</h4>

						<div class="orderNow">
							<a href="order.jsp"><button>order now</button></a>
						</div>

						<div class="orderNow" id="success-message" class="success-message">
							<button class="add-to-cart">Add to Cart</button>
						</div>
					</div>
				</div>

				<%
				}
				%>
				<%
				rs.close();
				stmt.close();
				conn.close();
				} catch (Exception e) {
				e.printStackTrace();
				}
				%>

			</div>
			<div class="swiper-pagination"></div>
		</div>
	</section>

	<!-- product section end here  -->

	<!-- blogs section start here  -->
	<section class="blogs" id="blogs">

		<div class=" swiper blogs-row">
			<div class="swiper-wrapper">
				<div class=" swiper-slide box">
					<div class="img">
						<img src="images/blog-img1.png" alt="">
					</div>
					<div class="content">
						<h3>Vegan Vanilla Cupcakes</h3>
						<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit.
							Eligendi dolorum voluptatum corporis accusamus aperiam fugiat
							tempora blanditiis labore dolor aliquid maxime nobis laborum sed
							soluta voluptatibus aspernatur natus, dicta quisquam.</p>
						<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.
							Totam ab ullam reiciendis sint eaque at.</p>
						<a href="#blogs" class="btn">learn more</a>
					</div>
				</div>
				<div class=" swiper-slide box">
					<div class="img">
						<img src="images/blog-img2.png" alt="">
					</div>
					<div class="content">
						<h3>Vegan Vanilla Cake</h3>
						<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit.
							Eligendi dolorum voluptatum corporis accusamus aperiam fugiat
							tempora blanditiis labore dolor aliquid maxime nobis laborum sed
							soluta voluptatibus aspernatur natus, dicta quisquam.</p>
						<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.
							Totam ab ullam reiciendis sint eaque at.</p>
						<a href="#blogs" class="btn">learn more</a>
					</div>
				</div>
				<div class=" swiper-slide box">
					<div class="img">
						<img src="images/blog-img2.png" alt="">
					</div>
					<div class="content">
						<h3>Mix Fruit Caramel Bourbon cakes</h3>
						<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit.
							Eligendi dolorum voluptatum corporis accusamus aperiam fugiat
							tempora blanditiis labore dolor aliquid maxime nobis laborum sed
							soluta voluptatibus aspernatur natus, dicta quisquam.</p>
						<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.
							Totam ab ullam reiciendis sint eaque at.</p>
						<a href="#blogs" class="btn">learn more</a>
					</div>
				</div>
			</div>
			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>
			<div class="swiper-pagination"></div>


		</div>
	</section>

	<!-- blogs section ends here  -->

	<!-- review section start here  -->
	<section class="review" id="review">
		<div class="heading">
			<h2>client review</h2>
		</div>


		<div class=" swiper review-row">
			<div class="swiper-wrapper">
				<div class="swiper-slide box">
					<div class="client-review">
						<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit.
							Provident, perferendis architecto quasi eveniet aliquam sed?</p>
					</div>
					<div class="client-info">
						<div class="img">
							<img src="images/client1.jpg" alt="">
						</div>
						<div class="clientDetailed">
							<h3>Hardy Devid</h3>
							<p>UI / UX designer</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide box">
					<div class="client-review">
						<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit.
							Provident, perferendis architecto quasi eveniet aliquam sed?</p>
					</div>
					<div class="client-info">
						<div class="img">
							<img src="images/client1.jpg" alt="">
						</div>
						<div class="clientDetailed">
							<h3>Hardy Devid</h3>
							<p>UI / UX designer</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide box">
					<div class="client-review">
						<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit.
							Provident, perferendis architecto quasi eveniet aliquam sed?</p>
					</div>
					<div class="client-info">
						<div class="img">
							<img src="images/client1.jpg" alt="">
						</div>
						<div class="clientDetailed">
							<h3>Hardy Devid</h3>
							<p>UI / UX designer</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide box">
					<div class="client-review">
						<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit.
							Provident, perferendis architecto quasi eveniet aliquam sed?</p>
					</div>
					<div class="client-info">
						<div class="img">
							<img src="images/client1.jpg" alt="">
						</div>
						<div class="clientDetailed">
							<h3>Hardy Devid</h3>
							<p>UI / UX designer</p>
						</div>
					</div>
				</div>
				<div class="swiper-pagination"></div>

			</div>
		</div>
	</section>
	<!-- review section ends here  -->

	<!-- footer section start here  -->

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

	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

	<script src="./index.js"></script>


</body>

</html>