<!DOCTYPE html>
<html>
<head>
  <title>Welcome</title>
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
  <div class="header">
  	<h2>Login</h2>
  </div>
	 
  <form method="post" action="DocLogin">
  	<div class="input-group">
  		<label>Doc Id</label>
  		<input type="text" name="docid" >
  	</div>
  	<div class="input-group">
  		<label>Password</label>
  		<input type="password" name="password">
  	</div>
  	<div class="input-group" align="center">
  		<button type="submit" class="btn" name="doclogin_user">Login</button>
  	</div>
  	<p>
  		Not yet a member? <a href="docreg.jsp">Sign up</a>
  	</p>
  </form>
</body>
</html>