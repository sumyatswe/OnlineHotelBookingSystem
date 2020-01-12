<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
     <%@ page import="java.util.Date" %>
   <%@ page import="java.text.*" %>
   <%@ page import="java.io.*" %>
   <%@ page import="javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="design.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="calendar/zapatec/zpcal/themes/wood.css" />
	<script type="text/javascript" src="calendar/zapatec/zpcal/utils/zapatec.js"></script>
	<script type="text/javascript" src="calendar/zapatec/zpcal/src/calendar.js"></script>
	<script type="text/javascript" src="calendar/zapatec/zpcal/lang/calendar-en.js"></script>
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
.td{font-size:20pt;color:blue;font-weight:bold;}
.btn{
height:35px;
width:90px;color:red;
font-size:20px;}
h1{
margin:top;
	
	text-align:center;
	font-family: 'Oleo Script', cursive;;
	font-size:50pt;
	}

.ms{color:black;
font-size:30pt;}

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
	<a href="bookingForm.jsp">Check-in Rooms</a><br><br>
	
	<a href="review.jsp">Review  Booking</a><br><br>
	<a href="logout.jsp">Logout</a><br><br>
	
	</td>
	<td align="center">
<%
		//String confirm=request.getParameter("confirm");
		
		
		String rno=request.getParameter("rno");
		System.out.println("rno from jsp form "+rno);
		String sdate=request.getParameter("sdate");
		String edate=request.getParameter("edate");
		
		String email=(String)session.getAttribute("email");
		String pass=(String)session.getAttribute("pass");
		
		
		session.setAttribute("email",email);
		session.setAttribute("pass",pass);
System.out.println(email);
System.out.println(pass);

Connection con;
Statement stmt;
ResultSet rs;
String sql;
String sql1;
int rid=0;
int gid=0;
//boolean result=true;

Date ed;Date sd;Date startdate=null;Date enddate=null;Date cur;

Date stdate;
Date eddate;
	Class.forName("com.mysql.jdbc.Driver");
	
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group8","root","root");
		System.out.println("Connection Successful!");
		

/* Date stdate=new SimpleDateFormat("yyyy-MM-dd").parse(sdate);
Date eddate=new SimpleDateFormat("yyyy-MM-dd").parse(edate); */
String b=(String)(session.getAttribute("bid"));
//String b=request.getParameter("b");
System.out.println("BID from update1.jsp" +b);
int bid=Integer.parseInt(b);
//if(confirm!=null){
			
			Date d=new Date();
			DateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
			String curdate=dateFormat.format(d);
			System.out.println(curdate);
			cur=new SimpleDateFormat("yyyy-MM-dd").parse(curdate);
			 stdate=new SimpleDateFormat("yyyy-MM-dd").parse(sdate);
				boolean tr=true;
				if(cur.compareTo(stdate)>0){
					tr=false;
				}
if(tr){//cur compare stdate	
			/*sql="select start_date,end_date from booking where bid="+bid;
			stmt=con.createStatement();
			rs=stmt.executeQuery(sql);
			
			while(rs.next()){
				startdate=rs.getDate("start_date");
				enddate=rs.getDate("end_date");
			}
			*/
			
			
			//String dd="select start_date,end_date from booking where rid like (select rid from room where rno='"+rno+"')";
			String dd="select booking.start_date,booking.end_date from booking,room where booking.rid=room.rid and room.rno='"+rno+"' and booking.bid!="+bid;
			stmt=con.createStatement();
			rs=stmt.executeQuery(dd);
			
			stdate=new SimpleDateFormat("yyyy-MM-dd").parse(sdate);
		    eddate=new SimpleDateFormat("yyyy-MM-dd").parse(edate);
		    
		    boolean r=true;
		  
			while(rs.next()){
				
				sd=rs.getDate("start_date");
				ed=rs.getDate("end_date");
				System.out.println(ed);
			    System.out.println(sd);
				  	
			    
				if(stdate.compareTo(ed)>0|| sd.compareTo(eddate)>0){
						r=true;
				}//date compare
				else if(sd.compareTo(stdate)==0 && ed.compareTo(eddate)==0)
				{//date compare else
					
					r=true;
					//}
				}// compare else closing tag
				else{
					r=false;
					break;	
				}
			}//while closing tag
			  System.out.println(r);
			if(r){
				
				String upd="update booking set start_date=?,end_date=? where bid=?";
				PreparedStatement ps=con.prepareStatement(upd);
				ps.setDate(1,java.sql.Date.valueOf(sdate));
				ps.setDate(2,java.sql.Date.valueOf(edate));
				ps.setInt(3,bid);
				ps.executeUpdate();
				String str="Successful Update !";
				%>
				<jsp:forward page="review.jsp">
				<jsp:param name="str" value="<%=str %>"/>
				</jsp:forward>
				
				<%
				//response.sendRedirect("/review.jsp");
			
			}//r if
			else{//r else
				//String str="<i class='ms'>Unsuccessful Update !<br>Please choose another date.</i> ";
				
				dd="select booking.start_date,booking.end_date from booking,room where room.rid=booking.rid and room.rno='"+rno+"' and booking.bid!="+bid;
				stmt=con.createStatement();
				rs=stmt.executeQuery(dd);
				String str="";
				while(rs.next()){
					ed=rs.getDate("end_date");
					sd=rs.getDate("start_date");
				
				str+="You can't update "+rno+" between "+ sd+" and "+ ed+".";
				}
				%>
				<jsp:forward page="review.jsp">
				<jsp:param name="str" value="<%=str %>"/>
				</jsp:forward>
		<%
			}// r else closing
	}//tr if

else{//tr else
			String str="You can't update cause of your date out. <br>Please try again!";
			%>
			<jsp:forward page="review.jsp">
			<jsp:param name="str" value="<%=str %>"/>
			</jsp:forward>
			<%	
} //tr else closing
					
//}else{
%>

<!-- <form action="update.jsp">
<h2 >Change Your Booking Information</h2>
<table border="0" >

<tr><td class="td">Enter Your Changing Room No</td><td><input type="text" name="rno"></td></tr>
<tr><td class="td"><br><label for="date">Start Date:</label></td><td>
				<input type="text" name="sdate" maxlength="400"	size="15"   
					style="background-color: rgb(255, 255, 160);" readonly="readonly" id="calendar">
					<button id="trigger">...</button> 
					<script type="text/javascript">
								//         
								Zapatec.Calendar.setup({
									firstDay : 1,
									electric : false,
									inputField : "calendar",
									button : "trigger",
									ifFormat : "%Y-%m-%d",
									daFormat : "%Y-%m-%d"
								});
								//
							</script>
							</td>
							</tr>
<tr><td class="td"><br><label for="edate">End Date:</label></td><td>
				<input type="text" name="edate" maxlength="400"	size="15"   
					style="background-color: rgb(255, 255, 160);" readonly="readonly" id="calendar1">
					<button id="trigger1">...</button> 
					<script type="text/javascript">
								//         
								Zapatec.Calendar.setup({
									firstDay : 1,
									electric : false,
									inputField : "calendar1",
									button : "trigger1",
									ifFormat : "%Y-%m-%d",
									daFormat : "%Y-%m-%d"
								});
								//
							</script></td></tr>
<tr><td><br><br><input type="reset" value="Cancel" name="cancel" class="btn"/></td>

<td><br><br><input type="submit" value="Confirm" name="confirm" class="btn"/></td></tr>
</table>
</form>
 -->

</td>
</tr>
</table>


</body>
</html>