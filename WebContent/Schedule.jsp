<%@ page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
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
  <title>Schedule</title>

</head>
<body>

 <div class="row">
    <div class="col s18 m12">
      <div class="card blue-grey darken-1">
        <div class="card-content white-text">
          <span class="card-title">Schedule</span>
          <p></p>
        </div>
        <div class="card-action">
          <a href="firstyear.jpg">B.Tech 1st sem</a>
          <a href="UnderConstruction.jpg">B.Tech 3rd sem</a>
          <a href="fifthsem.pdf">B.Tech 5th sem</a>
          <a href="seventhsem.pdf">B.Tech 7th sem</a>
          
          <a href="mba1st.pdf">MBA 1st sem</a>
          <a href="UnderConstruction.jpg">MBA 3rd sem</a>
          
          <a href="fifthsem.pdf">MCA 3rd sem</a>
          <a href="mca5th.jpg">MCA 5th sem</a>
      
        </div>
      </div>
    </div>
  </div>
            
       
   
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
