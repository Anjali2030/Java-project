<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.demo.Login"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.demo.Data"%>
<%!String stock;%>
<%!String quantity; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Stock Compare webpage</title>
</head>
<body>
	<%
	Data d1 = new Data();
	Connection cn = d1.getconnection();
    quantity = request.getParameter("Enteredquantity");

	String query = "select Stock from Product where Product_id=" + Integer.parseInt(Login.product_idG);
	PreparedStatement ps = cn.prepareStatement(query);
	ResultSet rs1 = ps.executeQuery();

	while (rs1.next()) {
		stock = rs1.getString("Stock");
		out.println(stock);
	}

	int Quantity = Integer.parseInt(quantity);
	//System.out.println(Quantity);
	int Stock = Integer.parseInt(stock);
	if (Quantity >= Stock) {
		out.println("<script>alert('quantity is greater then stock')</script>");
		%>
		<script>
		 window.location.href="Enquire.jsp";
		</script>
		<% 
	} else {
		response.sendRedirect("BuyProductform.jsp");
	}
	  Login.Entered_quantity=Quantity;
	  //System.out.println(Login.Entered_quantity);
	%>
</body>
</html>