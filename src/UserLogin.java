import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
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


@WebServlet("/useraction")
public class UserLogin extends HttpServlet {
	
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException{
		
		 try (PrintWriter out = res.getWriter()) {
			 String aadhar=req.getParameter("aadhar");
		String password=req.getParameter("password");
		String pass=MD5(password);
	
		


	 MyDb db = new MyDb();
		Connection con = db.getCon();	
		PreparedStatement pst=con.prepareStatement("select count(*) from voter_register where aadhar=? and password=?");
		pst.setString(1,aadhar);
		pst.setString(2, pass);
		
		ResultSet rs=pst.executeQuery();
		if(rs.next()){
			int i=rs.getInt(1);
			if(i==1) {

			out.println("********thanks for registration********");
			
			res.sendRedirect("vote.jsp");
			HttpSession hs=req.getSession();
			hs.setAttribute("userId", aadhar);
			}
			else {
				res.sendRedirect("index.jsp?errMessage=login");
			
		 }}}
			 catch (SQLException ex) {
		            Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
		        } 
			
	
			
		}
public static String MD5(String input){
	try{
	MessageDigest md = MessageDigest.getInstance("MD5");
	byte[] messageDigest = md.digest(input.getBytes());
	BigInteger number = new BigInteger(1,messageDigest);
	String hashtext=number.toString(16);
	while (hashtext.length()<15){
	hashtext="0"+ hashtext;
	}
	return hashtext;
	}catch (NoSuchAlgorithmException e){
	throw new RuntimeException(e);
	}
}}



			
	