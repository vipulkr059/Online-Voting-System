/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Oops
 */
public class Register extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           String name = request.getParameter("name");
           String aadhar = request.getParameter("aadhar");
           String password = request.getParameter("password");
           String contact = request.getParameter("contact");
           String email = request.getParameter("email");
           String pass=MD5(password);
           
 System.out.println("");
         String s= "s";
         MyDb db = new MyDb();
         
         
          Connection con = db.getCon();
        //  Statement stmt =  con.createStatement();
			PreparedStatement pst= con.prepareStatement("insert into voter_register values(?,?,?,?,?)");
			pst.setString(1, name);
			pst.setString(2, contact);
			pst.setString(3, aadhar);
			pst.setString(4, email);
			pst.setString(5, pass);
			int result= pst.executeUpdate();
			PrintWriter out1= response.getWriter();
			if(result>0) {
				out1.println("********thanks for registration********");
				}
			response.sendRedirect("thanxreg.jsp?m="+s+"");
					out1.close();
					pst.close();
					con.close();



  
          // out.println("Data is inserted");
//stmt.execute("insert into voter_register(name,contact,aadhar,email,password)values('"+name+"','"+contact+"','"+aadhar+"','"+email+"','"+password+"')");
 
          out1.println("registration success");
       System.out.println("<script>alert('Register Success.')</script>");
         
           
        
        } catch (SQLException ex) {
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
    }




    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
