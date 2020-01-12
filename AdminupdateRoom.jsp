<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="design.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>

input.txt{
height:20px;
width:160px;}
#but{
height:35px;
width:130px;color:black;
font-size:16px;}
#bu{
height:35px;
width:80px;color:black;
font-size:16px;}
.info{
font-size:30pt;
color:black;
}
div{
padding-bottom:500px;}
#room{
width:160px;
height:35px;
}
#sub{
width:50px;
height:35px;
}
h2{
padding-bottom:350px;}
.info{
padding-bottom:300px;
}

</style>
</head>
<body>
<%
String add=request.getParameter("add");
String ok=request.getParameter("ok");
String change=request.getParameter("change");
String room=request.getParameter("room");
if(add!=null)
{
	Connection con;
	Statement stmt;
	ResultSet rs;
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
		</select>
		</td>
	</tr>
	
	<tr>
		<td><a href="adminTrue.jsp">Back</a></td>
		<td><input type="submit" name="add" value="Add" id="bu"></td>
	</tr>
	
	</table>
</form>
	
<%
}
else if(change!=null){
	%>
	<jsp:forward page="ChangePrice.jsp">
	<jsp:param name="room" value="<%=room %>"/>
	</jsp:forward>
	
	<%
}
else if(ok!=null){
	%>
	<jsp:forward page="Adminviewroom.jsp">
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
	<form action="AdminupdateRoom.jsp">
	<select name="room" id="room">
	<option>Room Type</option>
	<option value="single">Single Room</option>
	<option value="double">Double Room</option>
	<option value="family">Family Room</option>
	</select>
	<input type="submit" value="OK" id="sub" width="100px" name="ok">
	<br><br>
	<input type="submit" value="Add New Room" width="100px" id="but" name="add">
	<br><br>
	<input type="submit" value="Change Price" width="100px" id="but" name="change" >
	</div>
	</form>
	
	</td>
	<td width="700px" height="500px">
		<%
		
		Connection con;
		Statement stmt;
		ResultSet rs;
		String sql;
		
		Class.forName("com.mysql.jdbc.Driver");
		
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group8","root","root");
		
		String rno=request.getParameter("rno");
		String typename=request.getParameter("typename");
		String ri;
		ri=(String)session.getAttribute("rid");
		int rid=Integer.parseInt(ri);
		
		
		System.out.println("Connection Successful!");
		System.out.println(rid);
		sql="select * from room where rno='"+rno+"' and rid!='"+rid+"'";
		stmt=con.createStatement();
		rs=stmt.executeQuery(sql);
		boolean b=true;
		while(rs.next()){
			b=false;
		}
		if(b)
		{
		sql="update room set rno='"+rno+"' where rid="+rid;
		stmt=con.createStatement();
		stmt.executeUpdate(sql);
		
		String st="Update Successful!";
		
		%>
		<jsp:forward page="adminTrue1.jsp">
		<jsp:param name="st" value="<%=st %>"/>
		
		</jsp:forward>
		
		<%
		}else{
			String st="This Rno is already exists!";
			%>
			<jsp:forward page="adminTrue1.jsp">
		<jsp:param name="st" value="<%=st %>"/>
		</jsp:forward>
	<%
		}
		%>
	</td></tr>
</table>
<% 
	}
%>
</body>
</html>