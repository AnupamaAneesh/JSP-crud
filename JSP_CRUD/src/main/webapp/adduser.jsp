<%@page import="java.io.PrintWriter"%>
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
<jsp:useBean id="us" class="com.demo.user.Bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="us"/>
<%int i=UserDAO.SaveEmployee(us);
	if(i>0)
		{
			response.sendRedirect("Success.jsp");
		}
	else {
			response.sendRedirect("Failure.jsp");
		}
%>
</body>
</html>