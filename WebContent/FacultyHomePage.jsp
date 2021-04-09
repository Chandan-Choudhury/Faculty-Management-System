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
  <title>FMS Faculty Homepage</title>
  <style>
    .form-container {
    	position: relative;
    	height: 100vh;
    }
    
    .table-container {
    	position: absolute;
    	top: 3rem;
    	background: white;
    	opacity: 0.8;
    	width: 100%;
    	height: 20vh;
    }
    
    @media screen and (max-width: 670px){
      header{
        min-height: 500px;
      }
    }
    .section{
      padding-top: 4vw;
      padding-bottom: 4vw;
    }
  </style>

</head>
<body>

  <!-- navbar -->
  <header>
  
    <nav class="nav-wrapper black">
      <div class="container">
        
         <a href="FacultyHomePage.jsp" class="brand-logo" style="padding-top: 10px;"><img src="Images/bcetlogo.png" alt="Bcet_Logo"></a>
        <a href="#" class="sidenav-trigger" data-target="mobile-menu">
        <i class="material-icons">menu</i>
        </a>
        <ul class="right hide-on-med-and-down">
  
          <li><a href="Cover.jsp">Log Out</a></li>
        </ul>
        
        <ul class="sidenav grey lighten-2" id="mobile-menu">
        
          <li><a href="Cover.jsp">Log Out</a></li>
        </ul>

      </div>
    </nav>
  </header>
  
<div class="form-container">

<img src="BCETCC.jpg" width="100%" height="100%" alt="">
  <%
String l_id = (String) session.getAttribute("login");
HttpSession sess = request.getSession();
sess.setAttribute("l_id",l_id);
Class.forName("oracle.jdbc.driver.OracleDriver");           
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "oracle");

PreparedStatement ps = con.prepareStatement("select * from regi where login=?");
ps.setString(1, l_id);


ResultSet rs = ps.executeQuery() ;

        %>

	<div class="table-container">
        <TABLE class = "striped" BORDER="1" style="margin-bottom: 2rem;">
            <TR>
               <TH>Name</TH>
               <TH>Department</TH>
               <TH>Login Id</TH>
               <TH>Password</TH>
               <TH>Mobile</TH>
               <TH>WhatsApp</TH>
               <TH>Email</TH>
               <TH>Salary(In Rs.)</TH>
               <TH>Action</TH>
               <TH>Action</TH>
               
           </TR>
           <%while(rs.next()){ %>
           <TR>
               <TD> <%= rs.getString("name") %> </TD>
               <TD> <%= rs.getString("dept") %> </TD>
               <TD> <%= rs.getString("login") %> </TD>
               <TD> <%= rs.getString("pass") %> </TD>
               <TD> <%= rs.getString("mobile") %> </TD>
               <TD> <%= rs.getString("whatsapp") %> </TD>
               <TD> <%= rs.getString("email") %> </TD>
               <TD> <%= rs.getString("salary") %> </TD>
               
               <td><a class="btn blue" href="Edit2.jsp?l_id=<%=rs.getString("login")%>">Edit</a></td>
			   <td><a class="btn blue" href="Schedule.jsp">Schedule</a></td>              
           </TR>
           <% } %>
           
       </TABLE>
	</div>
</div>

  <!-- footer -->
  
<footer class="page-footer">
          <div class="container">
            
              
              <div class="col l4 offset-l2 s18">
                <h5 class="white-text">Developed By:</h5>
                <ul>
                  <li><a class="grey-text text-lighten-3" href="https://www.facebook.com/shubhamsenpai?hc_ref=PAGES_TIMELINE">Shubham Das Mohapatra</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Chandan Choudhury</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Jayshree Patra</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Sushree Sangeeta Mohanty</a></li> 
                  <li><a class="grey-text text-lighten-3" href="#!">Sushree Ila Ray Mohapatra</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Kanchan Choudhury</a></li>
                </ul>
              </div>
          	</div>
          	<div class="footer-copyright">
            	<div class="container">
            		© 2019 FMS Copyright
            		<a class="grey-text text-lighten-4 right" href="#!"></a>
            	</div>
           </div>
        </footer>
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