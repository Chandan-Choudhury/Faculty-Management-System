<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">

<%
try{
	HttpSession sess = request.getSession();
	String l_id = (String) sess.getAttribute("l_id");
	
	String name = request.getParameter("name");
	String dept = request.getParameter("dept");
	String login = request.getParameter("login");
	String pass = request.getParameter("pass");
	String mobile = request.getParameter("mobile");
	String whatsapp = request.getParameter("whatsapp");
	String email = request.getParameter("email");
	String salary = request.getParameter("salary");
	String leave = request.getParameter("leave");

	
	if (name!=null)
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");           
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "oracle");
		
		String sql = "Update regi set name=?, dept=?,login=?,pass=?,mobile=?,whatsapp=?,email=?,salary=?,leave=? where login=?";
		PreparedStatement ps = con.prepareStatement(sql);
		
		ps.setString(1, name);
		ps.setString(2, dept);
		ps.setString(3, login);
		ps.setString(4,pass);
		ps.setString(5,mobile);
		ps.setString(6,whatsapp);
		ps.setString(7,email);
		ps.setString(8, salary);
		ps.setString(9,"");
		ps.setString(10, l_id);
		int i = ps.executeUpdate();
		
		if (i > 0) 
		{
			
		    response.sendRedirect("AdminFacultyEdit.jsp");
		} 
		else
		{
		    out.print("Data not updated successfully");
		}
	}
}
catch(Exception e){
e.printStackTrace();
}
%>