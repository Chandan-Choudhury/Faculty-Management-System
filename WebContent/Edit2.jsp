<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<style> 
input[type=submit]{
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 16px 32px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
}
</style>

<%
String l_id = request.getParameter("l_id");

HttpSession sess = request.getSession();
sess.setAttribute("l_id", l_id);
try {
Class.forName("oracle.jdbc.driver.OracleDriver");           
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "oracle");

PreparedStatement ps = con.prepareStatement("select * from regi where login=?");
ps.setString(1, l_id);

ResultSet rs = ps.executeQuery();

if(rs.next()){
%>


<body style="background-color:lightgray;">
<h1>Update Center</h1>
<form method="post" action="Updateprocess2.jsp">

Name:<br>
<input type="text" name="name" value="<%=rs.getString("name") %>">
<br>
Department:<br>
<input type="text" name="dept" value="<%=rs.getString("dept")%>">
<br>

Password:<br>
<input type="text" name="pass" value="<%=rs.getString("pass") %>">
<br>
Mobile:<br>
<input type="text" name="mobile" value="<%=rs.getString("mobile") %>">
<br>
Whatsapp:<br>
<input type="text" name="whatsapp" value="<%=rs.getString("whatsapp") %>">
<br>
Email:<br>
<input type="email" name="email" value="<%=rs.getString("email") %>">
<br>

<br><br>
<input type="submit" value="Update">


</form>
<%
}
con.close();
}
catch (Exception e) {
e.printStackTrace();
}

%>
</body>
</html>