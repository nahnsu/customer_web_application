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
			<h1>You have failed to log in</h1>

			<hr class="shortline">
			
			<p>Return to the home page</p>
			
			<a href="http://localhost:8080/Spring-mvc-demo/">here</a>
		</div>
	</div>

</body>

</html>