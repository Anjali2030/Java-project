<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<%@ page import="com.demo.Data"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="Navbar.jsp"%>
<title>Rental machine form</title>
<link rel="stylesheet" href="Css file/ShopProduct.css">
</head>
<body>
 <!----------Rental machine form---------------------------------------->
    
    <div class="Sell-ProductBox" id="sell-popup">
        <div class="Product-Box">
            <div class="content">
                <div class="close-btn">&times</div>
                <h2>ADD TOOL TO RENT</h2>
                <form>
                 <div class="input-field">
                        <label>Tool Category</label>
                        <input type="text" name="category_name"placeholder="Category of Tool" required><br>
                    </div>

                    <div class="input-field">
                        <label>Machine Id</label>

                        <input type="text" name="machine_id"placeholder="Id of Machine" required><br>
                    </div>
                    <div class="input-field">
                        <label>Machine Name</label>

                        <input type="text" name="machine_name" placeholder="Name of Machine" required><br>
                    </div>
                   
                    <div class="input-field">
                        <label>No of disc</label>
                        <input type="text"name="no_of_disc" placeholder="No-of-disc" required><br>
                    </div>
                    <div class="input-field">
                        <label>Machine-size</label>
                        <input type="text"name="machine_size" placeholder="Size of machine" required><br>
                    </div>

                    <div class="input-field">
                        <label>Machine-weight</label>
                        <input type="text"name="machine_weight" placeholder="Weight of machine" required><br>
                    </div>
                    <div class="input-field">
                        <label>Machine-Power</label>
                        <input type="text"name="machine_power" placeholder="Power of machine" required><br>
                    </div>

                    <div class="discription">
                        <label>Discription</label>
                        <textarea name="machine_discription"placeholder="discription of machine..." cols="10" rows="5" required></textarea>
                    </div>
                    <div class="file">
                        <input type="file" />
                    </div>
                    <button type="submit" name="Submit">Submit</button>
                </form>
            </div>
        </div>
    </div>
    
    <%
    /***********************************Code for machine database*****************************/
    /******************************************************************************/
    Data d1 = new Data();
   Connection cn = d1.getconnection();
    if(request.getParameter("Submit")!=null){
  	  String MachineCategory=request.getParameter("category_name").trim();
  	  String MachineId=request.getParameter("machine_id");
  	  String MachineName=request.getParameter("machine_name");
  	 
  	  String discNo=request.getParameter("no_of_disc");
  	  String MachineSize=request.getParameter("machine_size");
  	  String MachineWeight=request.getParameter("machine_weight");
  	  String MachinePower=request.getParameter("machine_power");
  	  String MachineDiscription=request.getParameter("machine_discription");
  	  System.out.println(MachineCategory);
  	  
  	  String machinecategory="select category_id from productcategory where Category_Name=?";
  	  PreparedStatement ps=cn.prepareStatement(machinecategory);
  	  
  	    ps.setString(1, MachineCategory);
  	    
  	    ResultSet rs=ps.executeQuery();
  	  
  	    String Machinequery="insert into Machine(Machine_id, Machine_Name,Category_id, No_of_disc, M_size, M_weight, M_Power, M_Discription) VALUES(?,?,?,?,?,?,?,?)";
  	    PreparedStatement machineps=cn.prepareStatement(Machinequery);
  	    machineps.setString(1, MachineId);
  	    machineps.setString(2, MachineName);
  	    machineps.setString(4, discNo);
  	    machineps.setString(5,MachineSize);
  	    machineps.setString(6, MachineWeight);
  	    machineps.setString(7, MachinePower);
  	    machineps.setString(8, MachineDiscription);
  	    while(rs.next())
  	    {
  	    	machineps.setString(3, rs.getString("category_id"));
  	    }
  	    
  	    int MachineResult = machineps.executeUpdate();
  	    if (MachineResult >0) {
  	        out.println("<script>alert('Details submitted successfully');</script>");
  	    } 
    }
    %>
    <script>
        var closeBtn = document.querySelector('.close-btn');
        var sellPopup = document.getElementById('sell-popup');

        closeBtn.addEventListener('click', function() {
            sellPopup.style.display = 'none';
        });
    </script>
</body>
</html>