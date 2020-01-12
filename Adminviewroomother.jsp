<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="design.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
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
	
	font-size:50pt;
	}

div{
padding-bottom:400px;}

</style>
</head>
<body>
<%

String add=request.getParameter("add");
String ok=request.getParameter("ok");
String room=request.getParameter("room");
if(add!=null)
{
%>


<form action="add.jsp">
	<table border="0">
	<tr>
		<th>Room No:</th>
		<td><input type="text" name="rno"></td>
	</tr>
	<tr>
		<th>Room Type:</th>
		<td><input type="text" name="type"></td>
	</tr>
	<tr>
		<th>Price:</th>
		<td><input type="text" name="price"></td>
	</tr>
	<tr>
		<th></th>
		<td><input type="submit" name="price" value="Add"></td>
	</tr>
	
	</table>
</form>
	

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
	<form action="Adminviewroomother.jsp">
	<select name="room" id="room">
	<option>Room Type</option>
	<option value="single">Single Room</option>
	<option value="double">Double Room</option>
	<option value="family">Family Room</option>
	</select>
	<input type="submit" value="OK" id="sub" width="100px" name="ok">
	<br><br>
	<input type="submit" value="Add" width="100px" id="but" name="add">
	</div>
	</form>
	
	</td>
	<td width="700px" height="500px">
	</td>
</tr>
</table>
<% 
	}
%>
</body>
</html>