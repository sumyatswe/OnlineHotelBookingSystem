<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
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
background-color:#8E35EF;
font-weight:bold;
font-size:15pt;

}
.td{
font-size:13pt;
font-weight:bold;
color:black;
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
	<!--<a href="bookingForm.jsp">Check-in Rooms</a><br><br>-->
	
	
	<a href="review.jsp">Review  Booking</a><br><br>
	<a href="logout.jsp">Logout</a><br><br>
	
	</td>
	<td align="right">
	<%
	String email=(String)session.getAttribute("email");
	String pass=(String)session.getAttribute("pass"); 
	
	session.setAttribute("email",email);
	session.setAttribute("pass",pass);
	System.out.println(email);
	System.out.println(pass);
	Connection con;
	
	ResultSet rs;
	String available;
	Class.forName("com.mysql.jdbc.Driver");
	
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group8","root","root");
		System.out.println("Connection Successful!");
				
		String room=request.getParameter("room");
		System.out.println(room);
		String select=null;
		
		
		if(room!=null)
		{
			select="select room.rno,roomtype.price,room.rid from room,roomtype where room.rtypeid=roomtype.rtypeid and roomtype.typename='"+room+"'";
			Statement stmt=con.createStatement();
			rs=stmt.executeQuery(select);
			%>
			<table border="1" width="500" height="100" bgcolor="silver">
						<tr>
						<th class="th">Room_No</th>
						<th class="th">Price</th>
						<th class="th">Booking</th>
						</tr>
						<% 
						while(rs.next()){
						%>
						<tr>
							<td class="td"><%=rs.getString("rno") %></td>
							<td class="td"><%=rs.getInt("price") %></td>
							<td><a href="bookingForm.jsp?rid=<%=rs.getInt("rid") %>">Booking</a></td>
						</tr>
						<%
						} 
						%>
						</table>
	<% 
		}//if close
		%>
	</td>
</tr>
</table>
</body>
</html>