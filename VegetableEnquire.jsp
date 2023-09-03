<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<%@ page import="com.demo.Data"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<link rel="Stylesheet" href="Css file/Enquire.css"></link>
<%@ include file="Navbar.jsp"%>
<title>Vegetables enquire page </title>
</head>
<body onload="function1(),function3()">
<div class="section-1">
        <div class="container">
            <div class="image">
                <div class="img"> <img src="Images/M1.jpg" id="MainImage" alt="">
                </div>
            </div>
            <!-- ------------------------------------SMALL IMAGE---------------------------------------------------------- -->
            <div class="img1">
                <img src="Images/M2.png" class="small_img" id="img2" alt="">
            </div>

            <div class="img1">
                <img src="Images/M3.png" class="small_img" id="img3" alt="">
            </div>

            <div class="img1">
                <img src="Images/M4.png" class="small_img" id="img4" alt="">
            </div>
            <div class="img1">
                <img src="Images/M1.jpg" class="small_img" id="img5" alt="">

            </div>
        </div>
        
        
        <div class="main">
            <h1>Details of Vegetable</h1>
            
<!-- ----------------------------------------Form ------------------- -->
<form action="#" method="get" id="myForm">
         
         <input type = "hidden" id="h" name="hid"/>
         
         







<table>
    <tr>
        <td><label id="V_id" name="id">Product_id:</label></td>
        <td></td>
    </tr>
    <tr>
        <td><label id="P_Category" name="category">Product_Category:</label></td>
        <td></td>
    </tr>
    <tr>
        <td><label id="P_name" name="name">Product_Name</td>
        <td></td>
    </tr>
    <tr>
        <td><label id="P_quantity" name="quantity">Product_Quantity:</label></td>
        <td></td>
    </tr>
    <tr>
        <td><label id="P_price" name="price">Price:</label></td>
        <td></td>
    </tr>
    
    <tr>
        <td><label id="P_discription" name="Discription">Product_Discription:</label></td>
        <td></td>
    </tr>
</table>

	    
         
         </form>
            
                    <a href="Payment.jsp"><button class="button"> Buy Now</a></button>
   <a href="Payment.jsp"><button class="button">Add to cart</a>
        
        </div>
        </div>
        
<!-- -------------------------------------------------------------------------------------------------------------- -->
     <div class="relate">
        <h1>Related Vegetables</h1>
        <hr>
        <div class="Machine">
            <div class="related_machine">


                <div class="machine_image">

                        <img src="Images/veg11.png" style="width:100%" alt="">
                </div>
                <div class="title">
                    <h2>Rotvator</h2>
                    <h3>only for Rent</h3>
                    

                </div>

                <button class="btn">Enquire now</button>
            </div>

            <!------------------------------->
            <div class="related_machine">


                <div class="machine_image">

                        <img src="Images/veg10.png" style="width:100%">
                </div>
                <div class="title">
                    <h2>Rice combine</h2>
                    <h3>only for Rent</h3>

                </div>

                <button class="btn">Enquire now</button>
            </div>
            <!------------------------------->
            <div class="related_machine">


                <div class="machine_image">

                        <img src="Images/veg24.png" style="width:100%"  alt="">
                </div>
                <div class="title">
                    <h2>Kubota tractor</h2>
                    <h3>Only for rent</h3>

                </div>

                <button class="btn">Enquire now</button>
            </div>
            <!---------------------->
            <div class="related_machine">


                <div class="machine_image">
                        <img src="Images/veg9.png" style="width:100%" >
                </div>
                <div class="title">
                    <h2>Grove Equipments</h2>
                    <h3>Only For rent</h3>

                </div>

                <button class="btn">Enquire now</button>
            </div>
            <!----------------------->
            
        </div>
    </div>
    
    


<script src="javascript folder/Vegetable.js"></script>
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

</body >

</html>