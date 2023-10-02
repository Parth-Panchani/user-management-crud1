<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Task</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

</head>
<body>
	<div class="container">
		<div class="row">
			<nav
				class="navbar navbar-expand-sm bg-primary navbar-dark fixed-top p-2">
				<div class="container-fluid">
					<a class="navbar-brand" href="#">Logo</a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="collapsibleNavbar">
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link" href="#1">Table
									Example</a></li>
							<li class="nav-item"><a class="nav-link" href="#2">Contexual
									classes</a></li>
							<li class="nav-item"><a class="nav-link" href="#3">image
									shape</a></li>
							<li class="nav-item"><a class="nav-link" href="#4">Jumbotron</a>
							</li>
						</ul>
						<form class="d-flex position-absolute top-0 end-0 p-2">
							<input class="form-control me-2" type="text" placeholder="Search">
							<button class="btn btn-primary" type="button">Search</button>
						</form>
					</div>
				</div>
			</nav>
		</div>
		<div class="jumbotron text-center p-5">
			<br>
			<h1>Welcome to Our Website</h1>
			<p>Press Explore More for student crud operation</p>
			<a class="btn btn-primary btn-lg" href="user-form.jsp" role="button">Explore
				More</a>
		</div>
	</div>
</body>
</html>