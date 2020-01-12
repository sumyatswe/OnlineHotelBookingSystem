<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
     <%@ page import="java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="calendar/zapatec/zpcal/themes/wood.css" />
	<script type="text/javascript" src="calendar/zapatec/zpcal/utils/zapatec.js"></script>
	<script type="text/javascript" src="calendar/zapatec/zpcal/src/calendar.js"></script>
	<script type="text/javascript" src="calendar/zapatec/zpcal/lang/calendar-en.js"></script>

<style type="text/css">
body{


}
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
#t2{

padding-bottom:500px;
width:100%;
height:300%;
}

h1{
margin:top;
	
	text-align:center;
	font-family: 'Oleo Script', cursive;;
	font-size:50pt;
	}




}

#tr3{
background-image:url('slider-2.jpg');
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
<table border="0" width="100%" height="100%" id="tab">
<tr  id="tr3" ><td colspan="2">
	<h1 align="center"  >Online Hotel Booking System</h1></td>
</tr>
<tr>
	<td id="t2">
	<!-- <a href="RoomBooking.jsp">View Rooms</a><br><br>-->
	<a href="available1.jsp">View Available Rooms</a><br><br>
	<a href="bookingForm.jsp">Check-in Rooms</a><br><br>
	
	
	<a href="review.jsp">Review  Booking</a><br><br>
	<a href="logout.jsp">Logout</a><br><br>
	<a href="Login.jsp">Home</a>
	</td>
	<td align="right">
		<%
		String str=request.getParameter("str");
		%>

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

		Class.forName("com.mysql.jdbc.Driver");
	
			
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group8","root","root");
		System.out.println("Connection Successful!");
		String sql="select room.rno,roomtype.typename,roomtype.price from room,roomtype where room.rtypeid=roomtype.rtypeid";
		stmt=con.createStatement();
		rs=stmt.executeQuery(sql);
	if(str!=null){
	%>
	<table border="0">
		<h1><%=str %></h1>
<%	}
	%>
		<table border="1" width="500" height="100" align="right" id="table" >
		<tr>
		<th class="th">Room_No</th>
		<th  class="th">Room_Type</th>
		<th  class="th">Price</th>
		</tr>
	<% 
		while(rs.next()){%>
			<tr>
			<td class="td"><%=rs.getString("rno") %></td>
			<td class="td"><%=rs.getString("typename") %></td>
			<td class="td"><%=rs.getInt("price") %></td>
			</tr>
	<%
		} 


		%>
	</table>
	
	 
	<%
	/*
	 String name=request.getParameter("name");
	//session.setAttribute("name",name);
	String pass=request.getParameter("pass");
	//session.setAttribute("pass",pass);
	
	String n=(String)session.getAttribute("n");
	String pwd=(String)session.getAttribute("pwd");
	
		session.setAttribute("name",n);
		session.setAttribute("pass",pwd);
		*/
	%>
	<%-- 
	<h2>Fill Information for Booking</h2><br><br>
	
	<%
	String name=request.getParameter("name");
	session.setAttribute("name",name);
	String pass=request.getParameter("pass");
	session.setAttribute("pass",pass);

	%> --%>
	<!-- 
	<form action="roomupdate1.jsp">
	<table border="0" >
	<tr><td class="td1">Booking Room No</td><td><input type="text" name="rno"></td></tr>
	<tr><td class="td1"><label for="date">Start Date:</label></td><td >
				<input type="text" name="sdate" maxlength="400"	size="15"   
					style="background-color: rgb(255, 255, 160);" readonly="readonly" id="calendar3">
					<button id="trigger3">...</button> 
					<script type="text/javascript">
								//         
								Zapatec.Calendar.setup({
									firstDay : 1,
									electric : false,
									inputField : "calendar3",
									button : "trigger3",
									ifFormat : "%Y-%m-%d",
									daFormat : "%Y-%m-%d"
								});
								//
							</script>
							</td>
							</tr>
	<tr><td class="td1"><label for="edate">End Date:</label></td><td>
				<input type="text" name="edate" maxlength="400"	size="15"   
					style="background-color: rgb(255, 255, 160);" readonly="readonly" id="calendar4">
					<button id="trigger4">...</button> 
					<script type="text/javascript">
								//         
								Zapatec.Calendar.setup({
									firstDay : 1,
									electric : false,
									inputField : "calendar4",
									button : "trigger4",
									ifFormat : "%Y-%m-%d",
									daFormat : "%Y-%m-%d"
								});
								//
							</script></td></tr>
	<tr><td><input type="reset" value="Cancel" name="cancel" class="btn"/></td>
	<td><input type="submit" value="Confirm" name="confirm" class="btn"/></td>
	</tr>
	</table>
	</form>
	 -->
	</td>
	</tr>
</table>
</body>
</html>