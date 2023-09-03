<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
    <%@ page import="com.demo.Data"%>
    <%@ include file="Navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Password Update</title>
    <style>
    body{
    background-color:rgba(128, 128, 128, 0.126);
    }
    .container{
	
	
	width:100%;
	padding-top:20px;
	margin-top:0%;
	padding-bottom:50px;
}
.register {
	
	width: 500px;
    height: 200px;
    border-radius: 10px;
    padding: 2.5rem 1.1rem;
    margin: 20px auto;
    border:1px solid rgba(128, 128, 128, 0.194);
    background-color:white;	
}

.register:hover {
	box-shadow: 0 0 50px rgba(221, 232, 228, 0.90);
	transition-duration: 0.1s;
}

h1{
	font-size: 50px;
	color: black;
	padding-left: 33%;
	font-family:'Poppins',sans-serif;
}

form label {
	display: flex;
	
}

form input {
	width: 50%;
	margin-left: 10px;
	margin-bottom: 10px;
	width: 90%;
	margin-left: 10px;
	margin-bottom: 10px;
	border: none;
	outline: none;
	border-bottom: 1px solid rgba(109, 93, 93, 0.4);
	font-size: 16px;
	text-align: center;


}
 form button{
   border: none;
    font-size: 15px;
    background-color: rgb(44, 44, 232);
    border-radius: 22px;
    color: white;
    cursor: pointer;
    padding: 9px 19px;
    margin:5% 24%;
}
   form button:hover {
    background: black;
    transform:scale(1.1);
} 

/**************************Footer*****************************************/
 footer {
    height: 350px;
    width: 100%;
    background-color: #e2e8f0;
    opacity: 0.9;
   
}
.foot {

    margin-left: 10%;
    padding-left: 10%;
    color: black;
    font-size: 20px;
    float: left;
    position: sticky;
    font-family:'Popins',sans-serif;

}
.foot hr{
	border: 2px solid blue;
}
.foot h2:hover {
    color: blue;
}

.foot h3 a {
   color: grey;
}

.foot h3 {
    font-size: 20px;
    padding-top: 10%;
    justify-content: space-between;
    color: black;
}

.foot h3 .fa-sharp {
    margin-right: 10px;
    margin-top: 1%;
    color:blue;
}

.foot a {
    text-decoration: none;
    justify-content: space-between;
}

.foot .i {
    font-size: 10px;
}



.f {
    height: 200px;
    width: 100%;
}



.copy-right {
    background-color: white;
    margin-top: 7%;
    padding-top: 1px;
    padding-bottom:1px;
}

.copy-right h2 {
    font-size: 25px;
    color: black;
    margin-left: 40%;
    font-family:'popins',sans-serif;
}

.sci {
    margin-top: 20px;
    display: flex;
}

.sci li {
    list-style: none;

}

.sci li a {
    display: flex;
    height: 20px;
    width: 40px;
    justify-content: center;
    background: blue; 
    margin-right: 20px;
    padding-top: 10px;
    padding-bottom: 10px;
}

.sci li a:hover {
    background: black;
}

.sci li a .fa-brands {
    color: white;
}
    </style>
</head>
<body>
    <h1>Password Update</h1>

    <% 
    if (request.getParameter("submit") != null) {
        String user_id = request.getParameter("Userid");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("c_pass");

        if (password.equals(confirmPassword)) {
            Data d1 = new Data();
            Connection cn = d1.getconnection();
            PreparedStatement ps = cn.prepareStatement("update Seller set Seller_Password=?,C_pass=? where Seller_id=?");
            ps.setString(1, password);
            ps.setString(2, confirmPassword);
            ps.setString(3, user_id);

            int change = ps.executeUpdate();

            if (change > 0) {
                // Password update successful
                out.println("<h2 style=\"color: green; margin-left:30%;\">Password changed successfully!</h2>");
            } else {
                // Password update failed
                out.println("<h2 style=\"color: red; margin-left: 30%;\">Something went wrong!!!!!!!!</h2>");
            }
        } else {
            // Password and confirm password do not match
            out.println("<h2 style=\"color: red; margin-left: 30%;\">Password and confirm password do not match!</h2>");
        }
    }
    %>
<div class="container">
<div class="register">
    <form action="Forget.jsp" method="post">
    <label>User Id:</label><input type="text" id="id" name="Userid">
        <label>Password:</label><input type="password" id="pass" name="password"> 
        <label>Confirm password:</label><input type="password" id="c_pass" name="c_pass"> 
        
        <button name="submit">Update password</button>
    </form>
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