/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.26
 * Generated at: 2018-11-17 08:15:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class cancel_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<style>\r\n");
      out.write("a:link{\r\n");
      out.write("color:blue;\r\n");
      out.write("font-size:20pt;\r\n");
      out.write("}\r\n");
      out.write("a:visited{\r\n");
      out.write("font-size:20pt;\r\n");
      out.write("color:Navy;\r\n");
      out.write("background-color:transparent;\r\n");
      out.write("font-weight:bold;\r\n");
      out.write("}\r\n");
      out.write("a:hover{\r\n");
      out.write("color:red;\r\n");
      out.write("background-color:transparent;\r\n");
      out.write("}\r\n");
      out.write("a:active{\r\n");
      out.write("color:blue;\r\n");
      out.write("background-color:transparent;\r\n");
      out.write("}\r\n");
      out.write("h1{\r\n");
      out.write("margin:top;\r\n");
      out.write("\tcolor:tomato;\r\n");
      out.write("\ttext-align:center;\r\n");
      out.write("\tfont-family: 'Oleo Script', cursive;;\r\n");
      out.write("\tfont-size:60pt;\r\n");
      out.write("\ttext-shadow:5px 5px 5px green;}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("body{\r\n");
      out.write("background-image:url('hotel_room_bed_furniture_luxury_70053_1680x1050.jpg');\r\n");
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
      out.write("\t.txt{\r\n");
      out.write("height:20px;\r\n");
      out.write("width:160px;}\r\n");
      out.write(".td{font-size:20pt;color:blue;font-weight:bold;}\r\n");
      out.write(".btn{\r\n");
      out.write("height:35px;\r\n");
      out.write("width:90px;color:red;\r\n");
      out.write("font-size:20px;}\r\n");
      out.write("#tr{font-size:27pt;\r\n");
      out.write("color:red;}</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<table border=\"0\" width=\"100%\" height=\"100%\">\r\n");
      out.write("<tr>\r\n");
      out.write("\t<h1 align=\"center\" >Online Hotel Booking System</h1>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("\t<td class=\"link\">\r\n");
      out.write("\t<a href=\"RoomBooking.jsp\">View Rooms</a><br><br>\r\n");
      out.write("\t<a href=\"available.jsp\">View Available Rooms</a><br><br>\r\n");
      out.write("\t<a href=\"bookingForm.jsp\">Check-in Rooms</a><br><br>\r\n");
      out.write("\t\r\n");
      out.write("\t<a href=\"cancel1.jsp\">Cancel Booking</a><br><br>\r\n");
      out.write("\t<a href=\"review.jsp\">Review  Booking</a><br><br>\r\n");
      out.write("\t<a href=\"home.html\">Home</a>\r\n");
      out.write("\t</td>\r\n");
      out.write("\t<td align=\"right\">\r\n");
 
Connection con;
Statement stmt;
ResultSet rs;
String sql="";
int r=0;int g=0;int b=0;

		Class.forName("com.mysql.jdbc.Driver");
		
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group8","root","mic1");
			System.out.println("Connection Successful!");
			String del=request.getParameter("del");
			if(del!=null){
			int bid=Integer.parseInt(request.getParameter("bid"));
			String rno=request.getParameter("rno");
			
			//sql="select booking.bid,room.rid,guest.gid from guest,room,booking where guest.gid=booking.gid and room.rid=booking.rid and guest.nrc='"+nrc+"' and room.rno='"+rno+"'";
			
			/*
			stmt=con.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()){
				b=rs.getInt("bid");
				r=rs.getInt("rid");
				g=rs.getInt("gid");
				System.out.println(b);
				System.out.println(r);
				System.out.println(g);
				
				 String sql1="delete from booking where rid=? and gid=? and bid=?";
				PreparedStatement pst=con.prepareStatement(sql1);
				pst.setInt(1,r);
				pst.setInt(2,g);
				pst.setInt(3,b);
				pst.executeUpdate();
				 	sql="update room set status=1 where rid="+r;
					stmt=con.createStatement();
					stmt.executeUpdate(sql);
					 sql="select gid from booking rid="+r;
					stmt=con.createStatement();
					rs=stmt.executeQuery(sql);
					while(rs.next()){
					g=rs.getInt("gid");
					System.out.println(g);
			} 
			*/
			sql="delete from booking where bid="+bid;
			stmt=con.createStatement();
			stmt.executeUpdate(sql);
			
			out.println("<h2>Your Cancellation Is Successful For Room Number "+rno+"<h2>");
			
			}else{

      out.write("\t\t\t\r\n");
      out.write("<h2 align=\"left\" id=\"tr\">Cancel Your Booking Information</h2>\r\n");
      out.write("\t\t\t<!-- <table align=\"left\">\r\n");
      out.write("\t\t\t<form action=\"cancel.jsp\">\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<tr><td class=\"td\">Enter your Booking Id:</td><td><input type=\"text\" name=\"bid\" class=\"txt\" ></td></tr> \r\n");
      out.write("\t\t\t<tr><td class=\"td\">Enter your Rno:</td><td><input type=\"text\" name=\"rno\" class=\"txt\"></td></tr>\r\n");
      out.write("\t\t\t<tr><td colspan=\"2\" align=\"right\"><input type=\"submit\" value=\"Delete\" name=\"del\" class=\"btn\"></td></tr>\r\n");
      out.write("\t\t\t</form>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t\t-->\r\n");
      out.write("\t\t\t");

			}
		
      out.write("\r\n");
      out.write("\t\t</td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
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
