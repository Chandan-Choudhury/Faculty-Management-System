<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <!-- font awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
  <!--Import Google Icon Font-->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">
  <title>FMS Admin Salary Page</title>

</head>
<body>

  <!-- navbar -->
  <header>
    <div class="navbar">
    <ul id="dropdown1" class="dropdown-content">
      
      <li><a href="AdminSalary.jsp">Check Salary</a></li>
      <li class="divider"></li>
      <li><a href="AdminFacultyDataView.jsp">Faculty Data</a></li>
      <li class="divider"></li>
      <li><a href="AddFacultyRegister.jsp">Add Faculty</a></li>
      <li class="divider"></li>
      <li><a href="AdminFacultyEdit.jsp">Edit Faculty</a></li>
      <li class="divider"></li>
      <li><a href="AdminFacultyDelete.jsp">Delete Faculty</a></li>
    </ul>

    <ul id="dropdown2" class="dropdown-content">
      
      <li><a href="AdminSalary.jsp">Check Salary</a></li>
      <li class="divider"></li>
      <li><a href="AdminFacultyDataView.jsp">Faculty Data</a></li>
      <li class="divider"></li>
      <li><a href="AddFacultyRegister.jsp">Add Faculty</a></li>
      <li class="divider"></li>
      <li><a href="AdminFacultyEdit.jsp">Edit Faculty</a></li>
      <li class="divider"></li>
      <li><a href="AdminFacultyDelete.jsp">Delete Faculty</a></li>
    </ul>
    <nav class="nav-wrapper #69f0ae green accent-2" style="margin-bottom: 3rem;">
      
        
      	<a href="AdminHomePage.jsp" class="brand-logo" style="padding-top: 10px;"><img src="Images/bcetlogo.png" alt="BcetLogo"></a>
        <a href="#" class="sidenav-trigger" data-target="mobile-menu">
        <i class="material-icons">menu</i>
        </a>
        <ul class="right hide-on-med-and-down">
          <li><a href="AdminHomePage.jsp" alt="Home">Home</a></li>
          <li><a class="dropdown-trigger" href="#!" data-target="dropdown1">Faculty<i class="material-icons right">arrow_drop_down</i></a></li>
          <li><a href="Cover.jsp">Log Out</a></li>
        </ul>
        
        <ul class="sidenav grey lighten-2" id="mobile-menu">
          <li><a href="AdminHomePage.jsp">Home</a></li>
          <li><a class="dropdown-trigger" href="#!" data-target="dropdown2">Faculty<i class="material-icons right">arrow_drop_down</i></a></li>
          <li><a href="#">Log Out</a></li>
        </ul>
    </nav>
    </div>
  </header>

		
		<%

Class.forName("oracle.jdbc.driver.OracleDriver");           
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "oracle");

Statement st = con.createStatement();


ResultSet rs = st.executeQuery("select * from regi") ;

        %>

        <TABLE class="striped container" BORDER="1">
            <TR>
               <TH>Name</TH>
               <TH>Department</TH>
               <TH>Salary(In Rs.)</TH>
           </TR>
           <%while(rs.next()){ %>
           <TR>
               <TD> <%= rs.getString("name") %> </TD>
               <TD> <%= rs.getString("dept") %> </TD>
               <TD> <%= rs.getString("salary") %> </TD>
           </TR>
           <% } %>
       </TABLE>
       <BR>
       
         <!-- Compiled and minified JavaScript -->
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js"></script>
  <script>
    $(document).ready(function(){
      $('.sidenav').sidenav();
      $('.materialboxed').materialbox();
      $('.parallax').parallax();
      $('.dropdown-trigger').dropdown()
    });
  </script>
</body>
</html>
