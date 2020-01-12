import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;

public class RegistrationServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		resp.setContentType("text/html");
		PrintWriter out=resp.getWriter();
		boolean isMissingValue=false;
		boolean result=true;
		Connection con;
		Statement stmt;
		ResultSet rs;

		
		String name=req.getParameter("name");
		if(name.equals("") || name.equals("Missing_Name"))
		{
			name=new String ("Missing_Name");
			isMissingValue=true;
			
		}
		String pwd=req.getParameter("pass");
		String nrc=req.getParameter("nrc");
		if(nrc.equals("") || nrc.equals("Missing_NRC"))
		{
			nrc=new String ("Missing_NRC");
			isMissingValue=true;
			
		}
		HttpSession ses=req.getSession(true);
		ses.setAttribute("nrc", nrc);
		String email=req.getParameter("email");
		if(email.equals("") || email.equals("Missing_Email"))
		{
			email=new String ("Missing_Email");
			isMissingValue=true;
			
		}
		String phno=req.getParameter("phoneno");
		if(phno.equals("") || phno.equals("Missing_Phone Number"))
		{
			phno=new String ("Missing_Phone Number");
			isMissingValue=true;
			
		}
		String add=req.getParameter("address");
		if(add.equals("") || add.equals("Missing_Address"))
		{
			add=new String ("Missing_Address");
			isMissingValue=true;
			
		}
		Cookie c1=new Cookie("name",name);
		c1.setMaxAge(60);
		resp.addCookie(c1);
		
		
		Cookie c3=new Cookie("nrc",nrc);
		c3.setMaxAge(60);
		resp.addCookie(c3);
		Cookie c4=new Cookie("email",email);
		c4.setMaxAge(60);
		resp.addCookie(c4);
		Cookie c5=new Cookie("phoneno",phno);
		c5.setMaxAge(60);
		resp.addCookie(c5);
		Cookie c6=new Cookie("address",add);
		c6.setMaxAge(60);
		resp.addCookie(c6);
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group8","root","root");
				System.out.println("Connection Successful!");
				String str="select * from guest where name='"+name+"' and password='"+pwd+"'";
				stmt=con.createStatement();
				rs=stmt.executeQuery(str);
				while(rs.next()){
					result=false;
				}
				if(result){
					if(isMissingValue){
						resp.sendRedirect("./register");
					}
					else{
						
						   String gender=req.getParameter("gender");
						   

							   	try {
									Class.forName("com.mysql.jdbc.Driver");
									
										con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group8","root","root");
										System.out.println("Connection Successful!");
										String sql="insert into guest values(null,?,?,?,?,?,?,?,null)";
										PreparedStatement ps=con.prepareStatement(sql);
										ps.setString(1,name);
										ps.setString(2,phno);
										ps.setString(3,add);
										ps.setString(4,nrc);
										ps.setString(5,pwd);
										ps.setString(6,gender);
										ps.setString(7,email);
										ps.executeUpdate();
								} catch (ClassNotFoundException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								} catch (SQLException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
						RequestDispatcher rd=req.getRequestDispatcher("bookingForm.jsp");
						rd.forward(req, resp);
					}//isMissing else closing
				}//result if closing
				else{
					//out.println("<h2 class='ar'>You Have Already Registered!Please Login!</h2>");
					String warning="You Have Already Registered!Please Login!";
					HttpSession se=req.getSession(true);
					se.setAttribute("warning", warning);
					RequestDispatcher rqd=req.getRequestDispatcher("/Login.jsp");
					rqd.include(req,resp);
				}
				
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
	}//doGet closing

}//class closing
