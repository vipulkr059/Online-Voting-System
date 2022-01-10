/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
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
public class Password extends HttpServlet {

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
           String voter_card_number = request.getParameter("voter_card_number");
           
           MyDb db = new MyDb();
           Connection con = db.getCon();
            try {
                Statement stmt = con.createStatement();
                
                //stmt.executeUpdate("insert into temp_voter_card_number(voter_card_number)values('"+voter_card_number+"')");
               // out.println("grt");
               ResultSet rs1= stmt.executeQuery("select voter_card_number from temp_voter_card_number where voter_card_number = '"+voter_card_number+"'");
               // out.println("grt");
               if(rs1.next()){
                 response.sendRedirect("votercheck.jsp?name="+voter_card_number);
               out.println("You already voted........"+rs1.getString("voter_card_number"));
               }else{
               
                ResultSet rs =stmt.executeQuery("select uid,contact from voter_register where voter_card_number = '"+voter_card_number+"'");
               //out.println(voter_card_number);
                if(rs.next()){
                    String contact = rs.getString("contact");
                    response.sendRedirect("password.jsp?con="+contact);
                    out.println(contact);
                }else{
                    out.println("Please enter valid card number");
                }
               }
            } catch (SQLException ex) {
                Logger.getLogger(Password.class.getName()).log(Level.SEVERE, null, ex);
            }
           
           
           
           
          
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
