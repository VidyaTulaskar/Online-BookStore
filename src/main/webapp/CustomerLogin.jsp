<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="test.CustomerBean"%>
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
	.belong{
		font-size:25px;
		font-weight:900;
		margin-top:0px;
	}
	.box{
		width: 250px;
		height: 20px;
		padding: 40px;
		text-align: center;
		margin-top:20px;
		position:relative;
	}
	.link{
   		 width:250px;
   		 position: absolute;
         top: 40px; /* Adjust as needed */
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
			out.println("Welcome Customer: <u>"+cb.getfName()+"</u><br>");
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