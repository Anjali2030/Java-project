<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<%@ page import="com.demo.Data"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="Navbar.jsp"%>
<link rel="Stylesheet" href="Css file/Enquire.css"></link>
<script>
function getid()
{
	
 let src1=localStorage.getItem('vgid');
 
 document.getElementById("h").value=src1;
//window.location.replace("Enquire.jsp?hid="+src1);

//document.getElementById("sp1").textContent=src1;
document.getElementById("myForm").submit();
}
</script>
</head>
<body onload="function1(),function3(),getid()">
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
            <h1>Details of Machineries</h1>
            
<!-- ----------------------------------------Form ------------------- -->
<form action="#" method="get" id="myForm">
         
         <input type = "hidden" id="h" name="hid"/>
         
         <%



String str = request.getParameter("hid");
//out.println(str);
%>

<%	
    Data d1 = new Data();
    Connection cn = d1.getconnection();
    Statement st = cn.createStatement();
    String query = "SELECT Machine.machine_id, ProductCategory.Category_Name, Machine.Machine_Name, Machine.No_of_disc, Machine.M_size, Machine.M_weight, Machine.M_Power, Machine.M_Discription "
            + "FROM Machine " + "INNER JOIN ProductCategory ON Machine.Category_id = ProductCategory.Category_id "+ "WHERE Machine.Machine_Name = ?";
    PreparedStatement pstmt = cn.prepareStatement(query);
    pstmt.setString(1, str);
    ResultSet rs = pstmt.executeQuery();
    
    while (rs.next()) {
        int Machine_id = rs.getInt("machine_id");
        String MachineCategory = rs.getString("Category_Name");
        String Machinename = rs.getString("Machine_Name");
        String No_of_disc = rs.getString("No_of_disc");
        String Machine_size = rs.getString("M_size");
        String Machine_weight = rs.getString("M_weight");
        String Machine_Power = rs.getString("M_Power");
        String Discription = rs.getString("M_Discription");
        // int Productprice=rs.getInt("Price");
%>

<table>
    <tr>
        <td><label id="M_id" name="id">Machine_id:</label></td>
        <td><%=Machine_id%></td>
    </tr>
    <tr>
        <td><label id="M_Category" name="category">Machine_Category:</label></td>
        <td><%=MachineCategory%></td>
    </tr>
    <tr>
        <td><label id="M_name" name="name">Machine_Name</td>
        <td><%=Machinename%></td>
    </tr>
    <tr>
        <td><label id="No_ofdisc" name="disc">No.of disc:</label></td>
        <td><%=No_of_disc%></td>
    </tr>
    <tr>
        <td><label id="M_size" name="size">Machine_size:</label></td>
        <td><%=Machine_size%></td>
    </tr>
    <tr>
        <td><label id="M_weight" name="weight">Machine_Weight:</label></td>
        <td><%=Machine_weight%></td>
    </tr>
    <tr>
        <td><label id="M_power" name="power">Machine_Power:</label></td>
        <td><%=Machine_Power%></td>
    </tr>
    <tr>
        <td><label id="M_discription" name="Discription">Machine_Discription:</label></td>
        <td><%=Discription%></td>
    </tr>
</table>

<%
    }
%>
         </form>
            
                    <a href="Payment.jsp"><button class="button"> Rent Now</a></button>
   <a href="Payment.jsp"><button class="button">Add to cart</a>
        
        </div>
        </div>
        
<!-- -------------------------------------------------------------------------------------------------------------- -->
     <div class="relate">
        <h1>Related Machines</h1>
        <hr>
        <div class="Machine">
            <div class="related_machine">


                <div class="machine_image">

                        <img src="Images/machine4.png" style="width:100%" alt="">
                </div>
                <div class="title">
                    <h2>Rotvator</h2>
                    <h3>only for Rent</h3>
                    

                </div>
                <a href="Rental.jsp"><button class="btn">Enquire now</button></a>
            </div>

            <!------------------------------->
            <div class="related_machine">


                <div class="machine_image">

                        <img src="Images/machine5.png" style="width:100%">
                </div>
                <div class="title">
                    <h2>Rice combine</h2>
                    <h3>only for Rent</h3>

                </div>
               <a href="Rental.jsp"><button class="btn">Enquire now</button></a>
            </div>
            <!------------------------------->
            <div class="related_machine">


                <div class="machine_image">

                        <img src="Images/t2.png" style="width:100%"  alt="">
                </div>
                <div class="title">
                    <h2>Kubota tractor</h2>
                    <h3>Only for rent</h3>

                </div>

                <a href="Rental.jsp"><button class="btn">Enquire now</button></a>
            </div>
            <!---------------------->
            <div class="related_machine">


                <div class="machine_image">
                        <img src="Images/t3.png" style="width:100%" >
                </div>
                <div class="title">
                    <h2>Grove Equipments</h2>
                    <h3>Only For rent</h3>

                </div>

                <a href="Rental.jsp"><button class="btn">Enquire now</button></a>
            </div>
            <!----------------------->
            
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