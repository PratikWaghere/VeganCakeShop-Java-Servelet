<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <style>
    body{
      background-image: url(images/backGround.png);
    }
    .form {
  background-color: #fff;
  display: block;
  padding: 3rem;
  max-width: 350px;
  border-radius: 0.5rem;
  box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05);
  margin-left: 50%;
  margin-top: 20%;
  /* top: 50%; */
  /* left: 50%; */
  transform: translate(-50%,-50%);
}

.form-title {
  font-size: 2.25rem;
  line-height: 1.75rem;
  font-weight: 600;
  text-align: center;
  color: #81a745;
}

.input-container {
  position: relative;
  font-size: 3px;
}

.input-container input, .form button {
  outline: none;
  border: 1px solid #e5e7eb;
  margin: 8px 0;
}

.input-container input {
  background-color: #fff;
  padding: 1rem;
  padding-right: 3rem;
  font-size: 1.875rem;
  line-height: 1.25rem;
  width: 300px;
  border-radius: 0.5rem;
  box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.05);
}
.lbl{
  font-size: 18px;
  color: #81a745;
}
.submit {
  display: block;
  padding-top: 0.75rem;
  padding-bottom: 0.75rem;
  padding-left: 1.25rem;
  padding-right: 1.25rem;
  background-color:#81a745;
  color: #ffffff;
  font-size: 1.875rem;
  line-height: 1.25rem;
  font-weight: 500;
  width: 105%;
  border-radius: 0.5rem;
  text-transform: uppercase;
}

.signup-link {
  color: #6B7280;
  font-size: 1.875rem;
  line-height: 1.25rem;
  text-align: center;
}

.signup-link a {
  text-decoration: underline;
}
    </style>
    <link rel="stylesheet" href="styles/style.css">
</head>
<body>
    <!-- header section start here  -->
    <header class="header">
    <input type="hidden" id="status-login" value="<%= request.getAttribute("status-login") %>"/>
        <div class="logoContent">
            <a href="#" class="logo"><img src="images/logo.png" alt=""></a>
            <h1 class="logoName">Vegan Cake</h1>
        </div>

        <nav class="navbar">
            <a href="index.jsp">home</a>

            <li class="dropdown">
                <a class="dropbtn" data-bs-toggle="dropdown" href="#login" role="button" aria-expanded="false">Account</a>
                <ul class="dropdown-content">
                  <li><a class="dropdown-item" href="adminlogin.jsp">Admin login</a></li>
                  <li><a class="dropdown-item" href="login.jsp">Login</a></li>
                  <li><a class="dropdown-item" href="regitation.jsp">Registater</a></li>
                </ul>
              </li>
        </nav>

        <div class="icon">
            <i class="fas fa-search" id="search"></i>
            <i class="fas fa-bars" id="menu-bar"></i>
        </div>

        <div class="search">
            <input type="search" placeholder="search...">
        </div>
    </header>
    <!-- header section end here  -->
  
    <form class="form" action="login" method="post">
      <p class="form-title">Sign in to your account</p>
       <div class="input-container">
        <label class="lbl">Email</label>
         <input type="email" name="email" placeholder="Enter email">
         <span>
         </span>
     </div>
     <div class="input-container">
         <label class="lbl">Password</label>
         <input type="password" name="password" placeholder="Enter password">
       </div>
        <button type="submit" class="submit">
       Sign in
     </button>

     <p class="signup-link">
       No account?
       <a href="regitation.html">Sign up</a>
     </p>
  </form>
<script type="text/javascript">
    	var login_status = document.getElementById('status-login').value;
    	if(login_status == "failed"){
    		swal("sorry" , "invalid credentials , Try again!" , "error")
    	}else if(login_status == "success"){
    		swal("success" , "Login successfull" , "success")
    	}
    </script>
</body>
</html>
