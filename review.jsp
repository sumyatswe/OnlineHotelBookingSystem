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



body{


}
.btn{
color:red;
	width:80px;
	height:30px;
	font-size:15px;}
	.td{
	color:DarkSlateGrey;
	font-size:17px;
	font-weight:bold;}
	h1{
margin:top;
	
	text-align:center;
	
	font-size:50pt;
	




}
.th{
background-color:#8E35EF;
font-weight:bold;
font-size:15pt;

}
.td{
font-size:15pt;
font-weight:bold;
color:black;
}
.info{font-size:25pt;
color:red;
}
.su{
font-size:20pt;
color:black;}
.sus{
font-size:30pt;
color:black;}
	</style>

</head>
<body>
<table border="0" width="100%" height="100%">
<tr>
	<h1 align="center" >Online Hotel Booking System</h1>
</tr>
<tr>
	<td class="link">
	<!-- <a href="RoomBooking.jsp">View Rooms</a><br><br> -->
	<a href="available1.jsp">View Available Rooms</a><br><br>
	<!--<a href="bookingForm.jsp">Check-in Rooms</a><br><br>-->
	
	<!-- <a href="cancel1.jsp">Cancel Booking</a><br><br> -->
	<a href="review.jsp">Review  Booking</a><br><br>
	<a href="logout.jsp">Logout</a><br><br>
	
	</td>
    <td align="right">
<%
Connection con;
Statement stmt;
ResultSet rs;

	Class.forName("com.mysql.jdbc.Driver");
	
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group8","root","root");
		System.out.println("Connection Successful!");
		
		String email=(String)session.getAttribute("email");
		String pass=(String)session.getAttribute("pass"); 
		System.out.println(email);
		System.out.println(pass);
		session.setAttribute("email",email);
		session.setAttribute("pass",pass);
		
		String sql="select booking.bid,guest.name,room.rno,booking.start_date,booking.end_date from guest,room,booking where guest.gid=booking.gid and room.rid=booking.rid and guest.email='"+email+"'and guest.password='"+pass+"'";
		stmt=con.createStatement();
		rs=stmt.executeQuery(sql);
		String str=request.getParameter("str");
		
		if(str!=null){
				if(str=="Successful Update !")
				{
					%>
				<i class="sus" align="right"> <%= str%></i><br><br>
				<%
				}
				else{
				%>
				<i class="su" align="right"> <%= str%></i><br><br>
				<%
				}
			}else{
		%>
		<i class="su" align="left" >Your Booking Information</i> <br><br>
		<%
			}
		%>
		
		<table border="1" align="right" bgcolor="silver">
		
		<tr>
		
		<th class="th">Guest Name</th>
		<th class="th">Room No</th>
		<th class="th">Start_Date</th>
		<th class="th">End_Date</th>
		<th class="th">Update</th>
		<th class="th">Cancel</th>
		</tr>
		
		<%
		while(rs.next()){
			//System.out.println(rs.getString("guest.name"));
			//System.out.println(rs.getString("room.rno"));
			//System.out.println(rs.getString("sd"));
			//System.out.println(rs.getString("ed"));
			
			%>
			<tr>
			<%-- <td class="td"><%=rs.getInt("bid") %></td> --%>
			<td class="td"><%=rs.getString("name") %></td>
			<td class="td"><%=rs.getString("rno") %></td>
			<td class="td"><%=rs.getDate("start_date") %></td>
			<td class="td"><%=rs.getDate("end_date") %></td>
			<td><a href="update1.jsp?bid=<%=rs.getInt("bid") %>">Update</a></td>
			<td><a href="cancelprocessing.jsp?bid=<%=rs.getInt("bid") %>">Cancel</a></td>
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