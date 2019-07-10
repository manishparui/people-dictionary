<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<!-- login -->
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<meta http-equiv="cache-control" content="max-age=0" />
	<meta http-equiv="cache-control" content="no-cache" />
	<meta http-equiv="expires" content="0" />
	<meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
	<meta http-equiv="pragma" content="no-cache" />

	<link rel="stylesheet" type="text/css" href="./../resources/bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="./../resources/bootstrap/css/bootstrap-grid.css">
	<link rel="stylesheet" type="text/css" href="./../resources/bootstrap/css/bootstrap-reboot.css">
	
	<link rel="stylesheet" type="text/css" href="./../resources/fontawesome-free-5.7.2-web/css/all.min.css">
	
	<link rel="stylesheet" type="text/css" href="./../resources/custom/custom.css?version=3">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

	<title>People Dictionary</title>
</head>

<body class="cus-body">
	<div class="cus-login-container" style="font-size: 20px;">
		<form class="text-center" action="./../LoginServ" method="post">
			<div class="input-group">
    			<span class="input-group-text" style="font-size: 24px"><i class="fas fa-user"></i></span>
    			<input type="text" class="form-control" id="uname" name="uname" placeholder="User Name">
			</div>
  			
  			<div class="input-group mt-3">
    			<span class="input-group-text" style="font-size: 24px"><i class="fas fa-lock"></i></span>
    			<input type="password" class="form-control" id="pwd" name="pwd" placeholder="Password">
    			<button type="submit" class="btn btn-light"><i class="fas fa-sign-in-alt"></i></button>
			</div>
				
  			
		</form>
	</div>

</body>
</html>