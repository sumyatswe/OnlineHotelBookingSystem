<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="design.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{



}
a:link{
color:blue;
font-size:20pt;
}
a:visited{
font-size:20pt;
color:navy;
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

h1{
margin:top;
	
	text-align:center;
	
	font-size:50pt;
	}


</style>
</head>
<body>
<%
String email=request.getParameter("email");
session.setAttribute("email",email);
String pass=request.getParameter("pass");
session.setAttribute("pass",pass);

/* String n=(String)session.getAttribute("n");
String pwd=(String)session.getAttribute("pwd");

if(name!=null || pass!=null){
session.setAttribute("name",name);
session.setAttribute("pass",pass);
}else{
	session.setAttribute("name",n);
	session.setAttribute("pass",pwd);
} */
%>
<table border="0" width="100%" height="100%">
<tr>
	<h1 align="center" >Online Hotel Booking System</h1>
</tr>
<tr>
	<td class="link">
	
	<a href="available1.jsp">View Available Rooms</a><br><br>
	<!--<a href="bookingForm.jsp">Check-in Rooms</a><br><br>-->
	
	<!-- <a href="cancel1.jsp">Cancel Booking</a><br><br> -->
	<a href="review.jsp">Review  Booking</a><br><br>
	<a href="logout.jsp">Logout</a><br><br>
	
	</td>
	<td align="right">
	</td>
</tr>
	
</table>
</body>
</html>