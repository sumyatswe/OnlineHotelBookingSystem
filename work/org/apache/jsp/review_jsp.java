/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.26
 * Generated at: 2019-08-21 16:10:39 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class review_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("    \r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"design.css\">\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("a:link{\r\n");
      out.write("color:blue;\r\n");
      out.write("font-size:20pt;\r\n");
      out.write("}\r\n");
      out.write("a:visited{\r\n");
      out.write("font-size:20pt;\r\n");
      out.write("color:Navy;\r\n");
      out.write("background-color:transparent;\r\n");
      out.write("font-weight:bold;\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("a:hover{\r\n");
      out.write("color:red;\r\n");
      out.write("background-color:transparent;\r\n");
      out.write("}\r\n");
      out.write("a:active{\r\n");
      out.write("color:blue;\r\n");
      out.write("background-color:transparent;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("body{\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write(".btn{\r\n");
      out.write("color:red;\r\n");
      out.write("\twidth:80px;\r\n");
      out.write("\theight:30px;\r\n");
      out.write("\tfont-size:15px;}\r\n");
      out.write("\t.td{\r\n");
      out.write("\tcolor:DarkSlateGrey;\r\n");
      out.write("\tfont-size:17px;\r\n");
      out.write("\tfont-weight:bold;}\r\n");
      out.write("\th1{\r\n");
      out.write("margin:top;\r\n");
      out.write("\t\r\n");
      out.write("\ttext-align:center;\r\n");
      out.write("\t\r\n");
      out.write("\tfont-size:50pt;\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write(".th{\r\n");
      out.write("background-color:#8E35EF;\r\n");
      out.write("font-weight:bold;\r\n");
      out.write("font-size:15pt;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write(".td{\r\n");
      out.write("font-size:15pt;\r\n");
      out.write("font-weight:bold;\r\n");
      out.write("color:black;\r\n");
      out.write("}\r\n");
      out.write(".info{font-size:25pt;\r\n");
      out.write("color:red;\r\n");
      out.write("}\r\n");
      out.write(".su{\r\n");
      out.write("font-size:20pt;\r\n");
      out.write("color:black;}\r\n");
      out.write(".sus{\r\n");
      out.write("font-size:30pt;\r\n");
      out.write("color:black;}\r\n");
      out.write("\t</style>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<table border=\"0\" width=\"100%\" height=\"100%\">\r\n");
      out.write("<tr>\r\n");
      out.write("\t<h1 align=\"center\" >Online Hotel Booking System</h1>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("\t<td class=\"link\">\r\n");
      out.write("\t<!-- <a href=\"RoomBooking.jsp\">View Rooms</a><br><br> -->\r\n");
      out.write("\t<a href=\"available1.jsp\">View Available Rooms</a><br><br>\r\n");
      out.write("\t<!--<a href=\"bookingForm.jsp\">Check-in Rooms</a><br><br>-->\r\n");
      out.write("\t\r\n");
      out.write("\t<!-- <a href=\"cancel1.jsp\">Cancel Booking</a><br><br> -->\r\n");
      out.write("\t<a href=\"review.jsp\">Review  Booking</a><br><br>\r\n");
      out.write("\t<a href=\"logout.jsp\">Logout</a><br><br>\r\n");
      out.write("\t\r\n");
      out.write("\t</td>\r\n");
      out.write("    <td align=\"right\">\r\n");

Connection con;
Statement stmt;
ResultSet rs;

	Class.forName("com.mysql.jdbc.Driver");
	
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group8","root","root");
		System.out.println("Connection Successful!");
		
		String email=(String)session.getAttribute("email");
		String pass=(String)session.getAttribute("pass"); 
		System.out.println(email);
		System.out.println(pass);
		session.setAttribute("email",email);
		session.setAttribute("pass",pass);
		
		String sql="select booking.bid,guest.name,room.rno,booking.start_date,booking.end_date from guest,room,booking where guest.gid=booking.gid and room.rid=booking.rid and guest.email='"+email+"'and guest.password='"+pass+"'";
		stmt=con.createStatement();
		rs=stmt.executeQuery(sql);
		String str=request.getParameter("str");
		
		if(str!=null){
				if(str=="Successful Update !")
				{
					
      out.write("\r\n");
      out.write("\t\t\t\t<i class=\"sus\" align=\"right\"> ");
      out.print( str);
      out.write("</i><br><br>\r\n");
      out.write("\t\t\t\t");

				}
				else{
				
      out.write("\r\n");
      out.write("\t\t\t\t<i class=\"su\" align=\"right\"> ");
      out.print( str);
      out.write("</i><br><br>\r\n");
      out.write("\t\t\t\t");

				}
			}else{
		
      out.write("\r\n");
      out.write("\t\t<i class=\"su\" align=\"left\" >Your Booking Information</i> <br><br>\r\n");
      out.write("\t\t");

			}
		
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<table border=\"1\" align=\"right\" bgcolor=\"silver\">\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<th class=\"th\">Guest Name</th>\r\n");
      out.write("\t\t<th class=\"th\">Room No</th>\r\n");
      out.write("\t\t<th class=\"th\">Start_Date</th>\r\n");
      out.write("\t\t<th class=\"th\">End_Date</th>\r\n");
      out.write("\t\t<th class=\"th\">Update</th>\r\n");
      out.write("\t\t<th class=\"th\">Cancel</th>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t");

		while(rs.next()){
			//System.out.println(rs.getString("guest.name"));
			//System.out.println(rs.getString("room.rno"));
			//System.out.println(rs.getString("sd"));
			//System.out.println(rs.getString("ed"));
			
			
      out.write("\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t");
      out.write("\r\n");
      out.write("\t\t\t<td class=\"td\">");
      out.print(rs.getString("name") );
      out.write("</td>\r\n");
      out.write("\t\t\t<td class=\"td\">");
      out.print(rs.getString("rno") );
      out.write("</td>\r\n");
      out.write("\t\t\t<td class=\"td\">");
      out.print(rs.getDate("start_date") );
      out.write("</td>\r\n");
      out.write("\t\t\t<td class=\"td\">");
      out.print(rs.getDate("end_date") );
      out.write("</td>\r\n");
      out.write("\t\t\t<td><a href=\"update1.jsp?bid=");
      out.print(rs.getInt("bid") );
      out.write("\">Update</a></td>\r\n");
      out.write("\t\t\t<td><a href=\"cancelprocessing.jsp?bid=");
      out.print(rs.getInt("bid") );
      out.write("\">Cancel</a></td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t");

		}
		 
      out.write("\r\n");
      out.write("\t\t </table>\r\n");
      out.write("\t</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("</table>\r\n");
      out.write("\t\t \r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
