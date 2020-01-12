<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="design.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
a:link{
color:blue;
font-size:20pt;
}
a:visited{
font-size:20pt;
color:Navy;
background-color:transparent;
font-weight:bold;


}
a:hover{
color:red;
background-color:transparent;
}
a:active{
color:blue;
background-color:transparent;
}


#tr1{
color:red;
font-style:italic;
font-weight:bold;
text-shadow:5px 5px 5px green;
font-size:30pt;

}
body{

}
h1{
margin:top;
	
	text-align:center;
	font-family: 'Oleo Script', cursive;;
	font-size:50pt;
	}





.th{
background-color:DarkSalmon;
font-weight:bold;
font-size:15pt;

}
.td{
font-size:13pt;
font-weight:bold;
color:Tomato;
}
</style>
</head>
<body>
<table border="0" width="100%" height="100%">
<tr>
	<h1 align="center" >Online Hotel Booking System</h1>
</tr>
<tr>
	<td class="link">
	
	<a href="available1.jsp">View Available Rooms</a><br><br>
	<a href="bookingForm.jsp">Check-in Rooms</a><br><br>
	
	
	<a href="review.jsp">Review  Booking</a><br><br>
	<a href="logout.jsp">Logout</a><br><br>
	<a href="Login.jsp">Home</a>
	</td>
	<td align="right">
	<%
	String name=(String)session.getAttribute("name");
	String pass=(String)session.getAttribute("pass"); 
	
	session.setAttribute("name",name);
	session.setAttribute("pass",pass);
	System.out.println(name);
	System.out.println(pass);
	Connection con;
	Statement stmt;
	ResultSet rs;
	String available;
	Class.forName("com.mysql.jdbc.Driver");
	
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group8","root","root");
		System.out.println("Connection Successful!");
				
		
				available="select room.rno,roomtype.typename,roomtype.price from room,roomtype where room.rtypeid=roomtype.rtypeid and room.status=1";
				stmt=con.createStatement();
				rs=stmt.executeQuery(available);
						%>	
						
						<table border="1" width="500" height="100">
						<tr>
						<th class="th">Room_No</th>
						<th class="th">Room_Type</th>
						<th class="th">Price</th>
						</tr>
						<% 
						while(rs.next()){
						%>
							<tr>
							<td class="td"><%=rs.getString("rno") %></td>
							<td class="td"><%=rs.getString("typename") %></td>
							<td class="td"><%=rs.getInt("price") %></td>
							</tr>
						<%
						} 
						%>
						</table>
	</td>
</tr>
</table>
</body>
</html>