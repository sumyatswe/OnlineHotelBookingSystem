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
String name=request.getParameter("name");
String pass=request.getParameter("pass");
System.out.println(name);
System.out.println(pass);
session.setAttribute("name",name);
session.setAttribute("pass",pass);
boolean result=false;
Connection con;
Statement stmt;
ResultSet rs;

	Class.forName("com.mysql.jdbc.Driver");
	
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group8","root","root");
		System.out.println("Connection Successful!");
		
		String sql="select * from admin where aname='"+name+"'and password='"+pass+"'";
		stmt=con.createStatement();
		rs=stmt.executeQuery(sql);
		while(rs.next()){
			result=true;
		}
		if(result){
			RequestDispatcher rd=request.getRequestDispatcher("/adminTrue.jsp");
			rd.forward(request, response);
		
		}
		else{
			%>
			<h1>Login Fail!Please Try Again!</h1>
			<%
			//System.out.println("<h1>Login Fail!Please Try Again!</h1>");
			RequestDispatcher rd=request.getRequestDispatcher("/admin.html");
			rd.forward(request, response);
		}
		%>
																
</body>
</html>