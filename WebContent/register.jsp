<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="js/validation.js"></script>
<link rel="stylesheet" href="css/style.css">
<style type="text/css">
body {
	background-image: none;
}
</style>
<title>REGISTER</title>
</head>
<body>
<div class="nav">
<a href="login.jsp">LOGIN </a>
<a href="register.jsp" class="active">REGISTER </a>
<a href="index.jsp" >HOME </a>
</div>
<center>
<h1>REGISTRATION</h1>
<form action="register" method="post" >
<table>
<tr><td><label>USERNAME :</label></td>
<td> <input type="text" name="username"/></td></tr>
<tr><td><label>EMAIL :</label></td>
<td> <input type="email" name="email"/></td></tr>
<tr><td><label>PHONE :</label> </td>
<td><input type="number" name="phone" id="phone" onchange="phonenum()" required/></td></tr>
<tr><td><label>GENDER :</label></td>
<td> <input type="radio" name="gender" value="male">MALE<input type="radio" name="gender" value="female">FEMALE</td></tr>
<tr><td><label>ADDRESS :</label> </td>
<td><textarea rows="3" cols="20" name="address"></textarea></td></tr>
<tr><td><label>PASSWORD :</label> </td>
<td><input type="password" name="password"/></td></tr>
<tr><td></td><td><input type="submit" value="REGISTER"></td></tr>
</table>
</form>
</center>
</body>
</html>