<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Online Voting System</title>
<style>
body{
background-image: url(images/images.jpg);;

 background-position: center;
    background-repeat: no-repeat;
    background-size: cover;

}
.a{
height:25%;
width:100%;
background:linear-gradient(-225deg,orange,white,green);
display:table;
}
.d{
color:black;
text-align:center;
display:table-cell;
vertical-align:middle;
font-size:77px;
}
.b{
width:100%;
height:50%;
}
.e{
color:white;
text-align:center;
display:table-cell;
vertical-align:middle;
font-size:15px;
}

.c{
width:100%;
height:17%;
display:table;
background:black;
}

.z{
background-color:white; 
color:black;
border-color:orange; 
width:200px; 
height:40px;
}
.z:hover{
background-color:gray; 
color:white; 
border-color:green; 
width:200px; 
height:40px;
}

.x{
font-size:30px;
text-align:center;
}
</style>
<script>
	//back button prevention code..
	
</script>
</head>
<body>
<div align="center">
			<font color='white' size='2pxl'>
<%

	//reading current logged in user aadhar
	String aaid=(String)session.getAttribute("userId");
	session.setAttribute("uid",aaid);
	 String msg=request.getParameter("errMessage");
	 if(msg!=null){
	 	if(msg.equals("voting_err"))
	 						out.println("YOU HAVE VOTED ONCE");
	 }
%></font>
		</div>
<div class="a"> <p class="d">Online Voting System</p></div>
	<!-- 	<input type='hidden' name='uid' value='"+uid+"'>
	 -->
	


<P class="x"><b>Give your vote who deserve it</b></p>
<div class="b">
<form action="voter" method="post" >
<table border="1" align="center" width="80%" cellpadding="4" cellspacing="2">
<tr>
<td width="10" align="center">S.No</td>
<td width="70%" align="center">Party Name</td>
<td width="17%" align="center">Button</td>
<td width="17%" align="center">Logo</td>

</tr>

<tr>
<td width="10" align="center">1</td>
<td width="70%" align="center">Bhartiya Janta Party (BJP)</td>
<td width="17%" align="center"><input type="radio" value="BJP" name="P"></td>
<td width="70%" align="center"><img src="bjp.jpg"height="50" width="50"></td>
</tr>

<tr>
<td width="10" align="center">2</td>
<td width="70%" align="center">Aam Adami Party (AAM)</td>
<td width="17%" align="center"><input type="radio" value="AAM" name="P"></td>
<td width="70%" align="center"><img src="aap.png"height="50" width="50"></td>
</tr>

<tr>
<td width="10" align="center">3</td>
<td width="70%" align="center">Congress</td>
<td width="17%" align="center"><input type="radio" value="CON" name="P"></td>
<td width="70%" align="center"><img src="cong.jpg"height="50" width="50"></td>
</tr>

<tr>
<td width="10" align="center">4</td>
<td width="70%" align="center">Bahujan Samaz Party (BSP)</td>
<td width="17%" align="center"><input type="radio" value="BSP" name="P"></td>
<td width="70%" align="center"><img src="bsp.jpg"height="50" width="50"></td>
</tr>

<tr>
<td width="10" align="center">5</td>
<td width="70%" align="center">Bahujan Vikas Party (BVP)</td>
<td width="17%" align="center"><input type="radio" value="BVP" name="P"></td>
<td width="70%" align="center"><img src="bvp.jpg"height="50" width="50"></td>
</tr>

<tr>
<td width="10" align="center">6</td>
<td width="70%" align="center">None</td>
<td width="17%" align="center"><input type="radio" value="NONE" name="P"></td>
<td width="70%" align="center"><img src="nota.png"height="50" width="50"></td>
</tr>
</table>
<br><br>
<center><input type="submit" value="Submit" class="z"></center>
</form>
</div>
<br><br>
<div class="c"><p class="e">All Right Reserved 2018-2019<br>Created by Prashant Kushwaha<br>&Vipul<font color="black">Vipul</font></p></div>
</body>
</html>