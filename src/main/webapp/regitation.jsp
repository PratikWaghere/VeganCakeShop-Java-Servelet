<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registater</title>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link rel="stylesheet" href="styles/style.css">
        <style>
            body{
                background-image: url(images/backGround.png);
            }
            .form {
  display: flex;
  flex-direction: column;
  gap: 10px;
  max-width: 550px;
  /* height: 650px; */
  background-color: #fff;
  padding: 30px;
  font-size: 20px;
  border-radius: 20px;
  position: relative;
  margin-top: 50px;
  left: 50%;
  bottom: 20%;
  transform: translate(-50%);
  box-shadow: #81a745 ,black;
}

.title {
  font-size: 30px;  
  color: #81a745;
  font-weight: 600;
  margin-left: 30%;
  letter-spacing: -1px;
  position: relative;
  display: flex;
  align-items: center;
  padding-left: 30px;
}
.message, .signin {
  /* color: rgba(88, 87, 87, 0.822); */
  color: #81a745;
  font-size: 1\4px;
}

.signin {
  text-align: center;
}

.signin a {
  color: #81a745;
}

.signin a:hover {
  text-decoration: underline royalblue;
}

.flex {
  display: flex;
  width: 100%;
  gap: 6px;
}

.form label {
  position: relative;
}

.form label .input {
  width: 100%;
  padding: 10px 10px 20px 10px;
  outline: 0;
  border: 1px solid rgba(105, 105, 105, 0.397);
  border-radius: 10px;
}

.form label .input + span {
  position: absolute;
  left: 10px;
  top: 15px;
  color: grey;
  font-size: 0.9em;
  cursor: text;
  transition: 0.3s ease;
}

.form label .input:placeholder-shown + span {
  top: 15px;
  font-size: 0.9em;
}

.form label .input:focus + span,.form label .input:valid + span {
  top: 30px;
  font-size: 0.7em;
  font-weight: 600;
}

.form label .input:valid + span {
  color: green;
}

.submit {
  border: none;
  outline: none;
  background-color: #81a745;
  padding: 10px;
  border-radius: 10px;
  color: #fff;
  font-size: 16px;
  transform: .3s ease;
}

.submit:hover {
  background-color: #5f7e2e;
}

@keyframes pulse {
  from {
    transform: scale(0.9);
    opacity: 1;
  }

  to {
    transform: scale(1.8);
    opacity: 0;
  }
}
        </style>
    </head>
    <body>
         <!-- header section start here  -->
    <header class="header">
    <input type="hidden" id="status" value="<%= request.getAttribute("status") %>"/>
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
                  <li><a class="dropdown-item" href="regitation">Registater</a></li>
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
   <form class="form" action="register" method="post">
    <p class="title">Register </p>
    <!-- <p class="message">Register</p> -->
        <div class="flex">
        <label>
            <input required="" placeholder="" name="firstname" type="text" class="input">
            <span>Firstname</span>
        </label>

        <label>
            <input required="" placeholder="" name="lastname" type="text" class="input">
            <span>Lastname</span>
        </label>
    </div>  
            
    <label>
        <input required="" placeholder="" name="email" type="email" class="input">
        <span>Email</span>
    </label> 
    <label>
        <input required="" placeholder="" name="contact" type="number" class="input">
        <span>Contact number</span>
    </label>    
    <label>
        <input required="" placeholder="" name="password" type="password" class="input">
        <span>Password</span>
    </label>
    <label>
        <input required="" placeholder="" name="cpassword" type="password" class="input">
        <span>Confirm password</span>
    </label>
    <button type="submit" class="submit">Submit</button>
    <p class="signin">Already have an acount ? <a href="login.jsp">Signin</a> </p>
</form>
<script type="text/javascript">
    	var status = document.getElementById('status').value;
    	if(status == "invalidname"){
    		swal("sorry" , "invalid username" , "error")
    	}else if(status == "invalidemail"){
    		swal("sorry" , "invalid email" , "error")
    	}else if(status == "invalidnumber"){
    		swal("sorry" , "invalid contact" , "error")
    	}else if(status == "invalidpass"){
    		swal("sorry" , "invalid password ar password do not match" , "error")
    	}
    	else if(status == "failed"){
    		swal("Sorry" , "there might be a connection problem" , "failed");
    	}
    	else if(status == "success"){
    		swal("success" , "account has been created now sign up to access" , "success")
    	}
    </script>
</body>
</html>