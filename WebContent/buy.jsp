<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    int id=Integer.parseInt(request.getParameter("id"));
    String quantity=request.getParameter("qty");
    String price=request.getParameter("price");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="js/validation.js"></script>
<link rel="stylesheet" href="css/style.css">
<title>BUY</title>
<style type="text/css">
body {
	background-image: none;
}
</style>
</head>
<body>
<center>
<h1>ORDERS</h1>
<table>
<form action="buybook" method="post">
<input type="hidden" name="id" value="<%=id%>">
<input type="hidden" name="basequantity" id="basequantity" value="<%=quantity%>">
<input type="hidden" name="baseprice" id="baseprice" value="<%=price%>">
<tr>
<td><label>QUANTITY</label></td><td><input type="number" name="quantity" id="quantity" onchange="calprice()" required/></td>
</tr>
<tr>
<td><label>TOTALPRICE</label></td><td><input type="number" name="price" id="totalPrice" readonly="readonly"/></td>
</tr>
<tr>
<td></td><td><input type="submit" value="BUY"/></td>
</tr>
</form>
</table>
</center>
</body>
</html>