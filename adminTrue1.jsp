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
padding-bottom:50px;}


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
padding-top:100px;}
.info{
padding-bottom:300px;
font-size:25pt;
}
</style>
</head>
<body>
<%

String add=request.getParameter("add");
String ok=request.getParameter("ok");
String room=request.getParameter("room");
String change=request.getParameter("change");
String st=request.getParameter("st");
//String st=(String)session.getAttribute("st");
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
		<td>
		<select name="room" id="room">
		
		<option disabled>Room Type</option>
		<option value="single">Single Room</option>
		<option value="double">Double Room</option>
		<option value="family">Family Room</option>
		</select></td>
	</tr>
	
	<tr>
		<td><a href="adminTrue.jsp">Back</a></td>
		<td><input type="submit" name="add" value="Add"></td>
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
else if(change!=null){
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
	<form action="adminTrue.jsp">
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
	<input type="submit" value="Change Price" width="100px" id="but" name="change" >
	</form>
	
	</div>
	</td>
	<td id="const">
	<%
	if(st!=null){
		%>
		<font class="info"><i><%=st %></i></font>
		<%
	}
	%>
	</td>
</tr>
</table>
<% 
	}
%>
</body>
</html>