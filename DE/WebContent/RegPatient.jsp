<!DOCTYPE html>
<html>
<head>
  <title>Register Your Self</title>
  <link rel="stylesheet" type="text/css" href="style.css">
  <script type="text/javascript" src="js/p-register.js"></script>
</head>
<body>
  <div class="header">
  	<h2>Register</h2>
  </div>
	
  <form method="post" action="Register" onsubmit="javascript:return validate();">
  	<div class="input-group">
  	  <label>Full Name</label>
  	  <input type="text" name="username" id="uname"><br>
  	  <span id="sname" style="color:red;"></span>
  	</div>
  	<div class="input-group">
  	  <label>Email</label>
  	  <input type="email" name="email" id="email"><br>
  	  <span id="smail" style="color:red;"></span>
  	</div>
    <div class="input-group">
      <label>Aadhar No.</label>
      <input type="text" name="aadhar" id="aadhar"><br>
      <span id="saadhar" style="color:red;"></span>
    </div>
  	<div class="input-group">
  	  <label>Password</label>
  	  <input type="password" name="password" id="pass"><br>
  	  <span id="spass" style="color:red;"></span>
  	</div>
  	<div class="input-group">
  	  <button type="submit" class="btn" name="reg_user">Register</button>
  	</div>
  	<p>
  		Already a member? <a href="index.jsp">Sign in</a>
  	</p>
  </form>
</body>
</html>