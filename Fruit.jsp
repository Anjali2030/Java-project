<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>agriculture</title>
<%@ include file="Navbar.jsp"%>
<script src="javascript folder/Enquire.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<Link rel="Stylesheet" href="Css file/Fruit.css"/>

<style type="text/css">
.section {
    width: 100%;
    height: 350px;
    background-image:url("Images/main.png");
    margin-top: 0px;
}
</style>
</head>
<body>

	<!-- ---------------------------Background image-------------------------------------------------------- -->
	<div class="section">

        <div class="overlay">
            <h1>Fruits crops</h1>
        </div>
    </div>
	<!-- ------------------------------Container------------------------------------ -->
	
	
	<div class="container1">


        <div class="main1">

            <div class="image">
                <a href="Enquire.jsp"> <img src="Images/fruit1.png" style="width:100%"  id="Apple" name="fruit1" alt="" onclick="change(id),fun2(id)"></a>
            </div>
            <div class="title">
                <h2>Apples</h2>
                <h3>Price:20/kg</h3>
            </div>

            <button class="button">Enquire now</button>

        </div>

        <div class="main1">
            <div class="image">
                <a href="Enquire.jsp"><img src="Images/fruit2.png" style="width:100%" id="Banana"name="fruit2" alt="" onclick="change(id),fun2(id)"></a>
            </div>
            <div class="title">
                <h2>Banana</h2>
                <h3>Price:73/Dozen</h3>
            </div>
            <div class="dis">

                <button class="button">Enquire now</button>
            </div>

        </div>
        <div class="main1">
            <div class="image">
                <a href="Enquire.jsp"><img src="Images/fruit3.png" style="width:100%"  id="Peach" alt=""name="fruit3" onclick="change(id),fun2(id)"></a>
            </div>
            <div class="title">
                <h2>Peach</h2>
                <h3>Price:630/kg</h3>
            </div>

            <div class="dis">

                <button class="button">Enquire now</button>
            </div>
        </div>

        <div class="main1">
            <div class="image">
                <a href="Enquire.jsp"><img src="Images/fruit4.png" style="width:100%" id="Pomegranate" alt=""name="fruit4"onclick="change(id),fun2(id)"></a>
            </div>
            <div class="title">
                <h2>Pomegranate</h2>
                <h3>Price:255/kg</h3>
            </div>
            <div class="disc"></div>
            <button class="button">Enquire now</button>
        </div>

        <div class="main1">
            <div class="image">
                <a href="Enquire.jsp">
                    <img src="Images/fruit5.png" style="width:100%" id="Orange" alt=""name="fruit5"onclick="change(id),fun2(id)"></a>
            </div>
            <div class="title">
                <h2>Oranges</h2>
                <h3>Price:270/kg</h3>
            </div>
            <div class="disc"></div>
            <button class="button">Enquire now</button>
        </div>

        <div class="main1">
            <div class="image">
                <a href="Enquire.jsp">
                    <img src="Images/fruit6.png" style="width:100%" id="Mango" alt=""name="fruit6"onclick="change(id),fun2(id)"></a>
            </div>
            <div class="title">
                <h2>Mango</h2>
                <h3>Price:96/kg</h3>
            </div>
            <div class="disc"></div>
            <button class="button">Enquire now</button>
        </div>


        <div class="main1">
            <div class="image">
                <a href="Enquire.jsp">
                    <img src="Images/fruit7.png" style="width:100%" id="Pear" alt=""name="fruit7" onclick="change(id),fun2(id)"></a>
            </div>
            <div class="title">
                <h2>Pear</h2>
                <h3>Price:296/kg</h3>
            </div>
            <div class="disc"></div>
            <button class="button">Enquire now</button>
        </div>

        <div class="main1">
            <div class="image">
                <a href="Enquire.jsp">
                    <img src="Images/fruit8.png" style="width:100%" id="Galia" alt=""name="fruit8"onclick="change(id),fun2(id)"></a>
            </div>
            <div class="title">
                <h2>Galia</h2>
                <h3>Price:30/kg</h3>
            </div>
            <div class="disc"></div>
            <button class="button">Enquire now</button>
        </div>

        <div class="main1">
            <div class="image">
                <a href="Enquire.jsp">
                    <img src="Images/fruit9.png" style="width:100%" id="Strawberry" alt=""name="fruit9"onclick="change(id),fun2(id)"></a>
            </div>
            <div class="title">
                <h2>Strawberries</h2>
                <h3>Price:55/kg</h3>
            </div>
            <div class="disc"></div>
            <button class="button">Enquire now</button>
        </div>


        <div class="main1">
            <div class="image">
                <a href="Enquire.jsp">
                    <img src="Images/fruit10.png" style="width:100%" id="Guava" alt=""name="fruit10" onclick="change(id),fun2(id)"></a>
            </div>
            <div class="title">
                <h2>Guava</h2>
                <h3>Price:105/kg</h3>
            </div>
            <div class="disc"></div>
            <button class="button">Enquire now</button>
        </div>

        <div class="main1">
            <div class="image">
                <a href="Enquire.jsp">
                    <img src="Images/fruit11.png" style="width:100%" id="Watermelon" alt=""name="fruit11" onclick="change(id),fun2(id)"></a>
            </div>
            <div class="title">
                <h2>Watermelon</h2>
                <h3>Price:59/kg</h3>
            </div>
            <div class="disc"></div>
            <button class="button">Enquire now</button>
        </div>

        <div class="main1">
            <div class="image">
                <a href="Enquire.jsp">
                    <img src="Images/fruit15.png" style="width:100%" id="Lemon" alt=""name="fruit15" onclick="change(id),fun2(id)"></a>
            </div>
            <div class="title">
                <h2>Lemon</h2>
                <h3>Price:349/kg</h3>
            </div>
            <div class="disc"></div>
            <button class="button">Enquire now</button>
        </div>

        <!-----------------------Section3----------------------->


        <h1> Popular Dry Fruits</h1>
        <div class="main1">

            <div class="image">
                <a href="Enquire.jsp">
                    <img src="Images/fruit12.png" style="width:100%" id="Almond" alt=""name="fruit12" onclick="change(id),fun2(id)">
                </a>
            </div>
            <div class="title">
                <h2>Almond</h2>
                <h3>Price:930/kg</h3>
            </div>

            <button class="button">Enquire now</button>
        </div>
        <div class="main1">

            <div class="image">
                <a href="Enquire.jsp">
                    <img src="Images/fruit16.png" style="width:100%"id="Nuts" alt="" name="fruit16" onclick="change(id),fun2(id)">
                </a>
            </div>
            <div class="title">
                <h2>Nuts</h2>
                <h3>Price:700/kg</h3>
            </div>

            <button class="button">Enquire now</button>

        </div>


        <div class="main1">

            <div class="image">
                <a href="Enquire.jsp">
                    <img src="Images/fruit17.png" style="width:100%" id="Date" alt="" name="fruit17"onclick="change(id),fun2(id)">
                </a>
            </div>
            <div class="title">
                <h2>Date palm</h2>
                <h3>Price:110/kg</h3>
            </div>

            <button class="button">Enquire now</button>

        </div>


        <div class="main1">

            <div class="image">
                <a href="Enquire.jsp">
                    <img src="Images/fruit18.png" style="width:100%"id="Cashew" alt="" name="fruit18" onclick="change(id),fun2(id)">
                </a>
            </div>
            <div class="title">
                <h2>Cashew nuts</h2>
                <h3>Price:1200/kg</h3>
            </div>

            <button class="button">Enquire now</button>

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