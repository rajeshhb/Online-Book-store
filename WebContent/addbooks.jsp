<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/style.css">
<title>ADD BOOKS</title>
<style type="text/css">
body {
	background-image: none;
}
</style>
</head>
<body>
<div class="nav">
<a href="index.jsp">LOGOUT</a>
<a href="vieworder.jsp">VIEW ORDERS </a>
<a href="viewbooks.jsp">VIEW BOOKS </a>
<a href="#" class="active">ADD BOOKS </a>
</div>
<center>
<h1>ADD BOOKS</h1>
<form action="addbooks" method="post">
<table>
<tr><td><label>BOOKNAME :</label></td><td> <input type="text" name="bname"/></td></tr>
<tr><td><label>AUTHOR NAME :</label></td><td> <input type="text" name="aname"/></td></tr>
<tr><td><label>QUANTITY :</label> </td><td><input type="number" name="quantity"/></td></tr>
<tr><td><label>DESCRIPTION :</label> </td><td><textarea rows="3" cols="15" name="description"></textarea></td></tr>
<tr><td><label>PRICE :</label> </td><td><input type="number" name="price"/></td></tr>
<tr><td></td><td><input type="submit" value="ADD BOOK"></td></tr>
</table>
</form>
</center>
</body>
</html>