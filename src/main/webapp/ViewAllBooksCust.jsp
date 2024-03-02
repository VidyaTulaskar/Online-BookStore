<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="test.*,java.util.*"%>
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
	.danger{
		color:red;
		font-size:25px;
		font-weight:900;
		margin-top:20px;
	}
	.tableBox{
        margin-top: 10px;
    }
    table {
    	background-color: rgba(121, 176, 78, 0.264);
        border-collapse: collapse;
        width: 100%;
        height: 100%;
        border-radius: 8px;
    	overflow: hidden;
    	box-shadow: 0 0 30px rgba(0, 0, 0, 0.4);
    }
    table:hover{
    	background-color: rgba(121, 176, 78, 0.164);
    	box-shadow: 0 0 30px rgba(0, 0, 0, 0.9);
    }
     tr:hover {
    	background-color: #FFEFD5;
	}
    th, td {
        padding: 20px;
        text-align: left;
        /*border-bottom: 1px solid #ddd;*/
        border: 1px solid #ddd;
       	font-size: 17px;
       	font-family: Arial, sans-serif;
    }
	.box{
		width: 150px;
		height: 20px;
		padding: 30px;
		margin: auto;
		margin-top:20px;
		text-align:center;
	}
</style>
</head>
<body class="background-image">
<div class="container">
<div class="belong">
<%
	CustomerBean cb=(CustomerBean)session.getAttribute("cbean");
	ArrayList<BookBean> al=(ArrayList<BookBean>)session.getAttribute("alist");
	out.println("Page belongs to: <u>"+cb.getfName()+"</u><br>");
%>
</div>
<div class="danger">
<%
	if(al.size()==0)
	{
		out.println("Books Not Available...<br>");
	}
	else
	{
%>
</div>
<div class="tableBox">	
  <table>
        <tr>
            <th>Code</th>
            <th>Name</th>
            <th>Author</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Action</th>
        </tr>
<%
        Iterator<BookBean> it=al.iterator();
        while(it.hasNext())
        {
            BookBean bb=it.next();
%>
        <tr>
            <td><%= bb.getCode() %></td>
            <td><%= bb.getName() %></td>
            <td><%= bb.getAuthor() %></td>
            <td><%= bb.getPrice() %></td>
            <td><%= bb.getQty() %></td>
            <td><a href='buy?code=<%= bb.getCode() %>'>Buy</a></td>
        </tr>
<%
        }
    }
%>
    </table>
</div>
<div class="box">
<a href="logout">Logout</a>
</div>
</div>
</body>
</html>