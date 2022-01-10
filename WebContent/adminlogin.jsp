<%--
	file name : adminAction.jsp
	@description : this jsp page is to show success page of admin.
--%>
<html>
<style>
body{
background-image: url(images/vote.png);;

 background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    }
    a{
 background-color: #f44336;
    color: white;
    font-size:15px;
font-family: Helvetica;
    color:black;
    }
    a:hover {
     background-color: red;
    color: white;
    }
    table{
      margin-top:315px;
      
   }

</style>
	<head>
		<title>online voting system</title>
	</head>
	<body>
	<div align='right'>
						<font color='white'>
							<b><font size='5pxl'>
								<%="Welcome, "+(String)session.getAttribute("userId")%>
							</b>
						</font><br>
						<a href='index.jsp'><font size='5pxl' style="background-color: #f44336";>LOGOUT</font></a>
					</div>
		<div align='center'>
			<table style="width:800">
			<tr>
				<td>
					<div align="center">
						
							<br>
								
								
								<a href="view.jsp"><font size='5pxl'style="background-color: #f44336";>SHOW RESULT</a></font>
								<br>
								
						</font>
					</div>
				</td>
					
			</tr>
		</table>
		</div>
		
	</body>
</html>