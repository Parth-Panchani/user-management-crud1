<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<title>User Management Application</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	integrity="sha384-kzVR5T5pd18z6fiWc7jjK3Xn0NkOmPp7f5F5w5P2FUR4hUH4hE8jo1H5eKI5R5kP5"
	crossorigin="anonymous">
</head>

<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<p class="navbar-brand">User Management App</p>
			</div>

			<ul class="navbar-nav">
				<li class="nav-item"><a
					href="<%=request.getContextPath()%>/list" class="nav-link">Users</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${user != null}">
                            Edit User
                        </c:if>
						<c:if test="${user == null}">
                            Add New User
                        </c:if>
					</h2>
				</caption>

				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>

				<div class="mb-3">
					<label for="name" class="form-label">User Name</label> <input
						type="text" value="<c:out value='${user.name}' />"
						class="form-control" name="name" required="required">
				</div>

				<div class="mb-3">
					<label for="email" class="form-label">User Email</label> <input
						type="text" value="<c:out value='${user.email}' />"
						class="form-control" name="email">
				</div>

				<div class="mb-3">
					<label for="country" class="form-label">User Country</label> <input
						type="text" value="<c:out value='${user.country}' />"
						class="form-control" name="country">
				</div>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>

</html>
