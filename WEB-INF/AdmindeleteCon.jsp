<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="design.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
h1{
margin:top;

	text-align:center;
	
	font-size:50pt;
	}

div{
padding-bottom:400px;}

</style>
</head>
<body  onload="showMessage()">
<script type="text/javascript">
function showMessage(){
	if(confirm("Are you sure")){
		//window.location.replace("Admindelete.jsp");
		//params=$.params(r);
		
		window.location.href="Admindelete.jsp";
	}
	else{
		window.location.href="adminTrue.jsp";
	}
};
</script>
</body>
</html>