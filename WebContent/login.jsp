<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/style.css">
<title>LOGIN</title>
<style type="text/css">
body {
	background-image: none;
}
</style>
</head>
<body>
<div class="nav">
<a href="login.jsp" class="active">LOGIN </a>
<a href="register.jsp">REGISTER </a>
<a href="index.jsp" >HOME </a>
</div>
<center>
<h1>LOGIN</h1>
<form action="login" method="post">
<%
String message = request.getParameter("message");
if(message!=null){
	if(message.equalsIgnoreCase("invalid")){
%><h1>INVALID EMAIL ID OR PASSSWORD</h1>
<%} } %>
<table>
<tr><td><label>USERTYPE :</label></td>
<td><select name="usertype">
<option value="owner">owner</option>
<option value="user">user</option>
</select></td></tr>
<tr><td><label>EMAIL :</label></td><td> <input type="email" name="email"/></td></tr>
<tr><td><label>PASSWORD :</label> </td><td><input type="password" name="password"/></td></tr>
<tr><td></td><td><input type="submit" value="LOGIN"></td></tr>

</table>
</form>
</center>
</body>
</html>