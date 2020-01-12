<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="design.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>

#but{
height:35px;
width:80px;color:black;
font-size:16px;}
#room{
width:145px;
height:35px;
}
#sub{
width:50px;
height:35px;
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
h1{
margin:top;

	text-align:center;
	
	font-size:50pt;
	}

div{
padding-bottom:400px;}


.lab1{
width:145px;
height:35px;
}
#sub{
width:50px;
height:35px;
}
#but{
height:35px;
width:130px;color:black;
font-size:16px;}
.dropdown{
padding-bottom:100px;
}
div{
padding-bottom:40px;}
#bu{
height:35px;
width:80px;color:black;
font-size:16px;}
</style>
</head>
<body>
<%
	String add=request.getParameter("add");
	String ok=request.getParameter("ok");
	String room=request.getParameter("room");
	String change=request.getParameter("change");
	Connection con;
	
	Statement stmt;
	ResultSet rs;
	String available;
	Class.forName("com.mysql.jdbc.Driver");

	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group8","root","root");
	System.out.println("Connection Successful!");

	if(add!=null)
	{
		
		String sql;
		
		Class.forName("com.mysql.jdbc.Driver");
		
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group8","root","root");
		System.out.println("Connection Successful!");
		
		sql="select price from roomtype where typename='"+room+"'";
		stmt=con.createStatement();
		rs=stmt.executeQuery(sql);
		int price=0;
		while(rs.next()){
			price=rs.getInt("price");
		}
	%>
	<h1 align="center">Online Hotel Booking System</h1>
	<form action="add.jsp">
		<table border="0">
		<tr>
			<th><h3>Room No:</h3></th>
			<td><input type="text" name="rno" class="txt"></td>
		</tr>
		<tr>
			<th><h3>Room Type:</h3></th>
			<td><select name="room" id="room">
			<option disabled>Room Type</option>
			<option value="single">Single Room</option>
			<option value="double">Double Room</option>
			<option value="family">Family Room</option>
			</select></td>
		</tr>
		
		<tr>
			<td><a href="adminTrue.jsp">Back</a></td>
			<td><input type="submit" name="add" value="Add" id="bu"></td>
		</tr>
		
		</table>
	</form>
		

	<%
	}else if(change!=null){
	%>
	<jsp:forward page="ChangePrice.jsp">
	<jsp:param name="room" value="<%=room %>"/>
	</jsp:forward>
	
	<%
}
else{
%>

	<table border="0" width="100%" height="100%">
			<tr>
				<h1 align="center" >Online Hotel Booking System</h1>
			</tr>
			<tr>
				
				<td align="left" class="dropdown">
				<div>
				<form action="Adminviewroom.jsp">
				<select name="room" id="room">
				<option disabled>Room Type</option>
				<option value="single">Single Room</option>
				<option value="double">Double Room</option>
				<option value="family">Family Room</option>
				</select>
				<input type="submit" value="OK" id="sub" width="100px" name="ok">
				<br><br>
				<input type="submit" value="Add New Room" width="100px" id="but" name="add">
				<br><br>
				<input type="submit" value="Change Price" width="100px" id="but" name="change">
	
				</div>
				</form>
				
				</td>
				<td width="700px" height="500px" align="center">
				
					<%
						
						String name=(String)session.getAttribute("name");
						String pass=(String)session.getAttribute("pass"); 
	
						session.setAttribute("name",name);
						session.setAttribute("pass",pass);
						System.out.println(name);
						System.out.println(pass);
						/*
						Connection con;
	
						ResultSet rs;
						String available;
						Class.forName("com.mysql.jdbc.Driver");
	
						con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group8","root","root");
						System.out.println("Connection Successful!");
				*/
						room=request.getParameter("room");
						System.out.println(room);
						String select=null;
		
		
						select="select room.rid,room.rno,roomtype.price from room,roomtype where room.rtypeid=roomtype.rtypeid and roomtype.typename='"+room+"'";
						stmt=con.createStatement();
						rs=stmt.executeQuery(select);
						String st=null;
						st=request.getParameter("st");
						if(st!=null){
				%>
				<i class="info"><h2><%=st %></h2><i>
				<%} %>
					<table border="1" width="500" height="100" bgcolor="silver">
						<tr>
						<th class="th">Room_No</th>
						<th class="th">Price</th>
						<th class="th">Update</th>
						<th class="th">Delete</th>
						</tr>
						<% 
						while(rs.next()){
						%>
						<tr>
							<td class="td"><%=rs.getString("rno") %></td>
							<td class="td"><%=rs.getInt("price") %></td>
							<td><a href="Adminupdate.jsp?rid=<%=rs.getInt("rid") %>">Update</a></td>
							<td><a href="Admindelete.jsp?rid=<%=rs.getInt("rid") %>">Delete</a></td>
						</tr>
						<%
						} 
						%>
				</table>
			
	</td>
	</tr>
</table>
<%} %>

</body>
</html>