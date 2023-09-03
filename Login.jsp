<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.demo.Data"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<link rel="stylesheet" href="Css file/Register.css">
<%@ include file="Navbar.jsp"%>
<title>Registration form</title>
<style type="text/css">
.Login-form{
	width: 100%;
	height:900px;
	backgound-size: cover;
	background-image: url("Images/login1.png");
	background-repeat: no-repeat;
	margin-top: 0;
	background-color: rgba(0, 0, 0, 0.1);
}   
</style>
</head>
<body>
	<div class="Login-form">
		<div class="register">
			<div class="login">
				<img src="Images/login.png">
			</div>
			<h1>Login</h1>
			<form action="Login1.jsp" method="get">
			    <label>User Type:</label>
			    <select class="option"name="usertype"><option disabled="disabled" selected="selected">--choose User type--</option>
						<option>Buyer</option>
						<option>Seller</option>
						
					</select>
			
				<label>User Id:</label><input type="text"id="id"name="user_id"> 
				<label>Password:</label><input type="password"id="pass"name="password">
				<div class="recover">
					<a href="Forget.jsp">Forgot password?</a>
					<button >Login</button>
				</div>
			</form>
			<h3 class="login-form">OR login with</h3>
			<div class="social-media">
				<ul>
					<li><img src="Images/facebook.png"></li>
					<li><img src="Images/twitter.png"></li>
					<li><img src="Images/instagram.png"></li>
					<li><img src="Images/linkedin.png"></li>
				</ul>
			</div>
			<div class="member">
				<h4>
					Don't have an account?<a href="Seller.jsp"> SIGNUP.
				</h4>
				</a>
			</div>
		</div>
	</div>
	

</body>
	<!------------------------------------------------------- -FOOTER------------------------------------------------- -->
	<footer>
    <div class="f">
        <div class="foot">
            <h2>Quick link</h2><hr>
            <h3>
                <a href="#">Home</a><br>
                <a href="#">About</a><br>
                <a href="#">Products</a><br>
                <a href="#">Contactus</a><br>
                <a href="#">Blog</a><br>
                
            </h3>
        </div>
        <div class="foot">
            <h2>More</h2><hr>
            <h3>
                Bpsc<br>
                UPSC<br>
                Rpsc<br>
                Uppsc<br>
                Upsss<br>
                
            </h3>
        </div>
        <div class="foot">
            <h2>Contact Us</h2><hr>
            <h3>
                <i class="fa-sharp fa-solid fa-phone"></i>Phone no-9466055642 <br> 
                <i class="fa-sharp fa-regular fa-envelope"></i><a href="anjalipawar2030@gmail.com">anjalipawar2030@gmail.com</a><br>
                <i class="fa-sharp fa-regular fa-envelope"></i> <a href="priyankakhapra25@gmail.com">priyankakhapra25@gmail.com</a>
            </h3>
            <div class="sci">
                <li><a href="#"><i class="fa-brands fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa-brands fa-instagram"></i></a></li>
                <li><a href="#"><i class="fa-brands fa-twitter"></i></a></li>
                <li><a href="#"><i class="fa-brands fa-linkedin"></i></a></li>
               <li><a href="#"><i class="fa-brands fa-google"></i></a></li>
            </div>

        </div>
    </div>
    <div class="copy-right">
        <h2>CopyRight@2000</h2>
    </div>

</footer>
	

</html>
