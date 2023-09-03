
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.demo.*"%>
<%!public ResultSet rs;%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	Data d1 = new Data();
	Connection cn = d1.getconnection();
	String UserType = request.getParameter("usertype");
	/**************BUYER LOGIN ***************/
	if (UserType.equals("Buyer")) {
		Login.User_Id = request.getParameter("user_id");
		/************/
		Login.buyer_login=request.getParameter("user_id");
		String User_id = request.getParameter("user_id");
		String User_Password = request.getParameter("password");
		String str = "select * from Buyer Where Buyer_id=? and Buyer_Password=?";
		//System.out.println(str);
		PreparedStatement ps = cn.prepareStatement(str);
		ps.setString(1, Login.User_Id);
		ps.setString(2, User_Password);
		rs = ps.executeQuery();
		if (rs.next()) {
			request.setAttribute("Userid", Login.User_Id);
	%>
	<script>
		//alert("Buyer login successful");
	    window.location.href = "BuyProductform.jsp";
	</script>
	<%
	} else {
	%>
	<script>
		alert("Buyer Login failed");
		window.location.href = "Login.jsp";
	</script>
	<%
	}
	} 
	/*************SELLER LOGIN**********************/
	else if (UserType.equals("Seller")) {

	Login.User_Id = request.getParameter("user_id");
	String User_Password = request.getParameter("password");
	String str = "SELECT * FROM Seller WHERE Seller_id=? AND Seller_Password=?";
	PreparedStatement ps = cn.prepareStatement(str);
	ps.setString(1, Login.User_Id);
	ps.setString(2, User_Password);
	rs = ps.executeQuery();
	if (rs.next()) {
	request.setAttribute("Userid", Login.User_Id);
	%>
	<script>
		alert(" Seller login successful");
		window.location.href = "SellProduct.jsp";
	</script>
	<%
	} else {
	%>
	<script>
		alert(" Seller login failed");
		window.location.href = "Login.jsp";
	</script>
	<%
	}

	}
	%>


</body>
</html>