<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.sql.*"%>
	<%@ page import="java.io.*" %>
<%@ page import="com.demo.Data"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Seller form</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<link rel="stylesheet" href="Css file/Register.css">
<%@ include file="Navbar.jsp"%>
<style type="text/css">
.container {
	width: 100%;
	height: 780px;
	backgound-size: cover;
	background-image: url("Images/register2.png");
	background-repeat: no-repeat;
	margin-top: 0;
	background-color: rgba(0, 0, 0, 0.1);
}
</style>
</head>
<body>
	<form action="#"onsubmit="return validation()">
		<div class="container">
			<div class="register">
				<h1>Seller</h1>
				<label>Seller Id:</label> <input type="text" id="id"    name="seller_id"> <br><span id="cii"></span>
				<label>Seller name:</label> <input type="text" id="name" name="seller_name"> <br><span id="snn"></span> 
                <label>Email Id:</label> <input type="text"id="ei"       name="seller_email"> <br> <span id="eii"></span> 
                <label>Contact</label><input type="text" id="ph"         name="seller_no"> <br> <span id="phh"></span>
				<label>Seller Address:</label><input type="text" id="ad" name="seller_address"> <br><span id="add"></span> 
				<label> Password:</label><input type="text"id="pass"     name="password"> <br> <span id="passs"></span> <label>Confirm
					Password:</label> <input type="text" id="cpass"      name="c_pass"> <br> <span id="cpasss"></span>
					
					<!-- ------file choose------ --->
	
					<div class="file">
						<input type="file"name="accessimage"/>
					</div>
					
					
				<button onclick="openPopup"name="register">Register</button>
				<div class="member">
					<h4>
						Already a member?<a href="Login.jsp"> Login here.... </a>
					</h4>
				</div>
				</div>
				</div>
				</form>
				<script src="javascript folder/Seller.js"></script>	
				
<!-- -------------------DATABASE CONNECTION-------------- -->
<%
Data d1 = new Data();
Connection cn = d1.getconnection();
if(request.getParameter("register") != null) {
	
String Seller_Id=request.getParameter("seller_id");
String Seller_Name=request.getParameter("seller_name");
String Seller_Email=request.getParameter("seller_email");
String Seller_Contact=request.getParameter("seller_no");
String Seller_Address=request.getParameter("seller_address");
String Seller_password=request.getParameter("password");
String Seller_cpassword=request.getParameter("c_pass");
/*******************************************************/
/*************************COMPARE USERNAME WITH REGSITER TABLE************/
    String compare="select * from Seller WHERE seller_id=? ";
    PreparedStatement checkStmt = cn.prepareStatement(compare);
    checkStmt.setString(1, Seller_Id);
    ResultSet rs = checkStmt.executeQuery();
    if(rs.next()){
    	%>
    	<script>alert("SellerId is already exist");</script>
  <%  }

    else{
    	String query = "insert into Seller values(?,?,?,?,?,?,?)";
    	   PreparedStatement ps = cn.prepareStatement(query);

    		ps.setString(1,(Seller_Id));
    		ps.setString(2,Seller_Name);
    		ps.setString(3,Seller_Address);
    		ps.setString(4,Seller_Contact);
    		ps.setString(5,Seller_Email);
    		ps.setString(6,Seller_password);
    		ps.setString(7,Seller_cpassword);
    		
    		ps.executeUpdate();
    		
    		%><div class="popup" id="popup" style="display:none;">
        <img src="Images/i.png">
        <h2>Thank You!</h2>
        <p>Your details has been successfully submitted.Thanks!</p>
        <button type="button" onclick="closePopup()">OK</button>
    </div>
    	    <script>openPopup();</script>
    		<% }
    }

%>		
</body>
<!------------------------------------------------------- -FOOTER------------------------------------------------- -->
<footer>
	<div class="f">
		<div class="foot">
			<h2>Quick link</h2><hr>
			<h3>
				<a href="Farm.jsp">Home</a><br> 
				<a href="Fruit.jsp">FruitProduct</a><br>
				 <a href="#">Contact us</a><br>
				  <a href="#">Selling Product</a><br> 
			</h3>
		</div>
		<div class="foot">
			<h2>More</h2><hr>
			<h3>
				Bpsc<br> UPSC<br> Rpsc<br> Uppsc<br> Upsss<br>
				djd<br>
			</h3>
		</div>
		<div class="foot">
			<h2>Contact Us</h2><hr>
			<h3>
				<i class="fa-sharp fa-solid fa-phone"></i> Phone no-8221073983 <br>
				<i class="fa-sharp fa-regular fa-envelope"></i><a
					href="anjalipawar2030@gmail.com">sanjaykhan4900@gmail.com</a><br>
				<i class="fa-sharp fa-regular fa-envelope"></i> <a
					href="priyankakhapra25@gmail.com">priyankakhapra25@gmail.com</a>
			</h3><hr>
			
			<div class="sci">
			
				<li><a href="#"> <i class="fa-brands fa-facebook"></i></a></li>
				<li><a href="#"> <i class="fa-brands fa-instagram"></i></a></li>
				<li><a href="#"> <i class="fa-brands fa-twitter"></i></a></li>
				<li><a href="#"> <i class="fa-brands fa-linkedin"></i></a></li>
			</div>

		</div>
	</div>
	<div class="copy-right">
		<h2>CopyRight@2000</h2>
	</div>

</footer>

</html>