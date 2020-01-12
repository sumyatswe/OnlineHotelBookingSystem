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
.txt{
height:20px;
width:160px;}
.td1{font-size:20pt;color:black;font-weight:bold;}
.btn{
height:35px;
width:90px;color:black;
font-size:20px;}
h1.h{
margin:top;
	
	text-align:center;
	
	font-size:50pt;
	}

.ms{font-size:25pt;
color:red;
font-style:italic;
font-weight:bold;}
h2{font-size:30pt;
color:black;
font-style:italic;
font-weight:bold;}
.St{
font-size:30pt;
color:black;
font-style:italic;
font-weight:bold;
}

.b{
font-size:30pt;
color:black;
}
h1{
font-size:27pt;

}

</style>
<link rel="stylesheet" href="calendar/zapatec/zpcal/themes/wood.css" />
	<script type="text/javascript" src="calendar/zapatec/zpcal/utils/zapatec.js"></script>
	<script type="text/javascript" src="calendar/zapatec/zpcal/src/calendar.js"></script>
	<script type="text/javascript" src="calendar/zapatec/zpcal/lang/calendar-en.js"></script>
</head>
<body>
<table border="0" width="100%" height="100%">
<tr>
	<h1 align="center" class="h">Online Hotel Booking System</h1>
</tr>
<tr>
	<td>
		<a href="available1.jsp">View Available Rooms</a><br><br>
		<!--<a href="bookingForm.jsp">Check-in Rooms</a><br><br>-->
		
		<!-- <a href="cancel1.jsp">Cancel Booking</a><br><br> -->
		<a href="review.jsp">Review  Booking</a><br><br>
		<a href="logout.jsp">Logout</a><br><br>
		
	</td>
	<td align="center">
	 
	<%
	Connection con;
	Statement stmt;
	ResultSet rs;

		Class.forName("com.mysql.jdbc.Driver");
		
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group8","root","root");
			System.out.println("Connection Successful!");
			
	String email;
	String pwd;
	email=(String)session.getAttribute("email");
	pwd=(String)session.getAttribute("pass");
	System.out.println(email);
	System.out.println(pwd);
	/* 
	String name=request.getParameter("name");
	//session.setAttribute("name",name);
	String pass=request.getParameter("pass");
	//session.setAttribute("pass",pass);

	String n=(String)session.getAttribute("n");
	String pwd=(String)session.getAttribute("pwd");

	if(name!=null || pass!=null){
	session.setAttribute("name",name);
	session.setAttribute("pass",pass);
	}else{ */
		
		session.setAttribute("email",email);
		session.setAttribute("pass",pwd);
		
		
		String r=request.getParameter("rid");
		String rno="";
		int rid=Integer.parseInt(r);
		String select="select rno from room where rid="+rid; 
		stmt=con.createStatement();
		rs=stmt.executeQuery(select);
		while(rs.next()){
		rno=rs.getString("rno");
		}
		System.out.println("rno from db "+rno);
		
	
	%>
	
		<form action="roomupdate1.jsp">
		<table border="0" align="center">
		<tr><td colspan="2"  align="center" ><i class="b">Booking Now!</i> <td></tr>
		<tr><td class="td1"><br>Booking Room No</td><td><br><br><input type="text" name="rno" class="txt" value="<%=rno%>"></td></tr>
		<tr><br><td class="td1"><label for="date" >Start Date:</label></td><td >
				<input type="text" name="sdate" maxlength="400"	size="15"   class="txt"
					style="background-color: rgb(255, 255, 160);" readonly="readonly" id="calendar3">
					<button id="trigger3">...</button> 
					<script type="text/javascript">
								//         
								Zapatec.Calendar.setup({
									firstDay : 1,
									electric : false,
									inputField : "calendar3",
									button : "trigger3",
									ifFormat : "%Y-%m-%d",
									daFormat : "%Y-%m-%d"
								});
								//
							</script>
							</td>
							</tr>
	<tr><br><td class="td1"><label for="edate" >End Date:</label></td><td>
				<input type="text" name="edate" maxlength="400"	size="15"  class="txt" 
					style="background-color: rgb(255, 255, 160);" readonly="readonly" id="calendar4">
					<button id="trigger4">...</button> 
					<script type="text/javascript">
								//         
								Zapatec.Calendar.setup({
									firstDay : 1,
									electric : false,
									inputField : "calendar4",
									button : "trigger4",
									ifFormat : "%Y-%m-%d",
									daFormat : "%Y-%m-%d"
								});
								//
							</script></td></tr>
	<tr><td><br><input type="reset" value="Cancel" name="cancel" class="btn"/></td>
	<td><br><input type="submit" value="Confirm" name="confirm" class="btn"/></td>
	</tr>
	</table>
	</form>
	
</td>
</tr>
</table>
</body>
</html>