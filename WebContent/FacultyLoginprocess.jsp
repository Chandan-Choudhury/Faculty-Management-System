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
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
            "system", "oracle");
    Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from regi where login='" + s1 + "' and pass='" + s2 + "'");
if (rs.next()) 
{
	session.setAttribute("login", s1);
	response.sendRedirect("FacultyHomePage.jsp");
} 
else 
{
	response.sendRedirect("Invalid1.jsp");
}
}
catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>
