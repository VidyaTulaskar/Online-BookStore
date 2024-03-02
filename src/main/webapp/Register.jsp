<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" href="image/logo.png"/>
<link rel="stylesheet" href="Register.css"/>
<style>
	.container {
		margin: auto;
        display: flex;
    	flex-direction: column;
    	align-items: center;
     }
	.msg{
		color:green;
		font-size:20px;
		font-weight:600;
		margin-top:0px;
		margin-bottom:20px;
	}
</style>
</head>
<body class="background-image">
<div class="container">
	<div class="msg">
	<%
		String msg=(String)request.getAttribute("msg");
		out.println(msg);
	%>
	</div>
<jsp:include page="CustomerLogin.html"/>
</div>
</body>
</html>