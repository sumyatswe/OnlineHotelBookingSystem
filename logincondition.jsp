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

#fa{
color:red;
font-size:25pt;
}
</style>


</head>
<body>
<%
String email=request.getParameter("email");
String pass=request.getParameter("pass");
System.out.println(email);
System.out.println(pass);
session.setAttribute("email",email);
session.setAttribute("pass",pass);
boolean result=false;
Connection con;
Statement stmt;
ResultSet rs;

	Class.forName("com.mysql.jdbc.Driver");
	
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group8","root","root");
		System.out.println("Connection Successful!");
		
		String sql="select * from guest where email='"+email+"'and password='"+pass+"'";
		stmt=con.createStatement();
		rs=stmt.executeQuery(sql);
		while(rs.next()){
			result=true;
		}
		if(result){
			%>
			 <jsp:forward page="/booking.jsp">
			<jsp:param name="email" value="<%=email %>"/>
			<jsp:param name="pass" value="<%=pass %>"/>
			</jsp:forward>
			<%
			 /* RequestDispatcher rd=request.getRequestDispatcher("booking.jsp");
			rd.forward(request, response);  */
		}else{
			
			%>
<table border="0" width="100%" height="400px" >
<h1 align="center" >Online Hotel Booking System</h1>
<tr>
<td>
	<td>
	</td>
</td>
<td align="right">
	<i id="fa">Login Failed,Please try again!</i>
	<form action="logincondition.jsp"  method="get">
	
	<table border="0" id="t2" align="right">
	
	<tr><td class="t">Email   :</td><td><input type="text" name="email" width="40px" height="20px" class="txt"/></td></tr>
	<tr><td class="t"><br>Password:</td><td><input type="password" name="pass" class="txt"/></td></tr>
	<tr><td class="t"><br><input type="reset" value="Cancel" class="btn"/></td>
	<td class="t"><br><input type="submit" value="Login" class="btn"/></td></tr>
	
	<tr><td align="right"></td>
	<tr>
	<td align="right">
	<br><a href="forget.jsp">Forget Password</a>&nbsp;&nbsp;&nbsp;
	</td><td>
	&nbsp;&nbsp;
	</td>
	</tr>
	</table>
	</form>
</td>
</tr>

</table>

			
			
			<%
		}
%>
</body>
</html>