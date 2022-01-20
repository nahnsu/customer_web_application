<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>

<head>
<title>Your Info</title>

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<script
	src="${pageContext.request.contextPath }/resources/js/javascript.js"></script>
</head>

<body>

	<div id="whole-thing">
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
			<h2>Your Info</h2>


			<div class="table-wrapper">
				<table>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
						<th>Action</th>
					</tr>

					<!-- loop over and print our customers -->
					<c:forEach var="tempCustomer" items="${customer}">

						<!-- construct an "update" link with customer id -->
						<c:url var="updateLink" value="/customer/showFormForUserUpdate">
							<c:param name="customerId" value="${tempCustomer.id}" />
						</c:url>

						<!-- construct an "delete" link with customer id -->
						<c:url var="deleteLink" value="/customer/deleteUser">
							<c:param name="customerId" value="${tempCustomer.id}" />
						</c:url>

						<tr>
							<td>${tempCustomer.firstName}</td>
							<td>${tempCustomer.lastName}</td>
							<td>${tempCustomer.email}</td>

							<td>
								<!-- display the update link --> <a href="${updateLink}">Update</a>
								| <a href="${deleteLink}"
								onclick="if (!(confirm('Are you sure you want to delete your account?'))) return false">Delete</a>
							</td>

						</tr>

					</c:forEach>

				</table>

			</div>

		</div>

	</div>

</body>

</html>









