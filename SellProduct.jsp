<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.demo.*"%>
<%@ page import="java.io.*" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sell Product Form</title>
<link rel="stylesheet" href="Css file/ShopProduct.css">
<%@ include file="Navbar.jsp"%>
</head>
<body>
	<!---------------Form section------------->
	<div class="Sell-ProductBox" id="sell-popup">
        <div class="Product-Box">
            <div class="content">
                <div class="close-btn">&times</div>
                <h2>ADD PRODUCT TO SELL</h2>
                <form action="#" onsubmit="return validation()">

                    <div class="input-field">
                        <label>Product Category</label><select class="option" name="Product_category"id="P_category"><br><span id="category"></span>
                            <option disabled="disabled" selected="selected">--choose category name--</option>
                            <option>Fruits</option>
                            <option>Vegetables</option>
                            <option>Crops</option>
                        </select>
                    </div>


                    <div class="input-field">
                        <label>Product Name</label><select class="option" name="Productname" id="P_name"><br><span id="name"></span>
                            <option disabled="disabled" selected="selected">--choose Fruit Name--</option>
                            <option>Apple</option>
                            <option>Banana</option>
                            <option>Orange</option>
                            <option>Mango</option>
                            <option>Peach</option>
                            <option> pomegranate</option>
                            <option>Pear</option>
                            <option>Gaila</option>
                            <option>Strawberry</option>
                            <option>Guava</option>
                            <option>Watermelon</option>
                            <option>Lemon</option>
                            <option>Almond</option>
                            <option>Nuts</option>
                            <option>Date</option>
                            <option>Cashew</option>

                        </select>
                    </div>

                    <div class="input-field">
                        <label>Product Specification</label> <input type="text" name="productspecify" id="P_specify"
                            placeholder="Specification of product"><br><span id="specify"></span><br>
                    </div>
                    <div class="input-field">
                        <label>Product quantity</label> <input type="text" name="productquantity" id="P_quantity"
                            placeholder="Quantity of product"><br>
                            <span id="quantity"></span><br>
                    </div>
                    <div class="input-field">
                        <label>Product Price</label> <input type="text" name="productprice" id="P_price"
                            placeholder="Price of product"><br>
                            <span id="price"></span><br>
                    </div>
                    
                     <div class="input-field">
                        <label>Stock</label> <input type="text" name="productstock" id="P_stock"
                            placeholder="Add stock of product"><br>
                            <span id="stock"></span><br>
                    </div>

                    <div class="discription">
                        <label>Discription</label>
                        <textarea name="discription" id="Discription" placeholder="discription of product..." cols="10"
                            rows="5"></textarea><br>
                            <span id="disc"></span>
                    </div>

                    <div class="file">
                        <input type="file" name="accessimage"/>
                    </div>
                    <button type="submit" name="submit"onclick="alert">Submit</button>

                </form>
            </div>
        </div>

    </div>

	<!-----------------------------------CODE FOR INSERT DATA IN DATABASE OF PRODUCT------------------------------------------------ -->

	
	
	<%
	
	
	
	Data d1 = new Data();
	Connection cn = d1.getconnection();

	// System.out.println(Login.User_Id);

	if (request.getParameter("submit") != null) {

		String Seller_Id = Login.User_Id;

		String productcategory = request.getParameter("Product_category");
		//String productid = request.getParameter("productid");
		String productname = request.getParameter("Productname");
		String productquantity = request.getParameter("productquantity");
		String productspecify = request.getParameter("productspecify");
		String productprice = request.getParameter("productprice");
		String productstock = request.getParameter("productstock");
		String productdiscription = request.getParameter("discription");

		/**********/

		String category_name = "select category_id from productcategory where Category_Name=?";
		
		PreparedStatement categoryps = cn.prepareStatement(category_name);
		//System.out.println(productname);
		categoryps.setString(1, productcategory);
		ResultSet resultSet = categoryps.executeQuery();
		
		/***************Product id acccess from product table***********************/
		
		String product_id="select product_id from product where Product_Name=?";
		
		PreparedStatement productps=cn.prepareStatement(product_id);
		productps.setString(1,productname.trim());
		ResultSet productrs=productps.executeQuery();
		
		String productQuery = "INSERT INTO product(Product_Name,Product_quantity, Discription, Variety,Category_id,Product_id,Stock) VALUES (?,?,?,?,?,?,?)";

		PreparedStatement productPs = cn.prepareStatement(productQuery);
		//productPs.setString(1, productid);
		productPs.setString(1, productname);
		productPs.setString(2, productquantity);
		productPs.setString(3, productdiscription);
		productPs.setString(4, productspecify);
		productPs.setString(7, productstock);
	   
		while(resultSet.next())
			productPs.setString(5, resultSet.getString("Category_id"));
			
				
		while(productrs.next())
			productPs.setString(6, productrs.getString("Product_id"));
		productPs.executeUpdate();
		
		/***********Insert data into sales table********/
		String productId="select Product_id from product where Product_Name=?";
		PreparedStatement pId=cn.prepareStatement(productId);
		pId.setString(1,productname);
		ResultSet resultSet1=pId.executeQuery();
		
		String salesquery="insert into sales(Product_id,Price,Seller_id)values(?,?,?)";
		PreparedStatement saleps=cn.prepareStatement(salesquery);
		
		saleps.setString(1,productId);
		saleps.setString(2,productprice);
		saleps.setString(3,Seller_Id);
		
		 while(resultSet1.next())
			saleps.setString(1,resultSet1.getString("Product_id"));
		    saleps.executeUpdate();
		    out.print("<script>alert('detail submitted successful');</script>");
	}
	%>
	<script src="javascript folder/SellProduct.js"></script>
</body>
</html>