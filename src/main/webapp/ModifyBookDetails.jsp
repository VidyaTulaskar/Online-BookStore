<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="test.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BookStore</title>
<link rel="icon" href="image/logo.png"/>
<link rel="stylesheet" href="Register.css"/>
<style>
	.container {
		margin: auto;
        text-align: center;
        display: flex;
    	flex-direction: column;
    	align-items: center;
     }
	.box{
		width:250px;
		height:40px;
		padding:40px;
		text-align: center;
		margin-top:20px;
		position: relative;
	}
	.belong{
		color:black;
		font-size:25px;
		font-weight:900;
	}
	.msg{
		color:green;
		font-size:20px;
		font-weight:600;
		margin-top:20px;
	}
	.link{
   		 width:250px;
   		 position: absolute;
         top: 50px; /* Adjust as needed */
         left: 50%;
         transform: translateX(-50%);
   	}
</style>
</head>
<body class="background-image">
<div class="container">
<div class="belong">
<%
	CustomerBean cb=(CustomerBean)session.getAttribute("cbean");
	BookBean bb=(BookBean)request.getAttribute("bbean");
	String bp=(String)request.getAttribute("bp");
	String msg=(String)request.getAttribute("msg");
	out.println("Page belongs to: <u>"+cb.getfName()+"</u>");
%>
</div>
<div class="msg">
<%
	out.println("Total Amt paid: "+(bb.getPrice()*(Integer.parseInt(bp)))+"<br>");
	out.println(msg);
%>
</div>
<div class="box">
	<div class="link">
		<a href="view2">ViewAllBookDetails</a>&nbsp;&nbsp;
		<a href="logout">Logout</a>
	</div>
</div>
</div>
</body>
</html>