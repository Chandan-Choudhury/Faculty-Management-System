<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String s1=request.getParameter("name");
String s2=request.getParameter("dept");
String s3=request.getParameter("login");
String s4=request.getParameter("pass");
String s5=request.getParameter("mobile");
String s6=request.getParameter("whatsapp");
String s7=request.getParameter("email");
String s8=request.getParameter("salary");
String s9=request.getParameter("leave");

int k=0;
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
	
	PreparedStatement ps=con.prepareStatement("insert into regi values(?,?,?,?,?,?,?,?,?)");
	ps.setString(1,s1);
	ps.setString(2,s2);
	ps.setString(3,s3);
	ps.setString(4,s4);
	ps.setString(5,s5);
	ps.setString(6,s6);
	ps.setString(7,s7);
	ps.setString(8,s8);
	ps.setString(9,s9);
	
	
	k=ps.executeUpdate();
	if(k>0)
	{
		response.sendRedirect("AdminFacultyDataView.jsp");
	}
	else
	{
		out.print("Naw");
	}
}
catch(Exception e)

{	
	out.print("<script> alert('User already registered')</script>");
	out.print("The login id: ");out.print(s3);out.print(" is already being used");
	e.printStackTrace();
}
%>

</body>
</html>