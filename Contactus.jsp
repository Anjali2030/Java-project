<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="Navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact us page</title>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<Link rel="Stylesheet" href="Css file/Contactus.css">
</head>
<body>
<div class="container">
        <div class="item">
            <div class="contact">
                <h1>let's get in touch</h1>
                <img src="Images/contact.png" class="image">
                <div class="social-links">
                    <span class="first-text">
                        <h2>Connect with us:</h2>
                    </span>
                    <ul class="media-icons">
                        <li><a href="#"><i class="fa-brands fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa-brands fa-instagram"></i></a></li>
                        <li><a href="#"><i class="fa-brands fa-google"></i></a></li>
                        <li><a href="#"><i class="fa-brands fa-linkedin"></i></a></li>
                        <li><a href="#"><i class="fa-brands fa-twitter"></i></a></li>

                    </ul>


                </div>

            </div>


            <div class="submit-form">
                <h2 class="second-text">Contact us</h2>
                <!-- -form----------------------------- -->
                <form>
                    <div class="input-box">
                        <label>Name</label>
                        <input type="text" id="name" class="input" required>
                    </div>

                    <div class="input-box">
                        <label>Emailid</label>
                        <input type="text" id="email" class="input" required>
                    </div>

                    <div class="input-box">
                        <label>Phone number</label>
                        <input type="text" id="phone" class="input" required>
                    </div>
                    <div class="input-box">
                        <label>message</label>
                        <textarea class="input" id="message" required  cols="30" rows="10"></textarea>
                    </div>

                    <input type="Submit" value="Submit" class="submit-btn">

                </form>

            </div>

        </div>



    </div>
    

    
    
    
    
    
    
   
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



</body>

</html>