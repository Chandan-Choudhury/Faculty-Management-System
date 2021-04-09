<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<html lang="en" dir="ltr">

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
    String dlt = request.getParameter("nameid");
		
try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
            "system", "oracle");

    PreparedStatement ps = con.prepareStatement("delete from regi where name=?");
    ps.setString(1, dlt);
    
    int i = ps.executeUpdate();

    if (i > 0) 
    {
        response.sendRedirect("AdminFacultyDelete.jsp");
    } 
    else {
        out.print("Data not deleted successfully");
    }}
catch(Exception e){
	e.printStackTrace();
}
%>