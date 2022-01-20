<%-- <% response.sendRedirect("customer/list"); %> --%>

<!DOCTYPE html>
<html>
<head>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
<script
	src="${pageContext.request.contextPath }/resources/js/javascript.js"></script>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Antic+Didone&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Antic+Didone&family=Antic+Slab&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Antic&family=Antic+Didone&family=Antic+Slab&display=swap"
	rel="stylesheet">

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
			<h1>Welcome to the Customer Portal</h1>

			<hr class="shortline">

			<div id="signup_button" class="button">
				<input id="signup" type="button" value="Sign Up"
					onclick="window.location.href='customer/showFormForUser'; return false;"
					class="add-button" />
			</div>

			<div id="admin_button" class="button">
				<input type="button" value="Log In"
					onclick="window.location.href='customer/showUserLogin'; return false;"
					class="add-button" />
			</div>

			<div id="admin_button" class="button">
				<input type="button" value="Admin Portal"
					onclick="window.location.href='customer/showUserLogin'; return false;"
					class="add-button" />
			</div>
		</div>
	</div>

</body>

</html>