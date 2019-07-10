<%@page import="java.sql.ResultSet"%>
<%@page import="pd.java.dao.ProfileDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<!-- add-profile -->
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" type="text/css" href="./../resources/bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="./../resources/bootstrap/css/bootstrap-grid.css">
	<link rel="stylesheet" type="text/css" href="./../resources/bootstrap/css/bootstrap-reboot.css">

	<link rel="stylesheet" type="text/css" href="./../resources/fontawesome-free-5.7.2-web/css/all.min.css">

	<link rel="stylesheet" type="text/css" href="./../resources/custom/custom.css">
	
	<script type="text/javascript" src="./../resources/ajax/UploadPhoto.js"></script>
	

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

	<div class="container" style="margin-top: 100px">
		
		<div class="row">
		
			<div class="col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3 text-center">
				<hr><h3 class="text-light">Picture upload</h3><hr>
				
				
				<form enctype='multipart/form-data'>
					<div class="input-group mt-3">
						<select class="form-control" id="id">
						<%
							ProfileDao pdao = new ProfileDao();
							ResultSet rs = pdao.retrieveNameAndId();
							while(rs.next()){
								String id = rs.getString("id");
								String name = rs.getString("name");
						%>
								<option value="<%=id %>"><%=name %></option>
						<%
							}
						%>
						</select>
					</div>
					
					<div class="input-group mt-3">
						<label for="photos" class="cus-click bg-light mx-auto p-1 rounded">
							browse
						</label>
						<input class="d-none" id="photos" type="file" multiple>
					</div>
					
					<div class="input-group mt-3">
						<button class="btn-light mx-auto rounded p-1" type="button" onclick="uploadPhoto();">upload</button>
					</div>
				</form>
			</div>
			
		</div>
	
	</div>

</body>
</html>