<%@page import="java.sql.Statement"%>
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
    Statement st = null;
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/tablestyle.css">
<title>ORDERS LIST</title>
<style type="text/css">
body {
	background-image: none;
}
</style>
</head>
<body>
<div class="nav">
<a href="index.jsp">LOGOUT</a>
<a href="#" class="active">VIEW ORDERS </a>
<a href="viewbooks.jsp">VIEW BOOKS </a>
<a href="addbooks.jsp">ADD BOOKS </a>
</div>
<center>
<h1>ORDERS LIST</h1>
<table class="mytable">
<tr><th>BOOK NAME </th>
<th>AUTHOR NAME </th>
<th>QUANTITY </th>
<th>TOTAL PRICE </th>
<th>BUYER NAME </th>
<th>EMAIL</th>
<th> PHONE </th></tr>

<%
con = d.myConnection();
try{
	st = con.createStatement();
	rs = st.executeQuery("select * from orders left join books on orders.bid=books.id left join users on orders.uid=users.id");
	//ps = con.prepareStatement("select * from orders left join books on orders.bid=books.id left join users on orders.uid=users.id");
	//rs = ps.executeQuery();
	while(rs.next()){
%>
<tr>
<td><%=rs.getString("bname")%></td>
<td><%=rs.getString("aname")%></td>
<td><%=rs.getString("quantity")%></td>
<td><%=rs.getString("totalprice")%></td>
<td><%=rs.getString("username")%></td>
<td><%=rs.getString("email")%></td>
<td><%=rs.getString("phone")%></td>
</tr>
<%}}catch(SQLException e){
e.printStackTrace();
}
	%>
</table>
</center>
</body>
</html>