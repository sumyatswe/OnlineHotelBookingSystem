/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.26
 * Generated at: 2019-08-21 04:15:16 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class update1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("      \r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"design.css\">\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("\r\n");
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
      out.write("}\r\n");
      out.write("a:hover{\r\n");
      out.write("color:red;\r\n");
      out.write("background-color:transparent;\r\n");
      out.write("}\r\n");
      out.write("a:active{\r\n");
      out.write("color:blue;\r\n");
      out.write("background-color:transparent;\r\n");
      out.write("}\r\n");
      out.write("body{\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write(".txt{\r\n");
      out.write("height:20px;\r\n");
      out.write("width:160px;}\r\n");
      out.write(".td{\r\n");
      out.write("font-size:20pt;\r\n");
      out.write("font-weight:bold;\r\n");
      out.write("color:black;\r\n");
      out.write("}\r\n");
      out.write(".btn{\r\n");
      out.write("height:35px;\r\n");
      out.write("width:90px;color:black;\r\n");
      out.write("font-size:20px;}\r\n");
      out.write("h1{\r\n");
      out.write("margin:top;\r\n");
      out.write("\t\r\n");
      out.write("\ttext-align:center;\r\n");
      out.write("\tfont-family: 'Oleo Script', cursive;;\r\n");
      out.write("\tfont-size:50pt;\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write(".info{font-size:25pt;\r\n");
      out.write("color:black;}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"calendar/zapatec/zpcal/themes/wood.css\" />\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"calendar/zapatec/zpcal/utils/zapatec.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"calendar/zapatec/zpcal/src/calendar.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"calendar/zapatec/zpcal/lang/calendar-en.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<table border=\"0\" width=\"100%\" height=\"100%\">\r\n");
      out.write("<tr>\r\n");
      out.write("\t<h1 align=\"center\" >Online Hotel Booking System</h1>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("\t<td class=\"link\">\r\n");
      out.write("\t\r\n");
      out.write("\t<a href=\"available1.jsp\">View Available Rooms</a><br><br>\r\n");
      out.write("\t<a href=\"bookingForm.jsp\">Check-in Rooms</a><br><br>\r\n");
      out.write("\t\r\n");
      out.write("\t<a href=\"review.jsp\">Review  Booking</a><br><br>\r\n");
      out.write("\t<a href=\"logout.jsp\">Logout</a><br><br>\r\n");
      out.write("\t\r\n");
      out.write("\t</td>\r\n");
      out.write("\t<td align=\"right\">\r\n");

String b=request.getParameter("bid");
int bi=Integer.parseInt(b);
int bid=0;
int gid=0;
int rid=0;
String n="";
String rno="";
Date stdate=null;
Date eddate=null;
Date sd=null;Date ed=null;
System.out.println("bid="+b);
session.setAttribute("bid",b);

String email=(String)session.getAttribute("email");
		String pass=(String)session.getAttribute("pass");
		session.setAttribute("email",email);
		session.setAttribute("pass",pass);
		
		Connection con;
		Statement stmt;
		ResultSet rs;
		String sql;
		
		Class.forName("com.mysql.jdbc.Driver");
		
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group8","root","root");
		System.out.println("Connection Successful!");
		
		sql="select guest.name,room.rno,booking.start_date,booking.end_date from booking,room,guest where booking.gid=guest.gid and booking.rid=room.rid and booking.bid="+bi;
		stmt=con.createStatement();
		rs=stmt.executeQuery(sql);
		while(rs.next()){
			n=rs.getString("name");
			rno=rs.getString("rno");
			sd=rs.getDate("start_date");
			ed=rs.getDate("end_date");
		}
		session.setAttribute("startdate",sd.toString());
		session.setAttribute("enddate",ed.toString());
		System.out.println("Startdate"+sd);
		System.out.println("Enddate"+ed);
	
      out.write("\r\n");
      out.write("\t<form action=\"update.jsp\">\r\n");
      out.write("<i class=\"info\">Change Your Booking Information</i>\r\n");
      out.write("<table border=\"0\" >\r\n");
      out.write("\r\n");
      out.write("<br><br><br><tr><td class=\"td\">Room No</td><td><input type=\"text\" name=\"rno\" value=\"");
      out.print(rno);
      out.write("\" class=\"txt\"></td></tr>\r\n");
      out.write("<tr><td class=\"td\"><label for=\"date\">Start Date:</label></td><td>\r\n");
      out.write("\t\t\t\t<input type=\"text\" name=\"sdate\" maxlength=\"400\"\tsize=\"15\"   \r\n");
      out.write("\tvalue=\"");
      out.print(sd );
      out.write("\" class=\"txt\" style=\"background-color: rgb(255, 255, 160);\" readonly=\"readonly\" id=\"calendar\">\r\n");
      out.write("\t\t\t\t\t<button id=\"trigger\">...</button> \r\n");
      out.write("\t\t\t\t\t<script type=\"text/javascript\">\r\n");
      out.write("\t\t\t\t\t\t\t\t//         \r\n");
      out.write("\t\t\t\t\t\t\t\tZapatec.Calendar.setup({\r\n");
      out.write("\t\t\t\t\t\t\t\t\tfirstDay : 1,\r\n");
      out.write("\t\t\t\t\t\t\t\t\telectric : false,\r\n");
      out.write("\t\t\t\t\t\t\t\t\tinputField : \"calendar\",\r\n");
      out.write("\t\t\t\t\t\t\t\t\tbutton : \"trigger\",\r\n");
      out.write("\t\t\t\t\t\t\t\t\tifFormat : \"%Y-%m-%d\",\r\n");
      out.write("\t\t\t\t\t\t\t\t\tdaFormat : \"%Y-%m-%d\"\r\n");
      out.write("\t\t\t\t\t\t\t\t});\r\n");
      out.write("\t\t\t\t\t\t\t\t//\r\n");
      out.write("\t\t\t\t\t\t\t</script>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("<tr><td class=\"td\"><label for=\"edate\">End Date:</label></td><td>\r\n");
      out.write("\t\t\t\t<input type=\"text\" name=\"edate\" maxlength=\"400\"\tsize=\"15\"   \r\n");
      out.write("\t\tvalue=\"");
      out.print(ed );
      out.write("\" class=\"txt\" style=\"background-color: rgb(255, 255, 160);\" readonly=\"readonly\" id=\"calendar1\">\r\n");
      out.write("\t\t\t\t\t<button id=\"trigger1\">...</button> \r\n");
      out.write("\t\t\t\t\t<script type=\"text/javascript\">\r\n");
      out.write("\t\t\t\t\t\t\t\t//         \r\n");
      out.write("\t\t\t\t\t\t\t\tZapatec.Calendar.setup({\r\n");
      out.write("\t\t\t\t\t\t\t\t\tfirstDay : 1,\r\n");
      out.write("\t\t\t\t\t\t\t\t\telectric : false,\r\n");
      out.write("\t\t\t\t\t\t\t\t\tinputField : \"calendar1\",\r\n");
      out.write("\t\t\t\t\t\t\t\t\tbutton : \"trigger1\",\r\n");
      out.write("\t\t\t\t\t\t\t\t\tifFormat : \"%Y-%m-%d\",\r\n");
      out.write("\t\t\t\t\t\t\t\t\tdaFormat : \"%Y-%m-%d\"\r\n");
      out.write("\t\t\t\t\t\t\t\t});\r\n");
      out.write("\t\t\t\t\t\t\t\t//\r\n");
      out.write("\t\t\t\t\t\t\t</script></td></tr>\r\n");
      out.write("<tr><td><br><br><input type=\"reset\" value=\"Cancel\" name=\"cancel\" class=\"btn\"/></td>\r\n");
      out.write("\r\n");
      out.write("<td><br><br><input type=\"submit\" value=\"Confirm\" name=\"confirm\" class=\"btn\"/></td></tr>\r\n");
      out.write("</table>\r\n");
      out.write("</form>\r\n");
      out.write("\t\r\n");
      out.write("</td>\r\n");
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
