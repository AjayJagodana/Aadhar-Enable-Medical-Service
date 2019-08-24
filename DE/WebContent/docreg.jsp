<!DOCTYPE html>
<html>
<head>
  <title>Doctor Registration</title>
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
  <div class="header">
  	<h2>Register</h2>
  </div>
	
  <form method="post" action="DocReg">
  	<div class="input-group">
  	  <label>Full Name</label>
  	  <input type="text" name="username" >
  	</div>
    <div class="input-group">
      <label>Contact No</label>
      <input type="text" name="contact" >
    </div>
  	<div class="input-group">
  	  <label>Email</label>
  	  <input type="email" name="email" >
  	</div>
    <div class="input-group">
      <label>Doc Id.:</label>
      <input type="text" name="did" >
    </div>
    <div class="input-group">
      <label>Aadhar No.:</label>
      <input type="text" name="aadhar" >
    </div>
    <div class="input-group">
      <label>Hospital Name</label>
      <input type="text" name="hname" >
    </div>
     <div class="input-group">
      <label>Education Details</label>
      <input type="text" name="edu" >
    </div>
    <div class="input-group">
      <label>Address</label>
      <input type="text" name="address">
    </div>

  	<div class="input-group">
  	  <label>Password</label>
  	  <input type="password" name="password">
  	</div>
  	<div class="input-group">
  	  <button type="submit" class="btn" name="doc_reg">Register</button>
  	</div>
  	<p>
  		Already a member? <a href="doclogin.jsp">Sign in</a>
  	</p>
  </form>
</body>
</html>