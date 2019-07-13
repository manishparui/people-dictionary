<%@page import="pd.java.other.Profile"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="pd.java.dao.ProfileDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<!-- profile -->
	<meta charset="utf-8">
	<meta name="application-name" content="people dictionary">
	<meta name="description" content="One stop repository for people">
  	<meta name="keywords" content="people dictionary,pd">
  	<meta name="author" content="Manish Parui">
  	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" type="text/css" href="./../resources/bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="./../resources/bootstrap/css/bootstrap-grid.css">
	<link rel="stylesheet" type="text/css" href="./../resources/bootstrap/css/bootstrap-reboot.css">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.0/css/lightbox.min.css"/>
	
	<link rel="stylesheet" type="text/css" href="./../resources/fontawesome-free-5.7.2-web/css/all.min.css">

	<link rel="stylesheet" type="text/css" href="./../resources/custom/custom.css">
  	
  	<script type="text/javascript" src="./../resources/ajax/LoadData.js"></script>
  	<script type="text/javascript" src="./../resources/ajax/LoadProfileImage.js"></script>
  	<script type="text/javascript" src="./../resources/ajax/LoadPhoto.js"></script>
  	

	<title>People Dictionary</title>
</head>

<body class="cus-body">

	<%
		String id = request.getParameter("id");
	%>

	<nav class="navbar bg-dark navbar-dark fixed-top">
		<a class="navbar-brand" href="home.jsp">PEOPLE DICTIONARY</a>
		<form class="form-inline" action="">
			<input class="from-control" type="text" name="searchkey" placeholder="search">
			&nbsp
			<button class="btn btn-success" type="submit">Search</button>
		</form>
	</nav>

	<div class="container" style="margin-top: 100px">
		<form>
		<div class="row">
			<div class="col-12 col-sm-12 col-md-4 col-lg-3 col-xl-3 d-flex justify-content-center">
				<img id="pic" alt="profile picture" class="rounded-circle" style="width: 180px; height: 180px;">
			</div>

			<div class="col-12 col-sm-12 col-md-8 col-lg-9 col-xl-9 my-auto d-flex justify-content-center justify-content-md-start justify-content-lg-start justify-content-xl-start">
				<div class="input-group mt-3">
    				<span class="input-group-text" style="font-size: 24px"><i class="fas fa-signature"></i></span>
    				<input id="name" type="text" class="form-control" name="name" placeholder="Name" readonly>
					<span class="input-group-text" style="font-size: 16.5px">
						<a class="text-dark" href="./../update-profile?id=<%=id%>"><i class="fas fa-edit"></i></a>
					</span>
				</div>
			</div>
		</div>

		<div class="row" style="margin-top: 50px; font-size: 20px;">
			<div class="col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3 text-center">
				<hr><h3 class="text-light">Personal</h3><hr>

				<div class="input-group mt-3">
    				<span class="input-group-text" style="font-size: 24px"><i class="fas fa-signature"></i></span>
    				<textarea id="otherName" class="form-control" name="otherName" placeholder="Other Name" rows="2" readonly></textarea>
				</div>

				<div class="input-group mt-3">
    				<span class="input-group-text" style="font-size: 24px"><i class="fas fa-birthday-cake"></i></span>
    				<input id="dob" type="date" class="form-control" name="dob" placeholder="Date of Birth" readonly>
				</div>

				<div class="input-group mt-3">
    				<span class="input-group-text" style="font-size: 24px"><i class="fas fa-venus-mars"></i></span>
    				<select id="gender" class="form-control" name="gender" readonly>
    					<option value="Male">Male</option>
    					<option value="Female">Female</option>
    					<option value="Other">Other</option>
    				</select>
				</div>

				<div class="input-group mt-3">
    				<span class="input-group-text" style="font-size: 24px"><i class="fas fa-flag"></i></span>
    				<input id="nationality" type="text" class="form-control" name="nationality" placeholder="Nationality" readonly>
				</div>

				<div class="input-group mt-3">
    				<span class="input-group-text" style="font-size: 24px"><i class="fas fa-users"></i></span>
    				<textarea id="fatherName" class="form-control" name="fatherName" placeholder="Father's Name" rows="2" readonly></textarea>
				</div>

				<div class="input-group mt-3">
    				<span class="input-group-text" style="font-size: 24px"><i class="fas fa-users"></i></span>
    				<textarea id="motherName" class="form-control" name="motherName" placeholder="Mother's Name" rows="2" readonly></textarea>
				</div>

			</div>

			<div class="col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3 text-center">
				<hr><h3 class="text-light">Education & Work</h3><hr>

				<div class="input-group mt-3">
    				<span class="input-group-text" style="font-size: 24px"><i class="fas fa-user-tie"></i></span>
    				<textarea id="profession" type="text" class="form-control" name="profession" placeholder="Profession" rows="2" readonly></textarea>
				</div>

				<div class="input-group mt-3">
    				<span class="input-group-text" style="font-size: 24px"><i class="fas fa-briefcase"></i></span>
    				<textarea id="presentWork" class="form-control" name="presentWork" placeholder="Present Work Space" rows="2" readonly></textarea>
				</div>

				<div class="input-group mt-3">
    				<span class="input-group-text" style="font-size: 24px"><i class="fas fa-briefcase"></i></span>
    				<textarea id="pastWork" class="form-control" name="pastWork" placeholder="Past Work Space" rows="2" readonly></textarea>
				</div>

				<div class="input-group mt-3">
    				<span class="input-group-text" style="font-size: 24px"><i class="fas fa-graduation-cap"></i></span>
    				<textarea id="education" class="form-control" name="education" placeholder="Education" rows="2" readonly></textarea>
				</div>

			</div>

			<div class="col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3 text-center">
				<hr><h3 class="text-light">Contact</h3><hr>

				<div class="input-group mt-3">
    				<span class="input-group-text" style="font-size: 24px"><i class="fas fa-map-marker-alt"></i></span>
    				<textarea id="address" class="form-control" name="address" placeholder="Address" rows="2" readonly></textarea>
				</div>

				<div class="input-group mt-3">
    				<span class="input-group-text" style="font-size: 24px"><i class="fas fa-phone"></i></span>
    				<textarea id="phno" class="form-control" name="phno" placeholder="Phone Number" rows="2" readonly></textarea>
				</div>

				<div class="input-group mt-3">
    				<span class="input-group-text" style="font-size: 24px"><i class="fas fa-envelope"></i></span>
    				<textarea id="email" class="form-control" name="email" placeholder="Email" rows="2" readonly></textarea>
				</div>

				<div class="input-group mt-3">
    				<span class="input-group-text" style="font-size: 24px"><i class="fab fa-facebook"></i></span>
    				<textarea id="facebook" class="form-control" name="facebook" placeholder="Facebook profile link" rows="2" readonly></textarea>
				</div>

				<div class="input-group mt-3">
    				<span class="input-group-text" style="font-size: 24px"><i class="fab fa-instagram"></i></span>
    				<textarea id="instagram" class="form-control" name="instagram" placeholder="Instagram profile link" rows="2" readonly></textarea>
				</div>

				<div class="input-group mt-3">
    				<span class="input-group-text" style="font-size: 24px"><i class="fab fa-twitter-square"></i></span>
    				<textarea id="twiter" class="form-control" name="twiter" placeholder="Twiter profile link" rows="2" readonly></textarea>
				</div>

				<div class="input-group mt-3">
    				<span class="input-group-text" style="font-size: 24px"><i class="fab fa-github-square"></i></span>
    				<textarea id="github" class="form-control" name="github" placeholder="Git Hub profile link" rows="2" readonly></textarea>
				</div>

			</div>
			<div class="col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3 text-center">
				<hr><h3 class="text-light">Other</h3><hr>

				<div class="input-group mt-3">
    				<span class="input-group-text" style="font-size: 24px"><i class="fas fa-file-alt"></i></span>
    				<textarea id="other" class="form-control" name="other" placeholder="Other Information" rows="10" readonly></textarea>
				</div>

			</div>
		</div>
		</form>
		<hr class="bg-light">
		
		<div class="row mt-3" style="font-size: 20px;">
			<div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12  text-center">
				<h3 class="text-light">Photos</h3>
			</div>
			<div id="gallary" class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 d-inline-block text-center">
				
			</div>
		</div>
		
	</div>

	<footer class="container-fluid bg-dark text-light mt-3">
		<div class="container p-3">
			<div class="row">
				<div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 text-center">
					<a class="text-light" href="">Terms & Condition</a>&nbsp&nbsp&nbsp&nbsp
					<a class="text-light" href="">Privacy Policy</a>&nbsp&nbsp&nbsp&nbsp
					<a class="text-light" href="">Help</a>&nbsp&nbsp&nbsp&nbsp
				</div>
				<div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 text-center">
					<a class="text-light" href="">Notation</a>&nbsp&nbsp&nbsp&nbsp
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
	
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.0/js/lightbox.min.js"></script>
	
	<%
		if(id == null){
	%>
			<script type="text/javascript">alert("Profile is not available.");</script>
	<%
		} else {
	%>
			<script type="text/javascript">
				loadData(<%=id%>);
				loadProfileImage(<%=id%>);
				loadPhoto(<%=id%>);
			</script>
	<%} %>
	
</body>
</html>