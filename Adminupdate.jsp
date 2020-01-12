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
input.txt{
height:20px;
width:160px;}
#but{
height:35px;
width:130px;color:black;
font-size:16px;}
#bu{
height:35px;
width:80px;color:black;
font-size:16px;}
#room{
width:160px;
height:35px;
}
#sub{
width:50px;
height:35px;
}
.info{
font-size:25pt;
color:black;
}

div{
padding-bottom:400px;}

#change{padding-bottom:350px;}
</style>
</head>
<body>
<%

String add=request.getParameter("add");
String ok=request.getParameter("ok");
String change=request.getParameter("change");
String room=request.getParameter("room");
if(add!=null)
{
	Connection con;
	Statement stmt;
	ResultSet rs;
	String sql;
	
	Class.forName("com.mysql.jdbc.Driver");
	
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group8","root","root");
	System.out.println("Connection Successful!");
	
	sql="select price from roomtype where typename='"+room+"'";
	stmt=con.createStatement();
	rs=stmt.executeQuery(sql);
	int price=0;
	while(rs.next()){
		price=rs.getInt("price");
	}
%>
<h1 align="center">Online Hotel Booking System</h1>
<form action="add.jsp">
	<table border="0">
	<tr>
		<th><h3>Room No:</h3></th>
		<td><input type="text" name="rno" class="txt"></td>
	</tr>
	<tr>
		<th><h3>Room Type:</h3></th>
		<td><select name="room" id="room">
		<option disabled>Room Type</option>
		<option value="single">Single Room</option>
		<option value="double">Double Room</option>
		<option value="family">Family Room</option>
		</select></td>
	</tr>
	
	<tr>
		<td><a href="adminTrue.jsp">Back</a></td>
		<td><input type="submit" name="add" value="Add" id="bu"></td>
	</tr>
	
	</table>
</form>
	

<%
}
else if(ok!=null){
	%>
	<jsp:forward page="Adminviewroom.jsp">
	<jsp:param name="room" value="<%=room %>"/>
	</jsp:forward>
	
	<%
}
else if(change!=null){
	%>
	<jsp:forward page="ChangePrice.jsp">
	<jsp:param name="room" value="<%=room %>"/>
	</jsp:forward>
	
	<%
}
%>
<table border="0" width="100%" height="100%">
			<tr>
				<h1 align="center" >Online Hotel Booking System</h1>
			</tr>
			<tr>
			<td>
				<table border="0" width="100%" height="100%">
				<tr>
				<td align="left" class="dropdown">
				<div>
				<form action="adminTrue.jsp">
				<select name="room" id="room">
				<option disabled>Room Type</option>
				<option value="single">Single Room</option>
				<option value="double">Double Room</option>
				<option value="family">Family Room</option>
				</select>
				<input type="submit" value="OK" id="sub" width="100px" name="ok">
				<br><br>
				<input type="submit" value="Add New Room" width="100px" id="but" name="add">
				<br><br>
				<input type="submit" value="Change Price" width="100px" id="but" name="change" >
				</form>
				</div>
				</td>
				</tr>
				</table>
			</td>
			<td width="700px" height="500px" align="center">
					<%
						String r=request.getParameter("rid");
						int ri=Integer.parseInt(r);
						session.setAttribute("rid",r);
						System.out.println(ri);
						Connection con;
						Statement stmt;
						ResultSet rs;
						String sql;
						
						Class.forName("com.mysql.jdbc.Driver");
						
						con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group8","root","root");
						System.out.println("Connection Successful!");
						
						sql="select room.rno,roomtype.price,roomtype.typename from room,roomtype where room.rtypeid=roomtype.rtypeid and room.rid="+ri;
						stmt=con.createStatement();
						rs=stmt.executeQuery(sql);
						int price=0;
						String rno=null;
						String typename=null;
						while(rs.next()){
							rno=rs.getString("rno");
							price=rs.getInt("price");
							typename=rs.getString("typename");
						}
						%>
						<form action="AdminupdateRoom.jsp" id="change">
						<i class="info">Change Your Room No!</i>
						<table border="0" >

						<tr>
						<td class="td">
						<h3>
						Room No
						</h3>
						</td>
						<td>
						<input type="text" name="rno" value="<%=rno%>" class="txt">
						</td>
						</tr>
						
						<tr>
						<td class="td">
						<h3>
						Room Type
						</h3>
						</td>
						<td>
						<input type="text" name="typename" value="<%=typename%>" class="txt" disabled>
						</td>
						</tr>
						
						<tr>
						<td class="td"><h3>Price:</h3></td>
						<td>
						<input type="text" name="price" value="<%=price %>" class="txt" disabled>
						</td>
						<tr><td><br><br><input type="reset" value="Cancel" name="cancel" class="btn"/></td>

						<td><br><br><input type="submit" value="Confirm" name="confirm" class="btn"/></td></tr>
					</table>
					</form>
			</td>
			</tr>
</table>
</body>
</html>