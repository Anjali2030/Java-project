<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.sql.*"%>
<%@ page import="com.demo.Data"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registeration page</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<link rel="stylesheet" href="Css file/Register.css">
<%@ include file="Navbar.jsp"%>
<style type="text/css">
.container {
    height:744px;
    width: 100%;
    backgound-size:cover;
    background-image:url("Images/register1.png");
    background-repeat:no-repeat;
    margin-top: 0;
    background-color: rgba(0, 0, 0, 0.1);
}

</style>
</head>
<body>
	<form action="#" onsubmit="return validation()">

        <div class="container">
            <div class="register">
                <h1>Sign up</h1>
                <label>Username:</label> <input type="text"   name="username" id="un"> <br> <span id="unn"></span>
                <label>Email Id:</label> <input type="text"   name="email" id="ei"> <br> <span id="eii"></span>
                <label>Phone no:</label><input type="text"    name="phone"id="ph"> <br> <span id="phh"></span>
                <label>Address:</label><input type="text"     name="address"id="ad"> <br><span id="add"></span>
			    <label> Password:</label><input type="text"   name="password"id="pass"> <br> <span id="passs"></span>
			    <label>Confirm Password:</label><input type="text" name="cpassword"id="cpass"> <br> <span id="cpasss"></span>
                 <label>Id proof</label> <select class="option"name="option">
						<option disabled="disabled" selected="selected">--choose
							option--</option>
						<option>Adharcard</option>
						<option>pancard</option>
						<option>other document</option>
					</select>
	
					<!-- ------file choose------ --->
	
					<div class="file">
						<input type="file" />
	
	
					</div>

                <button  onclick="openPopup" name="submit">Register</button>

                <div class="member">
                    <h4>
                        Already a member?<a href="Login.jsp"> Login here....</a>
    
                    </h4>
    
                </div>
            </div>
            
        </div>
    </form>
    
<!-- ---------------------------------------------------------------------------------------------------------------- -->	
	<script src="javascript folder/Registeration.js"></script>
	
	
	<!-- ---------------------------------------------jsp code-------------------------------------------------------- -->
	
	<%
	Data d1 = new Data();
	Connection cn = d1.getconnection();
   if(request.getParameter("submit") != null) {
    String user = request.getParameter("username");
    String mail = request.getParameter("email");
    String phone = request.getParameter("phone");
    String Address = request.getParameter("address");
    String Password = request.getParameter("password");
    String Cpassword = request.getParameter("cpassword");
    /*************************COMPARE USERNAME WITH REGSITER TABLE************/
    String compare="select * from Register WHERE UserName=? ";
    PreparedStatement checkStmt = cn.prepareStatement(compare);
    checkStmt.setString(1, user);
    ResultSet rs = checkStmt.executeQuery();
    
    if (rs.next()) {
    %>
        <script>
        alert("username is already exist");</script>
        
  <% } 
    else{
    	String query = "insert into Register values(?,?,?,?,?,?)";
        
        
    	   PreparedStatement ps = cn.prepareStatement(query);
    	    ps.setString(1,user);
    	    ps.setString(2,mail);
    	    ps.setString(3,phone);
    	    ps.setString(4,Address);
    	    ps.setString(5,Password);
    	    ps.setString(6,Cpassword);
    	    ps.executeUpdate();
    	    %>
    	    
    	    <div class="popup" id="popup" style="display:none;">
        <img src="Images/i.png">
        <h2>Thank You!</h2>
        <p>Your details has been successfully submitted.Thanks!</p>
        <button type="button" onclick="closePopup()">OK</button>

    </div>
    	    <script>openPopup();</script>
  <%  }
    
    
    
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
                    href="sanjaykhan4900@gmail.com">sanjaykhan4900@gmail.com</a><br>
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