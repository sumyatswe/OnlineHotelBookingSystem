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
h1{
margin:top;
	color:tomato;
	text-align:center;
	font-family: 'Oleo Script', cursive;;
	font-size:60pt;
	text-shadow:5px 5px 5px green;}


body{

}
.btn{
color:red;
	width:80px;
	height:30px;
	font-size:15px;}
	.td{
	color:DarkSlateGrey;
	font-size:17px;
	font-weight:bold;}
	.txt{
height:20px;
width:160px;}
.td{font-size:20pt;color:blue;font-weight:bold;}
.btn{
height:35px;
width:90px;color:red;
font-size:20px;}
#tr{font-size:27pt;
color:red;}</style>
</head>
<body onload="showMessage()">
<%
String b=request.getParameter("bid");
	int bid=Integer.parseInt(b);
	System.out.println("bid="+bid);
	session.setAttribute("bid",bid);
%>
<script type="text/javascript">
function showMessage(){
	if(confirm("Are you sure to cancle?")){
	window.location.href="cancelprocessing.jsp";
	
	}else{
		window.location.href="available1.jsp";
	}
};

</script>
</body>
</html>