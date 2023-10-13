<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Add New Employee</h1>
<form action="adduser.jsp" method="post">
	<table>
		<tr>
			<td>Name:</td><td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td>Password:</td><td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td>Email:</td><td><input type="email" name="email"></td>
		</tr>
		<tr>
			<td>Country:</td><td><select name="country">
				<option>India</option>
				<option>USA</option>
				<option>UK</option>
			</select></td>			
		</tr>
		<tr><td><input type="submit" value="Save Employee"></td></tr>
	</table>
</form>
<br/>
<a href="Viewusers.jsp" >View Employee</a>
</body>
</html>