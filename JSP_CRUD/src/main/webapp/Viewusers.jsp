<%@page import="com.demo.user.Bean.User"%>
<%@page import="java.util.List"%>
<%@page import="com.demo.user.DAO.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>User List</h1>
<%List<User> l1=UserDAO.get_Employee();%>
<table border='1' Style='width:'100%'>
<tr>
	<th>ID</th>
	<th>Name</th>
	<th>Password</th>
	<th>Email</th>
	<th>Country</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>
<% for(User c:l1)
{%><tr>
<td><%=c.getId()%></td>
<td><%=c.getName()%></td>
<td><%=c.getPassword()%></td>
<td><%=c.getEmail()%></td>
<td><%=c.getCountry()%></td>
<td><a href="#">Edit</a></td>
<td><a href="#">Delete</a></td>

<% }%>

</table>
</body>
</html>