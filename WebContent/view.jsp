<%@page import="java.sql.*" %>
<%@page import="com.MyDb"%>

<html><style>
body{
background-image: url(images/maxresdefault.jpg);
background-position: center;
    background-repeat: no-repeat;
    background-size: cover;}
    a:hover {
     background-color: red;
    color: white;
    }
    table{
     width: 80%;
     height:50px;
     font:italic bold 20px/40px Georgia, serif;
     font-align:center;
     }
     
     th,td{
     height: 70px;
         text-align:center;
     }
</style><body>
<%
Connection con = MyDb.getCon();
String command="select * from votes_table1";
PreparedStatement stmt=con.prepareStatement(command);
ResultSet rs=stmt.executeQuery();
 %>


 	<div align='right'>
 		<font color='white'><font size='5pxl'>
			<b>
			<%="Welcome, "+(String)session.getAttribute("userId")%>
			</b>
		</font><br>
		<a href='index.jsp'><font size='5pxl'style="background-color: #f44336";>Logout</font></a>
	</div>
 	<div align='center'><table style="background-color:black">
 		<tr><th bgcolor='#88ff4d'>Party ID </th><th bgcolor='#88ff4d'>Party Name</th><th bgcolor='#88ff4d'>Vote Count</th></tr>
 <%
  while(rs.next()){
	out.println("<tr bgcolor='#cc33ff'>");
	out.println("<td>"+rs.getString(1)+"</td>"+"<td>"+rs.getString(2)+"</td>"+"<td>"+rs.getString(4)+"</td>");
	//out.println("<td><a href='deleteSrv?id="+rs.getString(1)+"'>delete"+"</a></td>");
	out.println("</tr>");
  }
%>
</table></div></body></html>