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
body{
background-color:#D8BFD8;
background-image:url('flower.jpg');
height:100%;width:100%;


}
.td{
color:black;
font-size:20pt;}
#t1{
color:blue;
font-size:25pt;
padding-botton:500px;
}
.btn{
height:35px;
width:90px;color:red;
font-size:20px;}
h2{
color:blue;
font-size:25px;
}

h1{
margin:top;
	color:006600;
	text-align:center;
	font-family: 'Oleo Script', cursive;;
	font-size:50pt;
	text-shadow:5px 5px 5px #6C2DC7;
	
	
}
</style>

</head>
<body>
<%
	
	String button=request.getParameter("but");%>
	
	<table border="0" height="100%" width="100%">
	<tr><td>
	<h1 align="center">Online Hotel Booking System</h1>
	</td></tr>
	<tr>
	<td width="50%" height="100%"></td>
	<tr>
	<%--<td align="right" id="t1">To know your password,you have to fill your NRC number and click OK! </td></tr>
	--%>
<%
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/group8","root","root");
		System.out.println("Connection Successful!");
		String sel="select cno from code";
		Statement st=con1.createStatement();
		ResultSet crs=st.executeQuery(sel);
		int cno=0;
	while(crs.next())
	{
		cno=crs.getInt("cno");
	}
	cno=cno+1;
	System.out.println(cno);
	int c=cno;
	String insert="insert into code values(null,"+c+")";
	PreparedStatement ps=con1.prepareStatement(insert);
	//ps.setInt(1,c);
	ps.executeUpdate();
		%>
	<!-- <td>is your verification code.</td>-->
	
	</tr>
	<tr>
	<td>
	<form action="forgetupd.jsp">
	
	<input type="text" name="code">
	<input type="submit" value="Confirm" name="but">
	</form>
	</td>
	</tr>
	<!-- <tr>
	<td>
	<form action="forget.jsp">
	<table border="0" align="right">
	 <tr><br><br><td class="td">Enter Your NRC:</td><td><input type="text" name="nrc" class="txt">
	<input type="submit" name="but" value="OK" >
	
	</td>
	</tr>
	</form>
 	-->
	


</table>
<script type="text/javascript">
function showMessage(){
	alert("<%=cno%> is your verification code.");
	
}
showMessage();

</script>
</body>
</html>