<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
h1{
margin:top;
	color:006600;
	text-align:center;
	font-family: 'Oleo Script', cursive;;
	font-size:50pt;
	text-shadow:5px 5px 5px #6C2DC7;
	
	}
	
	.p{
padding-top:50px;}

.h1{
font-size:19pt;
color:black;
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

.btn{
height:35px;
width:90px;color:black;
font-size:20px;}

.t{
color:black;
font-size:20pt;}

</style>
</head>

<body>
<table border="0" width="95%" height="400px"  >
<h1 align="center">Online Hotel Booking System</h1>
<a href="About.html">About</a> &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;<a href="Location.html">Location</a>

<%
	//String warning=null;
	//warning=(String)session.getAttribute("warning");
	//if(warning==null){
%>
<!-- <tr>
 <th colspan="2" align="right"><i class="h1">Please enter your name and password.+"\n"+<b>Register</b> if you don't have an account.</i>

</th>
</tr>
-->
<%//}
	//else{
	%>
	<!-- <tr><th colspan="2" align="right"><i class="h1"></i>
</th></tr>
-->
<%//} %>
<tr>
<td>
<td align="left" class='p'><img width='500px' height='400px' src='c5.jpg'></td>

</td>
</td>

<td align="right">
<%
	String warning=null;
	warning=(String)session.getAttribute("warning");
	if(warning==null){
%>

 <i class="h1">Please enter your email and password.<br><b>Register</b> if you don't have an account.</i>
</h2>
<br><br>


<%}
	else{
	%>
	<h2 class="h1"><i><%= warning%></i></h2><br><br>

<%
} 
%>
	<form action="logincondition.jsp"  method="get">
	<table border="0" id="t2" align="right">
	<tr><td class="t">Email   :</td><td><input type="text" name="email"  width="40px" height="10px" class="txt"/></td></tr>
	<tr><td class="t"><br>Password:</td><td><input type="password" name="pass" class="txt"/></td></tr>
	<tr><td class="t"><br><input type="reset" value="Cancel" class="btn"/></td>
	<td class="t"><br><input type="submit" value="Login" class="btn" ></td></tr>
	
	<tr>
	<td>
	<br><br>
	<a href="forget.jsp">Forget Password</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</td>
	<td>
	<br><br>
	<a href="Rg"> Register</a>
	</td>
	</tr>
	</table>
	</form>
	
</td>
</tr>
<tr>
	<td></td>
	<td></td>
	<td align="right">
	
</td>
</tr>
</table>
</body>
</html>