<%@page import="com.demo.Login"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.sql.*"%>
<%@ page import="com.demo.Data"%>
<!DOCTYPE html>
<%!String str; %>

<%!String Product_id,ProductCategory,Productname,ProductQuantity, ProductVariety, Discription,Productprice;%>


<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Enquire web page</title>         
<%@ include file="Navbar.jsp"%>
<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<link rel="Stylesheet" href="Css file/Enquire.css"></link>
<script>
function getimage()
{

 let src1=localStorage.getItem('vgid');
 document.getElementById("h").value=src1;
//window.location.replace("Enquire.jsp?hid="+src1);

//document.getElementById("sp1").textContent=src1;
document.getElementById("myForm").submit();
}
</script>
</head>
<body onload="getimage(),fun1(),fun3()">
<div class="section-1">
        <div class="container">
            <div class="image">
                <div class="img"> <img src="Images/fruit20.png" id="MainImage" alt="">
                </div>
            </div>
            <!-- ------------------------------------SMALL IMAGE---------------------------------------------------------- -->
            <div class="img1">
                <img src="Images/fruit21.png" class="small_img" id="img2" alt="">
            </div>

            <div class="img1">
                <img src="Images/fruit24.png" class="small_img" id="img3" alt="">
            </div>

            <div class="img1">
                <img src="Images/fruit22.png" class="small_img" id="img4" alt="">
            </div>
            <div class="img1">
                <img src="Images/fruit23.png" class="small_img" id="img5" alt="">

            </div>
        </div>
        <div class="main" >
            <h1>Variety of Fruits Product</h1>
           
       <!------------------------ -Form action----------------------------------------- -->
       
         <form action="#" id="myForm">
         
         <input type = "hidden" id="h" name="hid"/>
      </form>
<%



String str = request.getParameter("hid");
//out.println(str);
%>
        
        
        
        <%	
    
        Data d1 = new Data();
		Connection cn = d1.getconnection();
		Statement st = cn.createStatement();
		ResultSet rs = st.executeQuery(	"SELECT Product.Product_id, ProductCategory.Category_Name, Product.Product_Name, Product.Product_quantity,Product.Variety,Product.Discription,Sales.Price "
		+ "FROM Product " + "INNER JOIN ProductCategory ON Product.Category_id = ProductCategory.Category_id " +
		        "INNER JOIN Sales ON Product.Product_id = Sales.Product_id " +
		        "WHERE Product.Product_Name = '" + str + "'");
		while (rs.next())
		{
	       Product_id=String.valueOf(rs.getInt("product_id"));
		   ProductCategory=rs.getString("Category_Name");
		    Productname=rs.getString("Product_Name");
		   ProductQuantity=rs.getString("Product_Quantity");
		    ProductVariety=rs.getString("Variety");
		    Discription=rs.getString("Discription");
		    Productprice=String.valueOf(rs.getInt("Price")); 
		   
		   
		   
	    
	%>
	    <table>
  <tr>
    <td><label id="P_id" name="id">Product_Id:</label></td>
    <td><%= Product_id %></td>
  </tr>
  <tr>
    <td><label id="P_Category" name="category">Product_Category:</label></td>
    <td><%= ProductCategory %></td>
  </tr>
  <tr>
    <td><label id="P_name" name="name">Product_Name:</label></td>
    <td><%= Productname %></td>
  </tr>
  <tr>
    <td><label id="P_quantity" name="quantity">Product_Quantity:</label></td>
    <td><%= ProductQuantity %></td>
  </tr>
  <tr>
    <td><label id="P_variety" name="Variety">Product_Variety:</label></td>
    <td><%= ProductVariety %></td>
  </tr>
  <tr>
    <td><label id="P_discription" name="Discription">Product_Discription:</label></td>
    <td><%= Discription %></td>
  </tr>
  <tr>
    <td><label id="P_price" name="Price">Price:</label></td>
    <td><%= Productprice %></td>
  </tr>
</table>
	    
        
	<%
	 
	
		}%>
		<%
		Login.product_category=ProductCategory;
		Login.product_name=Productname;
		Login.product_quantity=ProductQuantity;
		Login.product_specification=ProductVariety;
		Login.product_price=Productprice;
		//System.out.println(Product_id);
		Login.product_idG=Product_id;
		//request.setAttribute("ProductId", Product_id);
		%>

			<form action="StockCompare.jsp" method="get">
			
			<input type="text" name="Enteredquantity" required placeholder="Enter the Product quantity"><br>
     	    <input class="check" type = "Submit" class="button"><a href="BuyProductform.jsp"></a>
            
            </form>
 </div>
    </div>
    
    <!-- -------------------------------------------------- -->
    
    <div class="related">
        <h1>Related Products</h1>
        <hr>
        <div class="Product">
            <div class="related_product">


                <div class="related_image">

                        <img src="Images/fruit5.png" style="width:100%" alt="">
                </div>
                <div class="title">
                    <h2>Oranges</h2>
                    <h3>Price:270/KG</h3>

                </div>

               <a href="Fruit.jsp"><button class="btn">Enquire now</button></a>
            </div>

            <!------------------------------->
            <div class="related_product">


                <div class="related_image">

                        <img src="Images/fruit9.png" style="width:100%">
                </div>
                <div class="title">
                    <h2>Strawberries</h2>
                    <h3>Price:70/kg</h3>

                </div>
              <a href="Fruit.jsp"><button class="btn">Enquire now</button></a>
            </div>
            <!------------------------------->
            <div class="related_product">


                <div class="related_image">

                        <img src="Images/fruit11.png" style="width:100%"  alt="">
                </div>
                <div class="title">
                    <h2>Watermelon</h2>
                    <h3>Price:59/kg</h3>

                </div>

                <a href="Fruit.jsp"><button class="btn">Enquire now</button></a>
            </div>
            <!---------------------->
            <div class="related_product">


                <div class="related_image">
                        <img src="Images/fruit6.png" style="width:100%" >
                </div>
                <div class="title">
                    <h2>Mango</h2>
                    <h3>Price:96/kg</h3>

                </div>

                <a href="Fruit.jsp"><button class="btn">Enquire now</button></a>
            </div>
            <!----------------------->
            
        </div>
    </div>
    
    
   
   
<script src="javascript folder/Enquire.js"></script>	
	
</body>
<!-----------------------------------*********FOOTER***************---------------------------------------->
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
                <i class="fa-sharp fa-solid fa-phone"></i> Phone no-9466055642 <br>
                <i class="fa-sharp fa-regular fa-envelope"></i><a
                    href="anjalipawar2030@gmail.com">anjalipawar2030@gmail.com</a><br>
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
	