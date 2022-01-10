import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/Login")

public class Admin extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException{
		
		 try (PrintWriter out = res.getWriter()) {
			 String admin=req.getParameter("email");
		String password=req.getParameter("pass");
	
		


//MyDb db = new MyDb();
		Connection con = MyDb.getCon();
	 PreparedStatement pst=con.prepareStatement("select count(*) from admin_login where adminId=? and password=?");
		pst.setString(1,admin);
		pst.setString(2, password);
		
		ResultSet rs=pst.executeQuery();
		if(rs.next()){
			int i=rs.getInt(1);
			if(i==1) {

			
			res.sendRedirect("adminlogin.jsp");
			HttpSession hs=req.getSession();
			hs.setAttribute("userId", admin);}
			else {
				res.sendRedirect("login.jsp?errMessage=adlogin");
		 }}}
			 catch (SQLException ex) {
		            Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
		        } 
			
	
			
		}}		
			
	


