<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <!--Import Google Icon Font-->
  <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
  <title>FacultyLogin</title>
  <link rel="stylesheet" href="Login.css">
</head>
<body>
  <!-- Nav Bar -->
  <div class="nav-container">
	  <nav>
	    <div class="nav-wrapper #69f0ae green accent-2">
	      <a href="#!" class="brand-logo" style="padding-top: 10px;"><img src="Images/bcetlogo.png" alt=""></a>
	     <ul class="right hide-on-med-and-down"></ul>
      </div>
	  </nav>
  </div>
  
  <!-- Login Form -->
  <form action="FacultyLoginprocess.jsp">
    <div class="login-container">
      <div class="row center-align">
        <i class="large material-icons">account_circle</i>
        <h5>Faculty Log in</h5>
        <h6>Use your Faculty Account</h6>
      </div>
      
      <div class="row">
        <div class="input-field col s12">
        	<i class="material-icons prefix">account_circle</i>
          <input id="login" type="text" class="validate" name="login" autocomplete="off" required>
          <label for="login">Login Id</label>
        </div>
      </div>

      <div class="row">
        <div class="input-field col s12">
        	<i class="material-icons prefix">vpn_key</i>
          <input id="password" type="password" class="validate" name="password" required>
          <label for="password">Password</label>
          <div><a href="ForgotPw.jsp"><b>Forgot Password?</b></a></div>
        </div>
      </div>
      
      <div class="row"></div>
      <div class="row">
        <div class="col s6"><a href="Registration.jsp">New User?</a></div>
        <div class="col s6 right-align"><button type="submit" class="btn waves-effect waves-light btn " name="login">Login</button></div>
      </div>
      
    </div>
  </form>
  
  <!-- Footer -->
  <footer class="page-footer #69f0ae green accent-2">
    <div class="container">
    © 2019 Faculty Management System
    <p class="grey-text text-lighten-4 right">Developed by: CC,SDM,JP and Team</p>
    </div>
  </footer>
  
  <!-- Import jQuery -->
  <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
  <script>
    $( document ).ready(function() {
      // Dropdown on Click
      $(".dropdown-trigger").dropdown({ hover: false });

      // Sidenav
      $('.sidenav').sidenav();
    });
  </script>
</body>
</html>