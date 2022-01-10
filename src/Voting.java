import java.io.IOException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/voter")


public class Voting extends HttpServlet {
	private PreparedStatement pst1,pst2,ps,ps3;
	private ResultSet rs1,rs2;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try {
			processRequest(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
		HttpSession hs=request.getSession();
		String uid=(String)hs.getAttribute("uid");
		System.out.println("User Id : "+uid);
		String party = request.getParameter("P");
		String query="";
		String colName="";
		int id=0;
		Connection con = MyDb.getCon();
		//validation
		ps=con.prepareStatement("select count(*) from validation where userid=? ");
		ps.setString(1,uid);
		
		ResultSet rs=ps.executeQuery();
		
		
		if(rs.next()){
			int j=rs.getInt(1);
				if(j==1){
					response.sendRedirect("vote.jsp?errMessage=voting_err");
				}
				else {
		
		if(party.equals("BJP")){
			query="select voteCount from votes_table1 where partyid=101 ";
			colName="VOTECOUNT";
			id=101;
		}else if(party.equals("CON")) {
			query="select voteCount from votes_table1 where partyid=103 ";
			colName="VOTECOUNT";
			id=103;
		}
		else if(party.equals("BSP")) {
			query="select voteCount from votes_table1 where partyid=104 ";
			colName="VOTECOUNT";
			id=104;
		}
		else if(party.equals("BVP")) {
			query="select voteCount from votes_table1 where partyid=105 ";
			colName="VOTECOUNT";
			id=105;
		}
		else if(party.equals("AAM")) {
			query="select voteCount from votes_table1 where partyid=102 ";
			colName="VOTECOUNT";
			id=102;
		}else if(party.equals("NONE")) {
			query="select voteCount from votes_table1 where partyid=106 ";
			colName="VOTECOUNT";
			id=106;
		}
		System.out.println("Party id : "+id);
		//MyDb db = new MyDb();
		//	Connection con = MyDb.getCon();
        //  Statement stmt =  con.createStatement();
			//sql query execution to get last updated count of party vote
			pst1=con.prepareStatement(query);
			rs1=pst1.executeQuery();
			rs1.next();
			int i=rs1.getInt(1);
			System.out.println("Party count :before vote  "+i);
			i=i+1;
			System.out.println("Party count :after vote  "+i);
			//SQL query to insert updated count vote into table
			String qry="select partyid from votes_table1 where userId=?";
			// ps=con.prepareStatement(qry);
			 /*ResultSet rs=ps.executeQuery();
			if(rs.next()){
				int j=rs.getInt(1);
					if(j==1){
						response.sendRedirect("vote.jsp?errMessage=voter_err");
					}
					else { */
			ps3= con.prepareStatement("insert into validation values(?)");
			ps3.setString(1, uid);
			int result= ps3.executeUpdate();
			if(result>0) {
System.out.println("ho gya bhai");

			pst2= con.prepareStatement("update votes_table1 set "+colName+"=?, userid=? where partyid=?");
			
			pst2.setInt(1, i);
			pst2.setString(2, uid);
			pst2.setInt(3, id);
			int res=pst2.executeUpdate();
			if(res==1) {
				response.sendRedirect("votercheck.jsp");
			
			
			System.out.println("voting done for , "+party);
			
				/*ps3= con.prepareStatement("insert into validation values(?)");
				ps3.setString(1, uid);
				int result= ps3.executeUpdate();
				if(result>0) {
System.out.println("ho gya bhai");*/


				}
			
			}}}}}