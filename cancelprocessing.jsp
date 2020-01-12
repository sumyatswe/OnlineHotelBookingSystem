<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
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
	h1{
margin:top;
	
	text-align:center;
	
	font-size:50pt;
	




}
.th{
background-color:DarkSalmon;
font-weight:bold;
font-size:15pt;

}
.td{
font-size:15pt;
font-weight:bold;
color:Tomato;
}
.info{font-size:30pt;
color:black;}

	</style>

</head>
<body>
<table border="0" width="100%" height="100%">
<tr>
	<h1 align="center" >Online Hotel Booking System</h1>
</tr>
<tr>
	<td class="link">
	
	<a href="available1.jsp">View Available Rooms</a><br><br>
	
	
	<!-- <a href="cancel1.jsp">Cancel Booking</a><br><br> -->
	<a href="review.jsp">Review  Booking</a><br><br>
	<a href="logout.jsp">Logout</a><br><br>
	
	</td>
	<td align="right">

<%

	
	/*String b=null;
	b=(String)session.getAttribute("bid");
	session.setAttribute("bid",b);
	if(b==null){
	b=request.getParameter("bid");
	session.setAttribute("bid",b);
	//b="0";
	}
	*/
	String b=request.getParameter("bid");
	
	System.out.println("bid="+b);
	int bid=Integer.parseInt(b);
	

/* String rno=request.getParameter("rno");
System.out.println("rno="+rno);
 */

Connection con;
Statement stmt;
ResultSet rs;
String sql="";
Class.forName("com.mysql.jdbc.Driver");

con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group8","root","root");
System.out.println("Connection Successful!");
System.out.println(bid);
sql="update room set status='1' where rid like (select rid from booking where bid="+bid+")";
stmt=con.createStatement();
stmt.executeUpdate(sql);

sql="delete from booking where bid="+bid;
stmt=con.createStatement();
stmt.executeUpdate(sql);

sql="select rno from room where rid like (select rid from booking where bid="+bid+")";
stmt=con.createStatement();
rs=stmt.executeQuery(sql);
String rno="";
while(rs.next()){
	rno=rs.getString("rno");
}
String str="Cancellation Successful!";
out.println("<i class='info'>Cancellation Successful!</i>");


%>
<jsp:forward page="review.jsp">
	<jsp:param name="str" value="<%=str %>"/>
	</jsp:forward>
</td>
</tr>
</table>

</body>
</html>