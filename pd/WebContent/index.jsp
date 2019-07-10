<%@page import="java.sql.ResultSet"%>
<%@page import="pd.java.dao.ProfileDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="description" content="One stop repository for people">
  	<meta name="keywords" content="people dictionary,pd">
  	<meta name="author" content="Manish Parui">
  	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap-grid.css">
	<link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap-reboot.css">

	<link rel="stylesheet" type="text/css" href="resources/custom/custom.css">
	
	<script type="text/javascript" src="resources/custom/custom.js"></script>

	<title>People Dictionary</title>
</head>

<body class="cus-body">
	<nav class="navbar bg-dark navbar-dark fixed-top">
		<a class="navbar-brand" href="">PEOPLE DICTIONARY</a>
		
		<form class="form-inline" action="">
			<input class="from-control" type="text" name="searchkey" placeholder="search">
			&nbsp
			<button class="btn btn-success" type="submit">Search</button>
		</form>
	</nav>

	<div class="container" style="margin-top: 100px">
		<div class="row">
			
			<div class="col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
				<div class="chip" id="0" onclick="profile(this)">
  					<img src="resources/images/img_avatar.png" alt="Person">
  					John Doe
				</div>
			</div>

			<%
				ProfileDao pdao = new ProfileDao();
				ResultSet rs = pdao.retrieveNameAndId();
				
				while(rs != null && rs.next()){	
			%>
					<div class="col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
						<div class="chip" id="<%=rs.getString("id") %>" onclick="profile(this)">
  							<img src="resources/images/img_avatar.png" alt="Person">
  							<%=rs.getString("name") %>
						</div>
					</div>
			<%		
				}
				if(rs == null){
					//error page
				}
				rs.close();
			%>

		</div>
	</div>
	
	<footer class="container-fluid bg-dark text-light mt-3" style="margin-bottom: 0;">
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
</body>
</html>