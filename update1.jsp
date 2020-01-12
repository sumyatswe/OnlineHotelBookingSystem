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
.txt{
height:20px;
width:160px;}
.td{
font-size:20pt;
font-weight:bold;
color:black;
}
.btn{
height:35px;
width:90px;color:black;
font-size:20px;}
h1{
margin:top;
	
	text-align:center;
	font-family: 'Oleo Script', cursive;;
	font-size:50pt;
	}

.info{font-size:25pt;
color:black;}


</style>
<link rel="stylesheet" href="calendar/zapatec/zpcal/themes/wood.css" />
	<script type="text/javascript" src="calendar/zapatec/zpcal/utils/zapatec.js"></script>
	<script type="text/javascript" src="calendar/zapatec/zpcal/src/calendar.js"></script>
	<script type="text/javascript" src="calendar/zapatec/zpcal/lang/calendar-en.js"></script>
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
	
	</td>
	<td align="right">
<%
String b=request.getParameter("bid");
int bi=Integer.parseInt(b);
int bid=0;
int gid=0;
int rid=0;
String n="";
String rno="";
Date stdate=null;
Date eddate=null;
Date sd=null;Date ed=null;
System.out.println("bid="+b);
session.setAttribute("bid",b);

String email=(String)session.getAttribute("email");
		String pass=(String)session.getAttribute("pass");
		session.setAttribute("email",email);
		session.setAttribute("pass",pass);
		
		Connection con;
		Statement stmt;
		ResultSet rs;
		String sql;
		
		Class.forName("com.mysql.jdbc.Driver");
		
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group8","root","root");
		System.out.println("Connection Successful!");
		
		sql="select guest.name,room.rno,booking.start_date,booking.end_date from booking,room,guest where booking.gid=guest.gid and booking.rid=room.rid and booking.bid="+bi;
		stmt=con.createStatement();
		rs=stmt.executeQuery(sql);
		while(rs.next()){
			n=rs.getString("name");
			rno=rs.getString("rno");
			sd=rs.getDate("start_date");
			ed=rs.getDate("end_date");
		}
		session.setAttribute("startdate",sd.toString());
		session.setAttribute("enddate",ed.toString());
		System.out.println("Startdate"+sd);
		System.out.println("Enddate"+ed);
	%>
	<form action="update.jsp">
<i class="info">Change Your Booking Information</i>
<table border="0" >

<br><br><br><tr><td class="td">Room No</td><td><input type="text" name="rno" value="<%=rno%>" class="txt"></td></tr>
<tr><td class="td"><label for="date">Start Date:</label></td><td>
				<input type="text" name="sdate" maxlength="400"	size="15"   
	value="<%=sd %>" class="txt" style="background-color: rgb(255, 255, 160);" readonly="readonly" id="calendar">
					<button id="trigger">...</button> 
					<script type="text/javascript">
								//         
								Zapatec.Calendar.setup({
									firstDay : 1,
									electric : false,
									inputField : "calendar",
									button : "trigger",
									ifFormat : "%Y-%m-%d",
									daFormat : "%Y-%m-%d"
								});
								//
							</script>
							</td>
							</tr>
<tr><td class="td"><label for="edate">End Date:</label></td><td>
				<input type="text" name="edate" maxlength="400"	size="15"   
		value="<%=ed %>" class="txt" style="background-color: rgb(255, 255, 160);" readonly="readonly" id="calendar1">
					<button id="trigger1">...</button> 
					<script type="text/javascript">
								//         
								Zapatec.Calendar.setup({
									firstDay : 1,
									electric : false,
									inputField : "calendar1",
									button : "trigger1",
									ifFormat : "%Y-%m-%d",
									daFormat : "%Y-%m-%d"
								});
								//
							</script></td></tr>
<tr><td><br><br><input type="reset" value="Cancel" name="cancel" class="btn"/></td>

<td><br><br><input type="submit" value="Confirm" name="confirm" class="btn"/></td></tr>
</table>
</form>
	
</td>
</tr>
</table>
</body>
</html>