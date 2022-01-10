<html>
<head>
<title>a</title>
<style>

body{
margin:0;
padding:0;
background:#262626;
font-family:arial;

}
.loader{
position:absolute;
top:50%;
left:50%;
transform:translate(-50%,-50%);
}
.loader p{
margin:0;
padding:0;
text-transform:uppercase;
font-size:5em;
color:rgba(225,255,255,.1);
background-image: url(images/img.jpg);
background-repeat: repeat-x;
-webkit-background-clip:text;
animation:animate 10s linear infinite

}
a{
position:absolutt;
top:100%;
left:100%;
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
@keyframes animate{
0%{
background-position:left 0px top 80px;
}
40%{
background-position:left 800px top -50px;
}
80%{
background-position:left 1800px top -50px;
}
100%{
background-position:left 2400px top 80px;
}
}
</style>
</head>
<body>

<br><br><br><br><br><br><br><br><br>
<div class="loader"> <a href="index.jsp">Home</a> 
<center>
<p class="v1">Thank You</p><br>
<p class="v2">For</p><br>
<p class="v3">Voting</p></center>
</div>

</body>
</html>