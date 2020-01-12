import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Registration extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String Name="";
		   
		   String Nrc="";
		  String Email="";
		   String Phone="";
		   String Add="";
		
		   Cookie[] cookies=req.getCookies();
		   if(cookies!=null){
			   for(Cookie ck:cookies){
				   if(ck.getName().equals("name"))
					   Name=ck.getValue();
				   
				   else if (ck.getName().equals("nrc"))
					   Nrc=ck.getValue();
				  
				   else if (ck.getName().equals("phoneno"))
					   Phone=ck.getValue();
				   else if (ck.getName().equals("address"))
					   Add=ck.getValue();
				   else if (ck.getName().equals("email"))
					  Email=ck.getValue();
	}

}
		   PrintWriter out=resp.getWriter();
		   out.println("<html>");
		   out.println("<head><style type='text/css'>"
		   		+ "h1{margin:top;"+
		   		"color:black;"+
		   		"text-align:center;"+
		   		"font-family: 'Oleo Script', cursive;"+
		   		"font-size:50pt;"+
		   		"text-shadow:5px 5px 5px #6C2DC7;"+
		   		
		   		"	}"	   		
		   		
		   		
		   		+ ".td{font-size:20pt;color:black;}"+
		   		"a{font-size:20pt;color:Navy;}"+"a:link{"+
		   			"color:blue;"+
		   		"font-size:20pt;}"+
		   		
		   		"a:visited{"+
		   		"font-size:20pt;"+
		   		"color:Navy;"+
		   		"background-color:transparent;"+
		   		"font-weight:bold;}"+
		   		"a:hover{"+
		   		"color:red;"+
		   		"background-color:transparent;}"+
		   		"a:active{"+
		   		"color:blue;"+
		   		"background-color:transparent;}"

		   		
		   		+ "body{background-color:white;"
		   		+"}"+ ".btn{"+"height:30px;"+"width:90px;"+
		   		"color:black;"+
		   		"font-size:20px;"+"}"+
		   		".info{color:black;font-size:18pt;}"+
		   		"input.txt{height:20px;width:160px;}"+
		   		"i{font-weight:bold;}"+
		   		"</style></head>");
		   out.println("<body><h1 align='center'>Online Hotel Booking System </h1>");
		  // out.println("<i class="info" align='right'>Please Enter Your Information</i>");
		   
		   out.println("<table border='0'>");
		   out.println("<tr><td align='left'><img width='500px' height='400px' src='hotel-595587__480.jpg'></td>");
		   out.println("<td align='right'>");
		   out.println("<font size=6 weight='80px'><bold><i>Please Enter Your Information</i><bold></font><br><br>");
		   out.println("<form action='re'  method='get'>");
		   out.println("<table border='0' align='right'>"+
"<tr><td class='td'>User Name:</td>"+"<td margin='bottom'><input type='text' name='name' value="+Name+"><br></td></tr>"+
"<tr><td class='td'>Password:</td>"+"<td><input type='password' name='pass' required='required'><br></td></tr>"+
"<tr><td class='td'>NRC:</td><td>"+"<input type='text' name='nrc' value="+Nrc+"><br></td></tr>"+
"<tr><td class='td'>Email:</td><td>"+"<input type='email' name='email' value="+Email+"><br></td></tr>"+
"<tr><td class='td'>Gender:</td><td class='td'>"+"<input type='radio' name='gender' value='male'>Male&nbsp;"+
"<input type='radio' name='gender' value='female'>Female<br></td></tr>"+
"<tr><td class='td'>Phone Number:</td><td><input type='tel' name='phoneno'value="+Phone+"><br></td></tr>"+
"<tr><td class='td'>Address:</td><td><input type='text' name='address' value="+Add+"><br></td></tr>"+
"<tr><td ><input type='reset' value='Cancel' class='btn'></td>"+
"<td><input type='submit' value='Register' class='btn'></td></tr>"+
"<tr><td colspan='2' align='left'><br><a href='Login.jsp' align='left'> Go Back Home</a></td></tr></table>");
		   out.println("</td></tr></table>");
		   
	}}

