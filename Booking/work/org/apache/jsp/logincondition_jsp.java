/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.26
 * Generated at: 2018-11-17 14:19:02 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class logincondition_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<style>#h{color:red;margin:top;}\r\n");
      out.write("\r\n");
      out.write(".btn{\r\n");
      out.write("height:35px;\r\n");
      out.write("width:90px;color:red;\r\n");
      out.write("font-size:20px;}\r\n");
      out.write("input.txt{\r\n");
      out.write("\r\n");
      out.write("height:20px;\r\n");
      out.write("width:160px;}\r\n");
      out.write("a{\r\n");
      out.write("font-size:17pt;\r\n");
      out.write("color:blue;\r\n");
      out.write("font-weight:bold;}\r\n");
      out.write(".t{\r\n");
      out.write("color:black;\r\n");
      out.write("font-size:20pt;\r\n");
      out.write("margin-bottom:39px;}\r\n");
      out.write("body{\r\n");
      out.write("background-image:url('IMG_20181114_143706.jpg');\r\n");
      out.write("\r\n");
      out.write("width:100%;\r\n");
      out.write("height:50%;}\r\n");
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
      out.write("h2{\r\n");
      out.write("color:#0000FF;\r\n");
      out.write("font-weight:bold;\r\n");
      out.write("margin:top;\r\n");
      out.write("font-size:30pt;\r\n");
      out.write("text-align:right;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("h1{\r\n");
      out.write("margin:top;\r\n");
      out.write("\tcolor:tomato;\r\n");
      out.write("\ttext-align:center;\r\n");
      out.write("\tfont-family: 'Oleo Script', cursive;;\r\n");
      out.write("\tfont-size:60pt;\r\n");
      out.write("\ttext-shadow:5px 5px 5px green;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");

String name=request.getParameter("name");
String pass=request.getParameter("pass");
System.out.println(name);
System.out.println(pass);
session.setAttribute("name",name);
session.setAttribute("pass",pass);
boolean result=false;
Connection con;
Statement stmt;
ResultSet rs;

	Class.forName("com.mysql.jdbc.Driver");
	
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group8","root","mic1");
		System.out.println("Connection Successful!");
		
		String sql="select * from guest where name='"+name+"'and password='"+pass+"'";
		stmt=con.createStatement();
		rs=stmt.executeQuery(sql);
		while(rs.next()){
			result=true;
		}
		if(result){
			
      out.write("\r\n");
      out.write("\t\t\t ");
      if (true) {
        _jspx_page_context.forward("/booking.jsp" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("name", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(name ), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("pass", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(pass ), request.getCharacterEncoding()));
        return;
      }
      out.write("\r\n");
      out.write("\t\t\t");

			 /* RequestDispatcher rd=request.getRequestDispatcher("booking.jsp");
			rd.forward(request, response);  */
		}else{
			
			
      out.write("\r\n");
      out.write("<table border=\"0\" width=\"100%\" height=\"400px\" >\r\n");
      out.write("<h1 align=\"center\" >Online Hotel Booking System</h1>\r\n");
      out.write("<tr><td></td>\r\n");
      out.write("<td align=\"right\">\r\n");
      out.write("\t<form action=\"logincondition.jsp\"  method=\"get\">\r\n");
      out.write("\t<h2>Login Failed,Please try again!</h2>\r\n");
      out.write("\t<table border=\"0\" id=\"t2\" align=\"right\">\r\n");
      out.write("\t<tr><td class=\"t\">User Name:</td><td><input type=\"text\" name=\"name\" class=\"txt\"/></td></tr>\r\n");
      out.write("\t<tr><td class=\"t\">Password:</td><td><input type=\"password\" name=\"pass\" class=\"txt\"/></td></tr>\r\n");
      out.write("\t<tr><td class=\"t\"><br><input type=\"reset\" value=\"Cancel\" class=\"btn\"/></td>\r\n");
      out.write("\t<td class=\"t\"><br><input type=\"submit\" value=\"Login\" class=\"btn\"/></td></tr>\r\n");
      out.write("\t<tr><td align=\"right\"></td>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td align=\"right\">\r\n");
      out.write("\t<br><a href=\"forget.jsp\">Forget Password</a>&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t</td><td>\r\n");
      out.write("\t<br><a href=\"home.html\"> Go Back Home </a>\r\n");
      out.write("\t</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t</table>\r\n");
      out.write("\t</form>\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t");

		}

      out.write("\r\n");
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
