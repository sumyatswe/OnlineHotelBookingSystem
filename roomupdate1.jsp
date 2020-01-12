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
body{



}
.bs{color:black;
font-size:25pt;

}
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
#t2{


width:100%;
height:300%;
}


	
h3{
font-size:24pt;
color:red;
align:center;
}

.th{
background-color:#8E35EF;
font-weight:bold;
font-size:15pt;

}
.td{
font-size:13pt;
font-weight:bold;
color:black;
}

.ms{font-size:20pt;
color:red;
}
</style>
</head>
<body>
<%
String email=(String)session.getAttribute("email");
String pass=(String)session.getAttribute("pass");

session.setAttribute("email",email);
session.setAttribute("pass",pass);

System.out.println(email);
System.out.println(pass);
%>
<table border="0" width="100%" height="100%">
<tr>
	<h1 align="center" >Online Hotel Booking System</h1>
</tr>
<tr>
	<td class="link">
	<!-- <a href="RoomBooking.jsp">View Rooms</a><br><br> -->
	<a href="available1.jsp">View Available Rooms</a><br><br>
	<!--<a href="bookingForm.jsp">Check-in Rooms</a><br><br>-->
	<!-- <a href="cancel1.jsp">Cancel Booking</a><br><br> -->
	<a href="review.jsp">Review  Booking</a><br><br>
	<a href="logout.jsp">Logout</a><br><br>
	
	</td>
	<td align="right">
	
<%
String rno=request.getParameter("rno");
String sdate=request.getParameter("sdate");
String edate=request.getParameter("edate");



System.out.println("Start date from Room Booking ... "+sdate);
System.out.println("End date from Room Booking ... "+edate);
String sql3;

Connection con;
Statement stmt;
ResultSet rs;
String sql;
String sql1;
String available;
String statusupdate;
int rid=0;
int gid=0;
boolean result=true;boolean r=true;
/* String end_date="";
String start_date=""; */
Date ed;Date sd;Date sed;Date ssd;Date cur;
String dd;
Date stdate;
Date eddate;
	Class.forName("com.mysql.jdbc.Driver");
	
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group8","root","root");
		System.out.println("Connection Successful!");
		
		Date d=new Date();
		DateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
		String curdate=dateFormat.format(d);
		System.out.println(curdate);
		cur=new SimpleDateFormat("yyyy-MM-dd").parse(curdate);
		
		String delete="select end_date from booking";
		Statement edelete=con.createStatement();
		rs=edelete.executeQuery(delete);
		while(rs.next()){
				ed=rs.getDate("end_date");
				System.out.println(ed);
				
				if(cur.compareTo(ed)>0){
				String rdelete="delete from booking where end_date='"+ed+"'";
				Statement sdelete=con.createStatement();
				sdelete.executeUpdate(rdelete);
				
				
				String supdate="update room set status='1' where rid like(select rid from booking where end_date='"+ed+"')";
				Statement st=con.createStatement();
				st.executeUpdate(supdate);
				}
		}//while
			
		 stdate=new SimpleDateFormat("yyyy-MM-dd").parse(sdate);
		boolean tr=true;
		if(cur.compareTo(stdate)>0){
			tr=false;
		}
