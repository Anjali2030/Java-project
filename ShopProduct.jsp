
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<%@ page import="com.demo.Data"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shopping section</title>
<link rel="stylesheet" href="Css file/ShopProduct.css">
<%@ include file="Navbar.jsp"%>
</head>
<body>
 <div class="Shop-section">
        <div class="Shop-image">
            <img src="Images/Shop.png">
        </div>
        <h1>Start selling product</h1>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Culpa, placeat assumenda! Itaque minima, illo dolor
            tenetur porro molestias tempore atque vel fugit ab sed obcaecati beatae rem inventore repellat doloribus.
            Lorem ipsum dolor sit amet consectetur, adipisicing elit. Unde voluptatem at aliquid asperiores nemo quae,
            voluptate sequi corporis, laudantium dolorem, magnam perferendis porro earum ipsam magni expedita minima
            accusantium recusandae
        </p>

    </div>
    <div class="Product">
    <div class="Buy-Product">

            <img src="Images/fruit6.png">
            <h1>Sell Products</h1>
            <a href="Seller.jsp"><h4>Login/register</h4></a>
        </div>
        
        <div class="Buy-Product">

            <a href="Product.jsp"><img src="Images/main.png"></a>
            <h1>Buy Products</h1>
            <a href="Customer.jsp"><h4>Login/register</h4></a>
            
        </div>

        


        <div class="Buy-Product">

            <img src="Images/image3.png">
            <h1> Rental machine</h1>
            <a href="Registeration.jsp"><h4>Login/register</h4></a>
        </div>

        <div class="Buy-Product">

            <img src="Images/image4.png">
            <h1>Sell equipments</h1>
            <a href="Registeration.jsp"><h4>Login/register</h4></a>
        </div>
    </div>
    

</body>



<!--------------------------------------------------------FOOTER------------------------------------------------- -->
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
