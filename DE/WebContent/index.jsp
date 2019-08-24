<!DOCTYPE html>
<html>
<head>
  <title>Welcome</title>
  <link rel="stylesheet" type="text/css" href="style.css">
  <script type="text/javascript" src="js/p-login.js"></script>
</head>
<body>
  <div class="header">
  	<h2>Login</h2>
  </div>
	 
  <form method="post" action="PatientLogIn" onsubmit="javascript:return validate();">
  	
  	<div class="input-group">
  		<label>Aadhar No.:</label>
  		<input type="text" name="aadhar" id="aadhar" >
  		<span id="saadhar" style="color:red;"></span>
  	</div>
  	<div class="input-group">
  		<label>Password</label>
  		<input type="password" name="password" id="pass">
  		<span id="spass" style="color:red;"></span>
  	</div>
  	<div class="input-group" align="center">
  		<button type="submit" class="btn" name="login_user">Login</button>
  	</div>
  	<p>
  		Not yet a member? <a href="RegPatient.jsp">Sign up</a>
  	</p>
    <p>
      Are you a doctor?<a href="doclogin.jsp">Log in For a Doctor</a>
    </p>
  </form>
</body>
</html>