if(tr){//cur compare stdate	
		String rn="select rno from room where rno='"+rno+"' and status='0'";
		Statement stm=con.createStatement();
		rs=stm.executeQuery(rn);
		while(rs.next()){
			result=false;
		}
		
if(result){
			String yn="select rid from booking where rid like (select rid from room where rno='"+rno+"')";
			stmt=con.createStatement();
			rs=stmt.executeQuery(yn);
			boolean res=false;
			while(rs.next()){
				res=true;
			}
			if(res){

				dd="select booking.start_date,booking.end_date from booking,room where room.rid=booking.rid and room.rno='"+rno+"'";
				stmt=con.createStatement();
				rs=stmt.executeQuery(dd);
				
				while(rs.next()){
					ed=rs.getDate("end_date");
					sd=rs.getDate("start_date");
				
					/* isd=new SimpleDateFormat("yyyy-MM-dd").parse(sdate);
					ed=new SimpleDateFormat("yyyy-MM-dd").parse(end_date);
					sd=new SimpleDateFormat("yyyy-MM-dd").parse(start_date);
					ied=new SimpleDateFormat("yyyy-MM-dd").parse(edate); */
					 stdate=new SimpleDateFormat("yyyy-MM-dd").parse(sdate);
				     eddate=new SimpleDateFormat("yyyy-MM-dd").parse(edate);
					if(stdate.compareTo(ed)>0|| sd.compareTo(eddate)>0){
						r=true;
					}//date compare if
					else{//date compare else 
						   r=false;
					   		break;
					}
				}//while closint tag
					   	  if(r){//r true
					   		  /* if(cur.compareTo(stdate)==0){ */
					   		 	statusupdate="update room set status='0' where rno='"+rno+"'";
								stmt=con.createStatement();
								stmt.executeUpdate(statusupdate);
					   		  
								sql="select gid from guest where email='"+email+"' and password='"+pass+"'";
								stmt=con.createStatement();
								rs=stmt.executeQuery(sql);
								
								while(rs.next()){
								//String g=rs.getString("gid");
								gid=rs.getInt("gid");
								System.out.println("Guest Id by login user name  !!!! "+gid);
								}
								
								sql1="select rid from room where rno='"+rno+"'";
								stmt=con.createStatement();
								rs=stmt.executeQuery(sql1);
								while(rs.next()){
								//String r=rs.getString("rid");
								rid=rs.getInt("rid");
								System.out.println("Room Id by Room No ... "+rid);
								}
								
								sql3="insert into booking values(null,?,?,?,?)";
								PreparedStatement ps=con.prepareStatement(sql3);
								ps.setInt(1,gid);
								ps.setInt(2,rid);
								//convert util date to sqldate
							
								ps.setDate(3,java.sql.Date.valueOf(sdate));
								ps.setDate(4,java.sql.Date.valueOf(edate));
								ps.executeUpdate();
								
								/* out.println("<h1>Booking Successful!If you would like to check-in again.</h1>");
								RequestDispatcher rd=request.getRequestDispatcher("RoomBooking.jsp");
								rd.forward(request, response); */
								String str="Booking Successful!";
								%>
								
								<jsp:forward page="available1.jsp">
								<jsp:param name="str" value="<%=str %>"/>
								</jsp:forward>
								<%
				   	  }else{
					   dd="select booking.start_date,booking.end_date from booking,room where room.rid=booking.rid and room.rno='"+rno+"'";
						stmt=con.createStatement();
						rs=stmt.executeQuery(dd);
						%>
						
						<% 
						while(rs.next()){
							ed=rs.getDate("end_date");
							sd=rs.getDate("start_date");
						
						out.print("<br><i class='ms'> You can't check-in "+rno+"between "+sd+"and"+ed+".</i>");
						
						}
						out.print("<br><i class='ms'> You can check-in the following available rooms!</i>");
						stdate=new SimpleDateFormat("yyyy-MM-dd").parse(sdate);
					    eddate=new SimpleDateFormat("yyyy-MM-dd").parse(edate);
					    System.out.println("user start date"+stdate);
						System.out.println("user end date"+eddate);
						available="select rid,start_date,end_date from booking";
						stmt=con.createStatement();
						rs=stmt.executeQuery(available);
						while(rs.next()){
							rid=rs.getInt("rid");
							ed=rs.getDate("end_date");
							sd=rs.getDate("start_date");
							System.out.println("table end date"+ed);
							System.out.println("table start date"+sd);
							
							if(stdate.compareTo(ed)>0 || eddate.compareTo(sd)<0){
																
							
							 	statusupdate="update room set status='1' where rid="+rid;
								stmt=con.createStatement();
								stmt.executeUpdate(statusupdate);
								System.out.println("update successful");
							}
						}
						
						available="select typename from roomtype where rtypeid in (select rtypeid from room where room.rno='"+rno+"')";
						stmt=con.createStatement();
						rs=stmt.executeQuery(available);
						String typename="";
						while(rs.next()){
							typename=rs.getString("typename");
						}
						available="select room.rno,roomtype.typename,roomtype.price,room.rid from room,roomtype where room.rtypeid=roomtype.rtypeid and room.status='1' and roomtype.typename='"+typename+"'";
						//available="select room.rno,roomtype.price from room,roomtype where room.rtypeid=roomtype.rtypeid and room.status=1 and roomtype.typename='"+typename+"'";
						stmt=con.createStatement();
						rs=stmt.executeQuery(available);
						//available room retrieve
						%>	
						
						<table border="1" width="500" height="100" bgcolor="silver">
						<tr>
						<th class="th">Room_No</th>
						<th class="th">Room Type</th>
						<th class="th">Price</th>
						<th class="th">Booking</th>
						
						</tr>
						<% 
						while(rs.next()){
						%>
							<tr>
							<td class="td"><%=rs.getString("rno") %></td>
							<td class="td"><%=rs.getString("typename") %></td>
							<td class="td"><%=rs.getInt("price") %></td>
							<td><a href="bookingForm.jsp?rid=<%=rs.getInt("rid") %>">Booking</a></td>
							</tr>
						<%
						} 
						%>
						</table>
						
						<!-- <form action="roomupdate1.jsp">
						<table border="0" >
						<tr><td>Booking Room No</td><td><input type="text" name="rno"></td></tr>
						<tr><td><label for="date">Start Date:</label></td><td>
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
						<tr><td><label for="edate">End Date:</label></td><td>
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
						<tr><td><input type="submit" value="Confirm" name="confirm" class="btn"/></td>
						<td><input type="reset" value="Cancel" name="cancel" class="btn"/></td>
						</tr>
					</table>
					</form> -->
					<%
				   }//r else closing tag
				
		}//res if
		
		else{//res else
			
			statusupdate="update room set status='0' where rno='"+rno+"'";
			stmt=con.createStatement();
			stmt.executeUpdate(statusupdate);
			 
			sql="select gid from guest where email='"+email+"' and password='"+pass+"'";
			stmt=con.createStatement();
			rs=stmt.executeQuery(sql);
		
			while(rs.next()){
			//String g=rs.getString("gid");
			gid=rs.getInt("gid");
			System.out.println("Guest Id by login user name  !!!! "+gid);
			}
		
			sql1="select rid from room where rno='"+rno+"'";
			stmt=con.createStatement();
			rs=stmt.executeQuery(sql1);
			while(rs.next()){
			//String r=rs.getString("rid");
			rid=rs.getInt("rid");
			System.out.println("Room Id by Room No ... "+rid+"");
			}
		
			sql3="insert into booking values(null,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql3);
			ps.setInt(1,gid);
			ps.setInt(2,rid);
			//convert util date to sqldate
			ps.setDate(3,java.sql.Date.valueOf(sdate));
			ps.setDate(4,java.sql.Date.valueOf(edate));
			//java.sql.Date d=convertUtilToSql(stdate);
			
			ps.executeUpdate();
			
			/* out.println("<h1>Booking Successful!If you would like to check-in again.</h1>");
			RequestDispatcher rd=request.getRequestDispatcher("RoomBooking.jsp");
			rd.forward(request, response); */
			String str="Booking Successful!";
				%>
								
								<jsp:forward page="available1.jsp">
								<jsp:param name="str" value="<%=str %>"/>
								</jsp:forward>
				<%
			}//res else closing tag
}//result if
else{
				
				dd="select booking.start_date,booking.end_date from booking,room where room.rid=booking.rid and room.rno='"+rno+"'";
				stmt=con.createStatement();
				rs=stmt.executeQuery(dd);
				String st="";
				sdate=request.getParameter("sdate");
				edate=request.getParameter("edate");
				while(rs.next()){
						ed=rs.getDate("end_date");
						sd=rs.getDate("start_date");
						 stdate=new SimpleDateFormat("yyyy-MM-dd").parse(sdate);
					     eddate=new SimpleDateFormat("yyyy-MM-dd").parse(edate);	
					if(stdate.compareTo(ed)>0 || sd.compareTo(eddate)>0){
							r=true;
					}//date compare
					else{//date compare else
						
						r=false;
						break;
					}// compare else closing tag
				}//while closing tag
				if(r){
					
				 	statusupdate="update room set status='0' where rno='"+rno+"'";
					stmt=con.createStatement();
					stmt.executeUpdate(statusupdate);
					
					sql="select gid from guest where email='"+email+"' and password='"+pass+"'";
					stmt=con.createStatement();
					rs=stmt.executeQuery(sql);
					
					while(rs.next()){
					//String g=rs.getString("gid");
					gid=rs.getInt("gid");
					System.out.println("Guest Id by login user name  !!!! "+gid);
					}
					
					sql1="select rid from room where rno='"+rno+"'";
					stmt=con.createStatement();
					rs=stmt.executeQuery(sql1);
					while(rs.next()){
					//String r=rs.getString("rid");
					rid=rs.getInt("rid");
					System.out.println("Room Id by Room No ... "+rid);
					}
					
					sql3="insert into booking values(null,?,?,?,?)";
					PreparedStatement ps=con.prepareStatement(sql3);
					ps.setInt(1,gid);
					ps.setInt(2,rid);
					ps.setDate(3,java.sql.Date.valueOf(sdate));
					ps.setDate(4,java.sql.Date.valueOf(edate));
					ps.executeUpdate();
					
					
					String str="Booking Successful!";
					%>
					
					<jsp:forward page="available1.jsp">
					<jsp:param name="str" value="<%=str %>"/>
					<jsp:param value="<%=email %>" name="email"/>
					<jsp:param name="pass" value="<%=pass %>"/>
					
					</jsp:forward>
			<%
			}//r if
			else{//r else

				dd="select booking.start_date,booking.end_date from booking,room where room.rid=booking.rid and room.rno='"+rno+"'";
				stmt=con.createStatement();
				rs=stmt.executeQuery(dd);
				%>
				
				<%
						
				while(rs.next()){
						ed=rs.getDate("end_date");
						sd=rs.getDate("start_date");
						out.print("<br><i class='ms'>You can't check-in "+rno+" between "+sd+"and"+ed+"</i>");
				}
				out.print("<br><i class='ms'>You can check-in the following rooms!</i>");
				
				stdate=new SimpleDateFormat("yyyy-MM-dd").parse(sdate);
			    eddate=new SimpleDateFormat("yyyy-MM-dd").parse(edate);
			    System.out.println("user start date"+stdate);
				System.out.println("user end date"+eddate);
				
				available="select rid,start_date,end_date from booking";
				stmt=con.createStatement();
				rs=stmt.executeQuery(available);
				while(rs.next()){
					rid=rs.getInt("rid");
					ed=rs.getDate("end_date");
					sd=rs.getDate("start_date");
					//System.out.println("table end date"+ed);
					//System.out.println("table start date"+sd);
					
					if(stdate.compareTo(ed)>0 || eddate.compareTo(sd)<0){
					 	statusupdate="update room set status='1' where rid="+rid;
						stmt=con.createStatement();
						stmt.executeUpdate(statusupdate);
						System.out.println("update successful");
					}
				}
				
				available="select typename from roomtype where rtypeid in (select rtypeid from room where room.rno='"+rno+"')";
				stmt=con.createStatement();
				rs=stmt.executeQuery(available);
				String typename="";
				while(rs.next()){
					typename=rs.getString("typename");
				}
				available="select room.rno,roomtype.typename,roomtype.price,room.rid from room,roomtype where room.rtypeid=roomtype.rtypeid and room.status='1' and roomtype.typename='"+typename+"'";
				//available="select room.rno,roomtype.price from room,roomtype where room.rtypeid=roomtype.rtypeid and room.status=1 and roomtype.typename='"+typename+"'";
				stmt=con.createStatement();
				rs=stmt.executeQuery(available);
				
				
				//available room retrieve
				%>	
					<table border="1" width="500" height="100" bgcolor="silver">
					<tr>
					<th class="th">Room_No</th>
					<th class="th">Room_Type</th>
					<th class="th">Price</th>
					<th class="th">Booking</th>
					</tr>
			<% 
					while(rs.next()){
			%>
						<tr>
						<td class="td"><%=rs.getString("rno") %></td>
						<td class="td"><%=rs.getString("typename") %></td>
						<td class="td"><%=rs.getInt("price") %></td>
						<td><a href="bookingForm.jsp?rid=<%=rs.getInt("rid") %>">Booking</a></td>
						</tr>
				<%
					} 
				%>
					</table>
					
	<%}//r else
	}//result else
}//cur compare stdate
else{//cur compare else
	String str="You can't check-in cause of your date out.<br> Please try again!";
	

%><jsp:forward page="available1.jsp">
	<jsp:param name="str" value="<%=str %>"/>
	</jsp:forward>
<%} %>
	</td>
	</tr>
	</table>	
</body>
</html>