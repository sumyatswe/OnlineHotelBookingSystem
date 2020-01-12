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

String cd=(String)session.getAttribute("code");
//String phone=request.getParameter("phone");
int code=Integer.parseInt(cd);

	Class.forName("com.mysql.jdbc.Driver");
	
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group8","root","root");
		System.out.println("Connection Successful!");
		
		/*String sql="select * from guest where name='"+name+"'and password='"+pass+"'";
		stmt=con.createStatement();
		rs=stmt.executeQuery(sql);
		while(rs.next()){
			result=true;
		}
		if(result){
			*/
			System.out.println(code);
			String insert="update guest set codeno="+code+" where  email='"+email+"'";
			PreparedStatement ps=con.prepareStatement(insert);
			//ps.setInt(1,c);
			ps.executeUpdate();
			
			String upd="update guest set password='"+pass+"'where codeno="+code+" and email='"+email+"'";
			 ps=con.prepareStatement(upd);
			 ps.executeUpdate();
			%>
			 <jsp:forward page="/booking.jsp">
			<jsp:param name="email" value="<%=email %>"/>
			<jsp:param name="pass" value="<%=pass %>"/>
			</jsp:forward>
			
<!--<table border="0" width="100%" height="400px" >
<h1 align="center" >Online Hotel Booking System</h1>
<tr><td>
	<td></td>
</td>
<td align="right">
	<i id="fa">Login Failed,Please try again!</i>
	<form action="logincondition.jsp"  method="get">
	
	<table border="0" id="t2" align="right">
	
	<tr><td class="t"><h3>User Name:</h3></td><td><input type="text" name="name" width="40px" height="20px" class="txt"/></td></tr>
	<tr><td class="t"><h3>Password:</h3></td><td><input type="password" name="pass" class="txt"/></td></tr>
	<tr><td class="t"><input type="reset" value="Cancel" class="btn"/></td>
	<td class="t"><input type="submit" value="Login" class="btn"/ ></td></tr>
	
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

	-->		
			
		
</body>
</html>