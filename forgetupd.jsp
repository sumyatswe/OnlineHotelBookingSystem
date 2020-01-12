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
.h1{
text-align:right;
font-weight:bolder;
color:black;
font-size:20pt;
}
body{background-color:#D8BFD8;
background-image:url('flower.jpg');
height:100%;width:100%;

}
</style>
</head>
<body>
<table border="0" width="100%" height="100%">
<tr>
	<h1 align="center" class="h">Online Hotel Booking System</h1>
</tr>
<tr>
	<td align="right">
<%
	
	String cd=request.getParameter("code");
	String email=request.getParameter("email");
	String warning=null;
	warning=(String)session.getAttribute("warning");
	
	session.setAttribute("code",cd);
	session.setAttribute("email",email);
	if(warning==null){
%>

 <i class="h1" align="right">Please enter your email and new password.</i><br><br>

<%}
	else{
	%>
	<i class="h1" align="right"><%=warning %></i><br><br>

<%
} 
%></td>
</tr>
<tr>
<td>
	<form action="forgetlogincondition.jsp"  method="get">
	<table border="0" id="t2" align="right">
	
	<tr><td class="t">Email		  :</td><td><input type="text" name="email" width="40px" height="20px" class="txt"/></td></tr>
	<tr><td class="t"><br>New Password:</td><td><br><input type="password" name="pass" class="txt"/></td></tr>
	<tr><td class="t"><br><input type="reset" value="Cancel" class="btn"/></td>
	<td class="t"><br><input type="submit" value="Login" class="btn" ></td></tr>
	
	</table>
	</form>
</td>
</tr>
</table>

</body>
</html>