<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<%@ page import="com.demo.Data"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Customer Registeration form</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<link rel="stylesheet" href="Css file/Register.css">
<%@ include file="Navbar.jsp"%>
<style type="text/css">
.container {
    
    width: 100%;
    height:806px;
    backgound-size:cover;
    background-image:url("Images/register7.png");
    background-repeat:no-repeat;
    margin-top: 0;
    background-color: rgba(0, 0, 0, 0.6);
    padding-bottom:50px;
}

</style>

</head>
<body>
	<form action="#"onsubmit="return validation()">
		<div class="container">
			<div class="register">
				<h1>Customer</h1>
				<label>Customer Id:</label> <input type="text"   name="customer_id"id="c_id"> <br> <span id="cii"></span>
				<label>Customer name:</label> <input type="text" name="customer_name"id="c_name"><br><span id="cnn"></span>
			    <label>Email Id:</label> <input type="text"      name="customer_mail"id="ei"> <br><span id="eii"></span>
				<label>Contact</label><input type="text"         name="c_ph"id="ph"> <br><span id="phh"></span>
				<label>Buyer Address:</label><input type="text"   name="customer_address"id="ad"> <br><span id="add"></span>
			   <label> Password:</label><input type="text"        name="c_p"id="pass"> <br> <span id="pass"></span>
			   <label>ConfirmPassword:</label> <input type="text" name="c_ccp"id="cpass"> <br><span id="cpasss"></span> 
			  
<label>Customer Type</label> <select class="option" name="c_type" id="type"<span id="ctype"></span>><option disabled="disabled" selected="selected">--choose option--</option>
					<option>Whole saler</option>
					<option>Retailer</option>
					<option>End user</option>
				</select>
			  
			  
			  
		          <label>Id proof</label> <select class="option" name="option"><option disabled="disabled" selected="selected">--choose option--</option>
					<option>Adharcard</option>
					<option>pancard</option>
					<option>other document</option>
				</select>

				<!-- ------file choose------ --->

				<div class="file">
					<input type="file"/>


				</div>
				<button onclick="openPopup"name="register">Register</button>
				<div class="member">
					<h4>
						
						Already a member?<a href="Login.jsp"> Login here.... 
					</h4>
					</a>
				</div>
			</div>
	</form>
	
	
	

<script src="javascript folder/Customer.js"></script>	

<!-- ----------------------------------JSP CODE ------------------------------------------------------- -->
<%
Data d1 = new Data();
Connection cn = d1.getconnection();
if(request.getParameter("register") != null) {
	
String Customer_Id=request.getParameter("customer_id");
String Customer_Name=request.getParameter("customer_name");
String Customer_Email=request.getParameter("customer_mail");
String Customer_Contact=request.getParameter("c_ph");
String Customer_Address=request.getParameter("customer_address");
String Customer_type=request.getParameter("c_type");
String Customer_password=request.getParameter("c_p");
String Customer_cpassword=request.getParameter("c_ccp");
/*******************************************************/
/*************************COMPARE USERNAME WITH REGSITER TABLE************/
    String compare="select * from Buyer WHERE Buyer_id=? ";
    PreparedStatement checkStmt = cn.prepareStatement(compare);
    checkStmt.setString(1, Customer_Id);
    ResultSet rs = checkStmt.executeQuery();
    if(rs.next()){
    	%>
    	<script>alert("Customer_id is already exist");</script>
  <%  }

    else{
    	String query = "insert into Buyer values(?,?,?,?,?,?,?,?)";
        
        
    	   PreparedStatement ps = cn.prepareStatement(query);

    		ps.setString(1,(Customer_Id));
    		ps.setString(2,Customer_Name);
    		ps.setString(3,Customer_Contact);
    		ps.setString(4,Customer_Address);
    		ps.setString(5,Customer_type);
    		ps.setString(6,Customer_Email);
    		ps.setString(7,Customer_password);
    		ps.setString(8,Customer_cpassword);
    		
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
                <a href="#">Home</a><br>
                <a href="#">Home</a><br>
                <a href="#">Home</a><br>
                <a href="#">Home</a><br>
                <a href="#">Home</a><br>
                <a href="#">Home</a>
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
            </h3>
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