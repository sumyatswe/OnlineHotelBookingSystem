<%@page language="java" contentType="text/html; charset=ISO-8859-1"
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

h2{
padding-bottom:400px;
}

</style>
</head>
<body>
<table border="0" width="100%" height="100%">
			<tr>
				<h1 align="center" >Online Hotel Booking System</h1>
			</tr>
			<tr>
				
				<td align="left" class="dropdown">
				<!-- 
				<div>
				<form action="Adminviewroom.jsp">
				<select name="room" id="room">
				<option disabled>Room Type</option>
				<option value="single">Single Room</option>
				<option value="double">Double Room</option>
				<option value="family">Family Room</option>
				</select>
				<input type="submit" value="OK" id="sub" width="100px">
				<br><br>
				<input type="submit" value="Add" width="100px" id="but">
				<br><br>
				<input type="submit" value="Change Price" width="100px" id="but" name="change" >
				</form>
				</div>
				-->
				</td>
				<td width="700px" height="500px" align="right">
					<%
					
					boolean cond=false;
					//String rid=null;
					//rid=(String)session.getAttribute("rid");
				
					//if(rid==null){
						String rid=request.getParameter("rid");
						int ri=Integer.parseInt(rid);
						Connection con;
						Statement stmt;
						ResultSet rs;
						String sql;
						
						Class.forName("com.mysql.jdbc.Driver");
						
						con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group8","root","root");
						System.out.println("Connection Successful!");
						System.out.println("rid from table"+ri);
						
						sql="select * from booking where rid="+ri;
						stmt=con.createStatement();
						rs=stmt.executeQuery(sql);
						boolean book=false;
						while(rs.next()){
							book=true;
						}
						String st="";
						String room="";
						if(book){
						st="You can't delete this booking room!";
						//out.println("<h2>You can't delete this booking room!</h2>");
						cond=true;	
						}
						else{
							
						sql="delete from room where rid="+ri;
						stmt=con.createStatement();
						stmt.executeUpdate(sql);
						st="Delete Room is successful!";
						//out.println("<h2>Delete Room is successful!'</h2>");
						sql="select typename from roomtype where rtypeid like(select rtypeid from room where rid="+ri+")";
						stmt=con.createStatement();
						rs=stmt.executeQuery(sql);
						
						while(rs.next()){
							room=rs.getString("typename");
						}
						System.out.println("room type :"+room);
						}
						//System.out.println(st);
						//session.setAttribute("st", st);
						//response.sendRedirect("./Adminviewroom.jsp");
						%>
						<jsp:forward page="adminTrue1.jsp">
						<jsp:param name="st" value="<%=st %>"/>
						<jsp:param name="room" value="<%=room %>"/>
						</jsp:forward>
				</td>
	</tr>
</table>

</body>
</html>