<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rental tools</title>
<Link rel="Stylesheet" href="Css file/Rental.css"/>
<%@ include file="Navbar.jsp"%>
<style>
           .section {
            width: 100%;
            height: 420px;
            background-image: url("Images/Rental1.png");
            margin-top: 0px;
        }
        
        </style>
</head>
<body>
<!-- ---------------------------Background image----------------------------------------------------------->
	<div class="section">

        <div class="overlay">
            <h1>Rental Equipments</h1>
            <P>We provide Equipments on rent</P>
        </div>
    </div>
	<!-- ------------------------------Container------------------------------------ -->
	
	<div class="container1">


        <div class="main1">

            <div class="image">
                <a href="Enquire1.jsp"> <img src="Images/b10.jpg" style="width:100%"  id="Harvester" name="m1" alt="" onclick="change(id),function2(id)"></a>
            </div>
            <div class="title">
                <h2>combine harvester</h2>
                
            </div>

            <button class="button">Enquire now</button>

        </div>

        <div class="main1">
            <div class="image">
                <a href="Enquire1.jsp"><img src="Images/b15.jpg" style="width:100%" id="Planting"name="m2" alt="" onclick="change(id),function2(id)"></a>
            </div>
            <div class="title">
                <h2>Planting</h2>
                
            </div>
            <div class="dis">

                <button class="button">Enquire now</button>
            </div>

        </div>
        <div class="main1">
            <div class="image">
                <a href="Enquire1.jsp"><img src="Images/b4.jpg" style="width:100%"  id="SeedDrill" alt=""name="m3" onclick="change(id),function2(id)"></a>
            </div>
            <div class="title">
                <h2>Seed drill</h2>
                
            </div>

            <div class="dis">

                <button class="button">Enquire now</button>
            </div>
        </div>

        <div class="main1">
            <div class="image">
                <a href="Enquire1.jsp"><img src="Images/z12.png" style="width:100%" id="RigidTiller" alt=""name="m4"onclick="change(id),function2(id)"></a>
            </div>
            <div class="title">
                <h2>Rigid Tiller</h2>
                
            </div>
            <div class="disc"></div>
            <button class="button">Enquire now</button>
        </div>

       
        <div class="main1">
            <div class="image">
                <a href="Enquire1.jsp">
                    <img src="Images/machine2.png" style="width:100%" id="BoomSpray" alt=""name="m5"onclick="change(id),function2(id)"></a>
            </div>
            <div class="title">
                <h2>Boom Spray</h2>
                
            </div>
            <div class="disc"></div>
            <button class="button">Enquire now</button>
        </div>


        <div class="main1">
            <div class="image">
                <a href="Enquire1.jsp">
                    <img src="Images/machine3.png" style="width:100%" id="Miniround" alt=""name="m6" onclick="change(id),function2(id)"></a>
            </div>
            <div class="title">
                <h2>Miniround baler</h2>
                
            </div>
            <div class="disc"></div>
            <button class="button">Enquire now</button>
        </div>

        <div class="main1">
            <div class="image">
                <a href="Enquire1.jsp">
                    <img src="Images/machine4.png" style="width:100%" id="Rotavator" alt=""name="m7" onclick="change(id),function2(id)"></a>
            </div>
            <div class="title">
                <h2>Rotavator</h2>
                
            </div>
            <div class="disc"></div>
            <button class="button">Enquire now</button>
        </div>

        <div class="main1">
            <div class="image">
                <a href="Enquire1.jsp">
                    <img src="Images/machine5.png" style="width:100%" id="RiceCombine" alt=""name="m8" onclick="change(id),function2(id)"></a>
            </div>
            <div class="title">
                <h2>Rice combine</h2>
            </div>
            <div class="disc"></div>
            <button class="button">Enquire now</button>
        </div>

        <!-----------------------Section3----------------------->
        <div class="main1">

            <div class="image">
                <a href="Enquire1.jsp">
                    <img src="Images/t1.png" style="width:100%" id="DeereTractor" alt=""name="m9" onclick="change(id),function2(id)">
                </a>
            </div>
            <div class="title">
                <h2> john deere Tractors</h2>
            </div>

            <button class="button">Enquire now</button>
        </div>
        <div class="main1">

            <div class="image">
                <a href="Enquire1.jsp">
                    <img src="Images/t2.png" style="width:100%"id="KubotaTractor" alt="" name="m10" onclick="change(id),function2(id)">
                </a>
            </div>
            <div class="title">
                <h2>Kubota tractor</h2>
                
            </div>

            <button class="button">Enquire now</button>

        </div>


        <div class="main1">

            <div class="image">
                <a href="Enquire1.jsp">
                    <img src="Images/t3.png" style="width:100%" id="Mahindra" alt="" name="m11"onclick="change(id),function2(id)">
                </a>
            </div>
            <div class="title">
                <h2>Grove Equipments</h2>
            </div>

            <button class="button">Enquire now</button>

        </div>


        <div class="main1">

            <div class="image">
                <a href="Enquire1.jsp">
                    <img src="Images/t4.png" style="width:100%" id="JivoTractor" alt="" name="m12" onclick="change(id),function2(id)">
                </a>
            </div>
            <div class="title">
                <h2>Tractors</h2>
            </div>

            <button class="button">Enquire now</button>

        </div>
    </div>
<script src="javascript folder/Enquire1.js"></script>

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