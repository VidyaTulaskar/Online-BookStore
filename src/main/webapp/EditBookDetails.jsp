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
		width:170px;
		height:200px;
		padding:40px;
		margin-top:30px;
	}
	input{
		margin-bottom: 1px;
	}
	 .error {
        color:red;
  		display: inline-block;
  		font-size: 14px;
  		line-height: 15px;
  		margin: 2px 0 0;
        font-family: Helvetica, Arial, sans-serif;
        font-weight: normal;
    }
</style>
</head>
<body class="background-image">
<div class="container">
<div class="belong">
<%
	AdminBean ab=(AdminBean)session.getAttribute("abean");
	BookBean bb=(BookBean)request.getAttribute("bbean");
	out.println("Page belongs to: <u>"+ab.getfName()+"</u><br>");
%>
</div>
<div class="box">
<form action="update" method="post">
	<input type="hidden" name="bcode" value=<%=bb.getCode()%>>
	BookPrice: <input type="text" name="bprice" id="price" value=<%=bb.getPrice() %>><br>
	<span id="priceError" class="error"></span><br>
	BookQty: <input type="text" name="bqty" id="qty" value=<%=bb.getQty() %>><br>
	<span id="qtyError" class="error"></span>
	<br><br><input type="submit" value="UpdateBookDetails" id="submitButton" disabled>
</form>
</div>
</div>
<script>
    document.getElementById('price').addEventListener('input', validatePrice);
    document.getElementById('qty').addEventListener('input', validateQty);

    function validatePrice() {
        var price = document.getElementById('price').value;
        var priceError = document.getElementById('priceError');
        if (isNaN(price)) {
            priceError.textContent = 'Price must be a number';
            document.getElementById('submitButton').disabled = true;
        } else {
            priceError.textContent = '';
            enableSubmitButton();
        }
    }

    function validateQty() {
        var qty = document.getElementById('qty').value;
        var qtyError = document.getElementById('qtyError');
        if (isNaN(qty)) {
            qtyError.textContent = 'Quantity must be a number';
            document.getElementById('submitButton').disabled = true;
        } else {
            qtyError.textContent = '';
            enableSubmitButton();
        }
    }

    function enableSubmitButton() {
        var priceError = document.getElementById('priceError').textContent;
        var qtyError = document.getElementById('qtyError').textContent;
        if (priceError === '' && qtyError === '') {
            document.getElementById('submitButton').disabled = false;
        }
    }
</script>
</body>
</html>