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
	  <title>Add Faculty</title>
	  <link rel="stylesheet" href="Registration.css">
</head>
<body>
  
	  <ul id="dropdown1" class="dropdown-content">
	      <li><a href="StakeholderLogin.jsp">Stakeholder</a></li>
	      <li class="divider"></li>
	      <li><a href="CommitteeLogin.jsp">Committee</a></li>
	  </ul>

	  <ul id="dropdown2" class="dropdown-content">
	      <li><a href="StakeholderLogin.jsp">Stakeholder</a></li>
	      <li class="divider"></li>
	      <li><a href="CommitteeLogin.jsp">Committee</a></li>
	  </ul>
	  
	 <!-- Nav Bar -->
  	<div class="nav-container">
    <nav>
      <div class="nav-wrapper #69f0ae green accent-2">
        <a href="AdminHomePage.jsp" class="brand-logo" style="padding-top: 10px;"><img src="Images/bcetlogo.png" alt="Bcet_Logo"></a>
      </div>
    </nav>
  </div>

  <!-- Registration Form -->
  <form action="AdminRegistrationprocess.jsp" method="post">
    <div class="login-container">
      <div class="row center-align">
        <img src="https://img.icons8.com/office/80/000000/edit-user-male--v2.png">
      </div>
      
      <div class="row">
        <div class="input-field col s12">
        	<i class="material-icons prefix">account_circle</i>
          <input id="name" type="text" name="name" class="validate" autocomplete="off" required pattern="^(?=[A-Za-z])([A-Za-z\s]*)(?<=[A-Za-z])$">
          <label for="name">Name of the Faculty</label>
          <span id="validate-name" class="validate-all"></span>
        </div>
      </div>

      <div class="row">
        <div class="input-field col s12">
        	<i class="material-icons prefix">school</i>
           <select name="dept" id = "dept" class="validate" required>
            <option value="" disabled selected>Select Branch</option>
            <optgroup label="B.Tech">
              <option required value="Mechanical Engineering">Mechanical Engineering</option>
              <option value="Computer Science & Engineering">Computer Science & Engineering</option>
              <option value="Civil Engineering">Civil Engineering</option>
              <option value="Electrical Engineering">Electrical Engineering</option>
              <option value="Electrical & Electronics Engineering">Electrical & Electronics Engineering</option>
              <option value="Electrical & Tele Communication Engineering">Electrical & Tele Communication Engineering</option>
              <option value="Information Technology Engineering">Information Technology Engineering</option>
              <option value="Basic Science & Humanities">Basic Science & Humanities</option>
            </optgroup>
            <optgroup label="M.Tech">
              <option value="Communication Engineering">Communication Engineering</option>
              <option value="Heat Power & Thermal Engineering">Heat Power & Thermal Engineering</option>
            </optgroup>
            <optgroup label="MBA">
              <option value="MBA">MBA</option>
            </optgroup>
            <optgroup label="MCA">
              <option value="MCA">MCA</option>
            </optgroup>
          </select>
          <label>Department</label>
        </div>
      </div>

      <div class="row">
        <div class="input-field col s12">
          <i class="material-icons prefix">account_circle</i>
          <input id="login" type="text" name="login" class="validate" autocomplete="off" required pattern="\S+" title="This field is required">
          <label for="login">Login Id</label>
          <span id="validate-login" class="validate-all"></span>
        </div>
      </div>

      <div class="row">
        <div class="input-field col s12">
          <i class="material-icons prefix">vpn_key</i>
          <input id="pass" type="password" name="pass" class="validate" required pattern="\S+" title="This field is required">
          <label for="login-password">Password</label>
          <span id="validate-passw" class="validate-all"></span>
        </div>
      </div>

      <div class="row">
        <div class="input-field col s6">
        	<i class="material-icons prefix">phone</i>
          <input id="mobile" type="text" name="mobile" pattern="[7-9]{1}[0-9]{9}" class="validate" autocomplete="off" required>
          <label for="mobile">Mobile no.</label>
          <span id="validate-mobile" class="validate-all"></span>
        </div>

        <div class="input-field col s6">
         	<i class="material-icons prefix">perm_phone_msg</i>
          <input id="whatsapp" type="text" name="whatsapp" pattern="[7-9]{1}[0-9]{9}" class="validate" autocomplete="off" >
          <label for="whatsapp">WhatsApp no.</label>
          <span id="validate-whatsapp" class="validate-all"></span>
        </div>
      </div>

      <div class="row">
        <div class="input-field col s12">
        	<i class="material-icons prefix">email</i>
          <input id="email" type="email" name="email" class="validate" autocomplete="off" required>
          <label for="email">Email Id</label>
        </div>
      </div>

      <div class="row center-align">
      <button class="btn waves-effect waves-light" type="submit" name="action">Register
        <i class="material-icons right">send</i>
      </button>
      </div>

    </div>
  </form>

  <!-- Footer -->
  <footer class="page-footer #69f0ae green accent-2">
    <div class="container">
    � 2019 Faculty Management System
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

        // Form Select
        $('select').formSelect();
        
        $("select[required]").css({display: "inline", height: 0, padding: 0, width: 0, opacity: 0, position: "absolute"});
      });
    </script>
   
</body>
</html>
