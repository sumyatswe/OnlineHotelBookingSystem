<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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


#tr1{
color:red;
font-style:italic;
font-weight:bold;
text-shadow:5px 5px 5px green;
font-size:30pt;

}
body{

}
h1{
margin:top;
	
	text-align:center;
	font-family: 'Oleo Script', cursive;;
	font-size:50pt;
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
.ms{font-size:25pt;
color:black;
font-style:italic;
}
.bs{font-size:25pt;
color:black;
font-style:italic;
}

.info{font-size:25pt;
color:black;}

#room{
width:200px;
height:40px;

}
#sub{
width:60px;
height:40px;}
.dropdown{
padding-bottom:200px;}

</style>
</head>
<body>
<%
String email=(String)session.getAttribute("email");
String pass=(String)session.getAttribute("pass"); 
String b=null;
b=(String)session.getAttribute("bid");
session.setAttribute("bid",b);

session.setAttribute("email",email);
session.setAttribute("pass",pass);
String str=request.getParameter("str");
%>
<table border="0" width="100%" height="100%">
<tr>
	<h1 align="center" >Online Hotel Booking System</h1>
</tr>
<tr>
	<td class="link">
	
	<a href="available1.jsp">View Available Rooms</a><br><br>
	<!--<a href="bookingForm.jsp">Check-in Rooms</a><br><br>-->
	
	
	<a href="review.jsp">Review  Booking</a><br><br>
	<a href="logout.jsp">Logout</a><br><br>
	
	</td>
	
	<br><br><br><td align="center" class="dropdown">
	<%
	if(str!=null){
			if(str=="Booking Successful!"){
				%>
				
				<i class="bs" align="right"><%= str%></i>
				<%
			}
			else{
				%>
			<i class="ms" align="right" ><%= str%></i>
			<%
			}
			
		}else{
			
		}
	%>
	<br><br><br><br><form action="viewroom.jsp">
	<select name="room" id="room">
	<option disabled>Room Type</option>
	<option value="single">Single Room</option>
	<option value="double">Double Room</option>
	<option value="family">Family Room</option>
	</select>
	<input type="submit" value="View" id="sub">
	</form>
	</td>
</tr>
</table>
	
</body>
</html>