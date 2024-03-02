<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="test.AdminBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BookStore</title>
<link rel="icon" href="image/logo.png"/>
<link rel="stylesheet" href="Register.css"/>
<style>
	.container{
		margin: auto;
        text-align: center;
        display: flex;
    	flex-direction: column;
    	align-items: center;
    	text-align:center;
    }
	.box{
		width:400px;
		height:40px;
		padding:30px;
        /*display: flex;
    	flex-direction: row;*/
    	text-align: center;
    	position:relative;
   	}
   	.link{
   		 width:400px;
   		 position: absolute;
         top: 40px; /* Adjust as needed */
         left: 50%;
         transform: translateX(-50%);
   	}
   	.belong{
    	font-size:25px;
		font-weight:900;
		margin-top:0px;
    }
</style>
</head>
<body class="background-image">
<div class="container">
<div class="belong">
<%
	AdminBean ab=(AdminBean)session.getAttribute("abean");
	out.println("Welcome Admin: <u>"+ab.getfName()+"</u><br><br>");
%>
</div>
<div class="box">
<div class="link">
<a href="Book.html">AddBookDetails</a> &nbsp;&nbsp;
<a href="view1">ViewAllBookDetails</a> &nbsp;&nbsp;
<a href="logout">Logout</a>
</div>
</div>
</div>
</body>
</html>