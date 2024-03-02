<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    }
    .msg{
    	color:green;
    	font-size:25px;
		font-weight:900;
		margin-top:0px;
    }
</style>
</head>
<body class="background-image">
<div class="container">
<div class="msg">
<%
	session.invalidate();
	out.println("Logged out Successfully...<br>");
%>
</div>
<jsp:include page="Home.html"/>
</div>
</body>
</html>