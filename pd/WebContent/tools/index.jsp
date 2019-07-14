<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="./../resources/bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="./../resources/bootstrap/css/bootstrap-grid.css">
	<link rel="stylesheet" type="text/css" href="./../resources/bootstrap/css/bootstrap-reboot.css">
	<link rel="stylesheet" type="text/css" href="./../resources/fontawesome-free-5.7.2-web/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="./../resources/custom/custom.css">
	<title>People Dictionary</title>
</head>
<body class="cus-body">
	<nav class="navbar bg-dark navbar-dark fixed-top">
		<a class="navbar-brand" href="">LOGO</a>
		<form class="form-inline" action="">
			<input class="from-control" type="text" name="searchkey" placeholder="search">
			&nbsp
			<button class="btn btn-success" type="submit">Search</button>
		</form>
	</nav>
	<div class="container" style="margin-top: 100px; margin-bottom: 150px">
		<div class="row text-light" style="font-size: 24px">
			<div class="col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3 text-left" style="background-color: rgba(0,0,0,0.7)">
				<i class="fas fa-link"></i><a class="m-2 text-light" href="./../">Home</a><p><p>
				<i class="fas fa-link"></i><a class="m-2 text-light" href="./../profile">View profile</a><p>
				<i class="fas fa-link"></i><a class="m-2 text-light" href="./../add-profile">Add new profile</a><p>
				<i class="fas fa-link"></i><a class="m-2 text-light" href="./../update-profile">Update existing profile</a>
				<hr>
			</div>
			<div class="col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3 text-left" style="background-color: rgba(0,0,0,0.7)">
				<i class="fas fa-link"></i><a class="m-2 text-light" href="./../profile-data/picture-upload.jsp">Upload picture(s)</a><p><p>
				<i class="fas fa-link"></i><a class="m-2 text-light" href="">Upload anonymous picture(s)</a><p>
				<i class="fas fa-link"></i><a class="m-2 text-light" href="">Tools</a><p>
				<hr>
			</div>
			<div class="col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3 text-left" style="background-color: rgba(0,0,0,0.7)">
				<i class="fas fa-link"></i><a class="m-2 text-light" href="./../login">Login</a><p><p>
				<hr>
			</div>
			<div class="col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3 text-left" style="background-color: rgba(0,0,0,0.7)">
				<i class="fas fa-link"></i><a class="m-2 text-light" href="">Terms & Condition</a><p><p>
				<i class="fas fa-link"></i><a class="m-2 text-light" href="">Privacy Policy</a><p>
				<i class="fas fa-link"></i><a class="m-2 text-light" href="">Contact</a><p>
				<i class="fas fa-link"></i><a class="m-2 text-light" href="">About</a><p>
				<hr>
			</div>
		</div><!-- row-end -->
	</div><!-- container-end -->
	<footer class="container-fluid bg-dark text-light mt-3 fixed-bottom">
		<div class="container p-3">
			<div class="row">
				<div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 text-center">
					<a class="text-light" href="">Trams & Condition</a>&nbsp&nbsp&nbsp&nbsp
					<a class="text-light" href="">Privaci Policy</a>&nbsp&nbsp&nbsp&nbsp
					<a class="text-light" href="">Help</a>&nbsp&nbsp&nbsp&nbsp
				</div>
				<div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 text-center">
					<a class="text-light" href="">Tools</a>&nbsp&nbsp&nbsp&nbsp
					<a class="text-light" href="">API</a>&nbsp&nbsp&nbsp&nbsp
					<a class="text-light" href="">Contact</a>&nbsp&nbsp&nbsp&nbsp
					<a class="text-light" href="">About</a>
				</div>
			</div>
			<div class="row pt-3">
				<div class="col-12 text-center">
					© 2019 Manish Parui
				</div>
			</div>
		</div>
	</footer>
</body>
</html>