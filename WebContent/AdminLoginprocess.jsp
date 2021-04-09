<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%
	String s1 = request.getParameter("login");
    String s2 = request.getParameter("password");
	
    if(s1.equals("bcet") && s2.equals("123"))
	{
    	response.sendRedirect("AdminHomePage.jsp");
  	}
    else
    {
    	RequestDispatcher rd= request.getRequestDispatcher("Invalid.jsp");
    	rd.include(request, response);
    }
%>
</body>
</html>
    