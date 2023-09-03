<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.demo.Login"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.demo.Data"%>
<%! int TotalPrice; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Buy Product Form</title>
<link rel="stylesheet" href="Css file/BuyProduct.css">
<%@ include file="Navbar.jsp"%>
</head>
<body>
<!---------------Form section------------->


    <%
      int Product_price=Integer.parseInt(Login.product_price);
     TotalPrice= Login.Entered_quantity * Product_price;
     System.out.println(Login.buyer_login);
     Data d1 = new Data();
 	 Connection cn = d1.getconnection();
 	
 	 
      if(request.getParameter("submit")!=null){
    	  if(Login.buyer_login==null){
    	    	 out.println("<script>alert('Please Login First!!!!!!');window.location.href='Login.jsp';</script>"); 
    	     }
    	  
    	  
    	     else{
    	    	 String storedata="insert into Buyproduct(Product_id,Product_Quantity,Amount,Buyer_id)Values(?,?,?,?)";
    	    	 
    	    	 PreparedStatement p=cn.prepareStatement(storedata);
    	    	 p.setString(1,Login.product_idG);
    	    	 p.setString(2, Login.product_quantity);
    	    	 p.setInt(3, TotalPrice);
    	    	 p.setString(4,Login.buyer_login);
    	    	 p.executeUpdate();
    	    	 out.println("<script>alert('details submitted successfully');window.location.href='Payment.jsp';</script>"); 
    	     }
      }
     
     
     
    %>
	<div class="Sell-ProductBox" id="sell-popup">
        <div class="Product-Box">
            <div class="content">
                <div class="close-btn">&times</div>
                <h2>DETAIL OF YOUR PRODUCT </h2>
                <form action="#">
                <div class="input-field">
                        <label>Product Id</label>       <label name="Product_id" id="id"><%=Login.product_idG%></label><br>
                    </div>

                    <div class="input-field">
                        <label>Product Category</label> <label name="Product_category"id="category"><%=Login.product_category%></label><br>
                    </div>
                    <div class="input-field">
                    <label>Product Name </label>         <label name="Product_name" id="name"><%=Login.product_name %></label><br>
                    </div>
                    <div class="input-field">
                    <label>Product Specification </label> <label name="Productspec" id="specification"><%=Login.product_specification %></label><br>
                    </div>
                    <div class="input-field">
                    <label>Product Entered quantity </label><label name="Product_quantity" id="quantity"><%=Login.Entered_quantity+" "+Login.product_quantity%></label><br>
                    </div>
                    
                    <div class="input-field">
                    <label>Product Price </label>        <label name="Product_price" id="price"><%=Login.product_price+" " +Login.product_quantity%></label><br>
                    </div> 
                    
                    <div class="input-field">
                    <label>Total Price </label>        <label name="Product_price" id="Totalprice"><%=TotalPrice %></label><br>
                    </div> 
                    
                    
                 <div id="additionalInputs" style="display: none;">
    <input type="text" name="username" placeholder="Username">
    <input type="password" name="password" placeholder="Password"></div>
                    
               <input type="checkbox" id="clear" required>Do you want to confirm<br> 
               <button type="submit" name="submit">Submit</button>
               <button type="submit" name="submit" onclick="clearform()">Clear</button>

                </form>
            </div>
        </div>

    </div>
    <!-- ------------------------------------------------------------------------ -->
    
    <script>
    var closeBtn = document.querySelector('.close-btn');
    var sellPopup = document.getElementById('sell-popup');

    closeBtn.addEventListener('click', function () {
        sellPopup.style.display = 'none';
    });
    
    function clearform() {
        document.getElementById("id").innerText = "";
        document.getElementById("category").innerText = "";
        document.getElementById("name").innerText = "";
        document.getElementById("specification").innerText = "";
        document.getElementById("quantity").innerText = "";
        document.getElementById("price").innerText = "";
        document.getElementById("Totalprice").innerText = "";
        document.getElementById("clear").checked = false;
    }
    
    
    
    
    
    </script>

</body>
</html>