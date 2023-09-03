<%@page import="javax.swing.text.Document"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<style type="text/css">
body{
margin:0;
padding:0;
}
.Main{
    
      background-color:white;
    background-repeat: no-repeat;
    
    height: 93px;
    width: 100%;
    top: 0;
    background-position: center;
    
}

#logo {
    margin-top: 10px;
    margin-left: 60px;
    width: 15%;
    height: 80px;
    float: left;

}

#logo img {
margin-left:40px;
    height: 80px;
    
   
    
}
.Search{
float: left;
    width: 40%;
    height: 40px;
    margin: 20px;
    float: left;
    margin-right: 5%;
    margin-left: 130px;
    margin-bottom: none;
    background-color:aliceblue;
   

}
 .Search-box {
       display: flex;
    align-items: center;


}
.Search-box input {
    border: none;
    top: 0;
    left: 0;
    font-size: 18px;
    float: left;
    background-color:#f8fafc;
    border:1px solid #b0cdea; 
    flex:1;
    height:40px;
    background: transparent;
    font-size:20px;
    padding:0px 60px;

}
 .Search-box button{
 background:transparent;
 border:0;
 outline:0;
 padding-left:0px;
 padding-right:0px;
 }
.Search-box button .fa-solid{
    width:25px;
    color:white;
font-size: 15px;
cursor: pointer;
background-color:blue;
padding:13px;
}
.Search-box button .fa-solid:hover{
background-color:black;


}
.result-box ul{
    border-top:1px solid #99999983;
    padding:15px 10px;
}
.result-box ul li{
    list-style: none;
    border-radius: 3px;
    padding:15px 10px;
    cursor:pointer;
    background-color:white;
    padding:5px 80px;
}
.result-box ul li:hover{
    background-color: #9bc5f8;
}
.result-box{
    max-height: 300px;
    overflow-y: scroll;
}

/*****************input h3*/
.Main h3 {

    width: 20%;
    margin-top: 15px;
    float: left;
}

.Main h3 input {
    height:50px;
    padding-left: 30px;
    padding-top: 10px;
    padding-right: 20px;
    border: none;
    font-size: 20px;
    background-color: rgb(44, 44, 232);
    border-radius: 50px;
    color: white;
    cursor: pointer;
    padding: 12px 40px;

}

.Main h3 input:hover {
    background:black;
    
    
}


nav{

    background-color:white;
    box-shadow: 0px 5px 8px rgba(0,0,0,0.3);
    
        height:48px;
        width:100%;
        top:0;
        position: sticky;
        border-top: 1px solid grey;
        
    }
    nav ul {
        float: left;
      
      padding-bottom:2px;
    margin-bottom:0;
        margin-top:5px; 
    }
    
    nav li {
        display: inline-block;
        margin:0px 20px;
        list-style: none;
        padding-top:5px;
        padding-left:10px;
        margin-bottom: none;
    
    }
    
    nav a {
        font-size: 20px;
        color: black;
        text-decoration: none;
        padding: 5px 12px;
        border-radius: 3px;
        font-family:'popins',sans-serif;
    }
    
    nav a:hover {
        background-color:rgb(44, 44, 232);
        color: white;
        transition: .2s;
        transform:scale(1.1);
    }
    #cart-icon{
  
  font-size: 1.5rem;
  padding:9px 9px 9px;
  cursor:pointer;
  
}
#cart-icon:hover{
  color:white;
  background-color: blue;
  
}
    .result-box {
        position: absolute;
        top: 100%;
        left: 0;
        right: 0;
        background-color: #fff;
        border: 1px solid #ccc;
        max-height: 200px;
        overflow-y: auto;
        display: none;
        z-index: 2;
      }
      
      .result-container {
        position: relative;
      }
      
      .show {
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background-color: rgba(0, 0, 0, 0.5);
        display: none;
        z-index: 1;
      }
      .option select{
      width:90px;
      height:40px;
     background-color:#f8fafc;
    border:1px solid #b0cdea; 
      }
      .tools-option{
      font-size:15px;
      color:black;
      font-family:'popins',sanif-series;
      background-color:whitesmoke;
      }
</style>
</head>
<body>
<div class="Main">

        <div id="logo">
            <img src="Images/2.png">
        </div>
        
        <div class="Search">
            <div class="Search-box">
            <!-- ---------------INPUT-BOX-------------------- -->
                <input type="text" id="input-box" name="search" placeholder="Search anything" autocomplete="off">
                
                <!-- -----------------Drop down menu---------------- -->
                <div class="option">
                <select >
                <option disabled="disabled" selected="selected">All</option>
                
                <option class="tools-option" id="fruits-tools">Fruits</option>
					<option class="tools-option" id="rental-tools">rental tools</option>
					<option class="tools-option" >other product</option>
				</select>
				
				
                </div>
           <a href="Enquire.jsp"><button onclick="get_search_item(),search_id()"><i class="fa-solid fa-magnifying-glass"></i></button></a>
                  </div>
                  
            <div class="result-container">
                <div class="result-box"></div>
                <div class="show"></div>
            </div>
        </div>
        <h3>
            <a href="Login.jsp">
                <input type="button" value="Login"></a>
            <a href="Registeration.jsp"><input type="button" value="Register"></a>
        </h3>
    </div>
    <nav>
        <ul>
            <li><a href="Farm.jsp"> Home</a></li>
            <li><a href="Rental.jsp"> Rental tools</a></li>
            <li><a href="ShopProduct.jsp"> Selling products</a></li>
            <li><a href="Product.jsp"> Buy products</a></li>
            <li><a href="Blog.jsp	"> Blog</a></li>
            <li><a href="ExpertAdvice.jsp"> Expert Advice</a></li>
            <li><a href="About.jsp"> About us</a></li>
            <li><a href="Contactus.jsp"> Contactus</a></li>
             <i class="fa-solid fa-cart-shopping" id="cart-icon"></i>
        </ul>
    </nav>
    <script src="javascript folder/Navbar.js"></script>
    <script src="javascript folder/Enquire.js"></script>
</body>
</html>