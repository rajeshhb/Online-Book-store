<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbconnection.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    Dbconnection d = new Dbconnection();
    Connection con = d.myConnection();;
    PreparedStatement ps = null;
    ResultSet rs = null;
    int id = Integer.parseInt(request.getParameter("id"));
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/style.css">
<title>UPDATE BOOKS</title>
<style type="text/css">
body {
	background-image: none;
}
</style>
</head>
<body>
<div class="nav">
<a href="vieworder.jsp">VIEW ORDERS </a>
<a href="viewbooks.jsp">VIEW BOOKS </a>
<a href="addbooks.jsp" class="active">UPDATE BOOKS </a>
<a href="index.jsp">LOGOUT</a>
</div>
<center>
<h1>UPDATE BOOKS</h1>
<form action="updatebook" method="post">

<table>

<%
try{
	ps = con.prepareStatement("select * from books where id=?");
	ps.setInt(1, id);
	rs = ps.executeQuery();
	if(rs.next()){
%>
<tr><input type="hidden" name="id" value="<%=id%>"/></tr>
<tr><td><label>BOOKNAME :</label></td><td> <input type="text" name="bname" value="<%=rs.getString("bname")%>"/></td></tr>
<tr><td><label>AUTHOR NAME :</label></td><td> <input type="text" name="aname" value="<%=rs.getString("aname")%>"/></td></tr>
<tr><td><label>QUANTITY :</label> </td><td><input type="number" name="quantity" value="<%=rs.getInt("quantity")%>"/></td></tr>
<tr><td><label>DESCRIPTION :</label> </td><td><textarea rows="3" cols="15" name="description" ><%=rs.getString("description")%></textarea></td></tr>

<%}}catch(SQLException e){
e.printStackTrace();
}
	%>
	
<tr><td></td><td><input type="submit" value="UPDATE BOOK"></td></tr>


</table>
</form>
</center>
</body>
</html>