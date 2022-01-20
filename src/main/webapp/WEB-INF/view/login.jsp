<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>
<title>Login</title>

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<script
	src="${pageContext.request.contextPath }/resources/js/javascript.js"></script>
</head>

<body>

	<div class="whole-thing">
		<nav id="sidebar">
			<a class="closebtn" onclick="closeNav()">&times;</a> <a href="http://localhost:8080/Spring-mvc-demo/">Home</a>
			<a
				href="http://localhost:8080/Spring-mvc-demo/customer/showFormForUser">Sign
				Up</a> <a href="http://localhost:8080/Spring-mvc-demo/customer/showUserLogin">Log In</a> <a
				href="http://localhost:8080/Spring-mvc-demo/customer/showUserLogin">Admin</a>

		</nav>
		<button class="open-sidebar" onclick="openNav()">
			<p>&#8801</p>
		</button>

		<div id="main">
			<div style="width: 100%; height: 50px;"></div>
			<h1>Login</h1>

			<hr class="shortline">

			<div class="form-wrapper">
				<form:form action="validateUser" modelAttribute="customer"
					method="POST">
					<!-- need to associate this data with customer id -->
					<form:hidden path="id" />
					<table>
						<tbody>
							<tr>
								<td><label>First name:</label></td>
								<td><form:input path="firstName" /></td>
							</tr>
							<tr>
								<td><label>Last name:</label></td>
								<td><form:input path="lastName" /></td>
							</tr>
							<tr>
								<td><label>Email:</label></td>
								<td><form:input path="email" /></td>
							</tr>
							<tr>
								<td><label></label></td>
								<td><input type="submit" value="Log In" class="save" /></td>
							</tr>
						</tbody>
					</table>
				</form:form>
			</div>

		</div>
	</div>
</body>

</html>









