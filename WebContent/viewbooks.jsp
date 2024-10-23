<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="dbconnection.Dbconnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    Dbconnection d = new Dbconnection();
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/tablestyle.css">
<title>VIEW BOOKS</title>
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
<a href="#" class="active">VIEW BOOKS </a>
<a href="addbooks.jsp">ADD BOOKS </a>
</div>
<center>
<h1>VIEW BOOKS</h1>
<table  class="mytable">
<tr><th>BOOK NAME </th>
<th>AUTHOR NAME </th>
<th>QUANTITY </th>
<th>DESCRIPTION </th>
<th>PRICE </th>
<th>ACTION 1 </th>
<th>ACTION 2 </th></tr>

<%
con = d.myConnection();
try{
	ps = con.prepareStatement("select * from books");
	rs = ps.executeQuery();
	while(rs.next()){
%>
<tr>
<td><%=rs.getString("bname") %></td>
<td><%=rs.getString("aname") %></td>
<td><%=rs.getInt("quantity") %></td>
<td><%=rs.getString("description") %></td>
<td><%=rs.getInt("price") %></td>
<td><a href="updatebook.jsp?id=<%=rs.getInt("id")%>" class="updatebtn">UPDATE</a></td>
<td><a href="delete?id=<%=rs.getInt("id")%>" class="deletebtn">DELETE</a></td>
</tr>
<%}}catch(SQLException e){
e.printStackTrace();
}
	%>
</table>
</center>
</body>
</html>