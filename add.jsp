 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="design.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Online Hotel Booking System</h1>
<%
String rno=request.getParameter("rno");
String room=request.getParameter("room");
System.out.println(room);
String add=request.getParameter("add");
String ok=request.getParameter("ok");


Connection con;
Statement stmt;
ResultSet rs;

Class.forName("com.mysql.jdbc.Driver");

	
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group8","root","root");
System.out.println("Connection Successful!");


String st="";
String ins="";
boolean tf=true;
String condition="select * from room where rno='"+rno+"'";
stmt=con.createStatement();
rs=stmt.executeQuery(condition);
while(rs.next())
{
	tf=false;
	
}

/*String priceSel="select price from roomtype where typename='"+room+"'";
stmt=con.createStatement();
rs=stmt.executeQuery(priceSel);
int p=0;
while(rs.next())
{
	p=rs.getInt("price");
	
}
*/
	if(tf)
	{
	String sel="select rtypeid from roomtype where typename='"+room+"'";
	stmt=con.createStatement();
	rs=stmt.executeQuery(sel);
	int rtypeid=0;
	while(rs.next()){
		rtypeid=rs.getInt("rtypeid");
	}
	ins="insert into room values(null,?,?,'1')";
	PreparedStatement ps=con.prepareStatement(ins);
	ps.setString(1,rno);
	ps.setInt(2,rtypeid);
	ps.executeUpdate();
	st="Adding New Room is Successful!";
	System.out.println(st);
	session.setAttribute("st", st);
	response.sendRedirect("./adminTrue.jsp");
	}
	else{
		st="This Room Number is already exist!";
	
	System.out.println(st);
	session.setAttribute("st", st);
	response.sendRedirect("./adminTrue.jsp");
	}
%>




</body>
</html>