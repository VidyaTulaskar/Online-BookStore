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
        /*text-align: center;*/
        display: flex;
    	flex-direction: column;
    	align-items: center;
     }
	.box{
		width:200px;
		height:420px;
		margin:auto;
		padding:40px;
		margin-top:20px;
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
	CustomerBean cb=(CustomerBean)session.getAttribute("cbean");
	BookBean bb=(BookBean) request.getAttribute("bbean");
	out.println("Page belogs to: <u>"+cb.getfName()+"</u><br>");
%>
</div>
<div class="box">
<form action="modify" method="post">
	BookCode:<input type="text" name="code" value=<%=bb.getCode() %> readonly><br>
	BookName:<input type="text" name="name" value=<%=bb.getName() %> readonly><br>
	BookAuthor:<input type="text" name="author" value=<%=bb.getAuthor() %> readonly><br>
	BookPrice:<input type="text" name="price" value=<%=bb.getPrice() %> readonly><br>
	BookQuantity:<input type="text" name="qty" value=<%=bb.getQty() %> readonly><br>
	RequiredBook:<br><input type="number" name="rqty" min="1" max="<%=bb.getQty() %>"><br><br>
	<input type="submit" value="BuyBook">
</form>
</div>
</div>
</body>
</html>