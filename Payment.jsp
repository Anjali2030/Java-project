<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
    <%@ page import="com.demo.Data"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="Stylesheet" href="Css file/Payment.css"></link>
<%@ include file="Navbar.jsp"%>

</head>
    <body>
     
   <div class="wrapper">
        <h2>Payment Form</h2>
        <form>
            <h4>Account</h4>
            <div class="input-group">
                <div class="input-box">
                    <input type="text" placeholder="Full Name" required class="name" name="Full_name">
                    <i class="fa fa-user icon"></i>
                </div>
                <div class="input-box">
                    <input type="text" placeholder="Nick Name" required class="name">
                    <i class="fa fa-user icon"></i>
                </div>
            </div>
            <div class="input-group">
                <div class="input-box">
                    <input type="email" placeholder="Email Adress" required class="name" name="email">
                    <i class="fa fa-envelope icon"></i>
                </div>
            </div>
            <div class="input-group">
                <div class="input-box">
                    <h4> Date of Birth</h4>
                    <input type="text" placeholder="DD" class="dob" name="day">
                    <input type="text" placeholder="MM" class="dob" name="month">
                    <input type="text" placeholder="YYYY" class="dob" name="year">
                </div>
                <div class="input-box">
                    <h4> Gender</h4>
                    <input type="radio" id="b1" name="gender" checked class="radio" value="Male">
                    <label for="b1">Male</label>
                    <input type="radio" id="b2" name="gender" class="radio" value="Female">
                    <label for="b2">Female</label>
                </div>
            </div>
            <div class="input-group">
                <div class="input-box">
                    <h4>Payment Details</h4>
                    <input type="radio" name="pay" id="bc1" checked class="radio" value="Credit Card">
                    <label for="bc1"><span><i class="fa fa-cc-visa"></i> Credit Card</span></label>
                    
                    <input type="radio" name="pay" id="bc2" class="radio" value="PayPal" >
                    <label for="bc2"><span><i class="fa fa-cc-paypal"></i> Pay Pal</span></label>
                </div>
            </div>
            <div class="input-group">
                <div class="input-box">
                    <input type="tel" placeholder="Card Number" required class="name" name="Card_number">
                    <i class="fa fa-credit-card icon"></i>
                </div>
            </div>
            <div class="input-group">
                <div class="input-box">
                    <input type="tel" placeholder="Card CVC" required class="name" name="Card_cvc">
                    <i class="fa fa-user icon"></i>
                </div>
                <div class="input-box">
                    <select name="Expire_date">
                        <option>JANUARY</option>
                        <option>FEBRUARY</option>
                        <option>MARCH</option>
                        <option>APRIL</option>
                        <option>MAY</option>
                        <option>JUNE</option>
                        <option>JULY</option>
                        <option>AUGUST</option>
                        <option>SEPTEMBER</option>
                        <option>OCTOBER</option>
                        <option>NOVEMBER</option>
                        <option>DECEMBER</option>
                    </select>
                    <select>
                        <option>2023</option>
                        <option>2024</option>
                        <option>2025</option>
                        <option>2026</option>
                        <option>2027</option>
                    </select>
                </div>
            </div>
            <div class="input-group">
                <div class="input-box">
                    <button type="submit" name="Payment">PAY NOW</button>
                </div>
            </div>
        </form>
    </div>
    
  <% 
                            Data d1 = new Data();
                           Connection cn = d1.getconnection();
                    		if(request.getParameter("Payment")!=null)
                    		{
                    		String Owner_Name=request.getParameter("Full_name");
                    		String Email=request.getParameter("email");
                    		String DOB=request.getParameter("day") + "-" + request.getParameter("month") + "-" + request.getParameter("year");
                    		String Gender=request.getParameter("gender");
                    		String Payment_detail=request.getParameter("pay");
                    		String Card_Number=request.getParameter("Card_number");
                    		String Card_cvc=request.getParameter("Card_cvc"); 
                    		
                    		String query= "insert into payment values(?,?,?,?,?,?,?)";
                    		PreparedStatement ps=cn.prepareStatement(query);
                    		
                    		ps.setString(1,Owner_Name);
                    		ps.setString(2,Email);
                    		ps.setString(3,DOB);
                    		ps.setString(4,Gender);
                    		ps.setString(5,Payment_detail);
                    		ps.setString(6,Card_Number);
                    		ps.setString(7,Card_cvc);
                    		int rowsAffected = ps.executeUpdate();
                            if (rowsAffected > 0) {
                                %>
                                <script>alert("Payment Successful");</script>
                                <%
                            } }
                        %>
    
                    		  		
                    		
   
    
    
    
    </body>
</html>