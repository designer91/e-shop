<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="Nabil Azri" />
<title>eShop Market - ${title}</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="${images}/eShop.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="${css}/styles.css" rel="stylesheet" />
<link href="${css}/custom.css" rel="stylesheet" />
<%-- <link href="${css}/dataTables.bootstrap5.css" rel="stylesheet" /> --%>
<!-- <link href="${css}/jquery.dataTables.css" rel="stylesheet" /> -->
</head>
<body class="d-flex flex-column min-vh-100">
	<nav
		class="navbar sticky-top navbar-expand-lg navbar-dark bg-dark eshop-navbar">
		<div class="container px-4 px-lg-5">
			<a class="navbar-brand" href="${contextRoot}/home"> <img
				src="${images}/logo_eShop-v1.png" alt="eShop Logo" width="250"
				height="50" />
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02"
				aria-controls="navbarTogglerDemo02" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
	</nav>

	<header class="bg-primary py-5">
		<div class="container px-4 px-lg-5 my-5">
			<div class="text-center text-white">
				<h1 class="display-4 fw-bolder">${errorTitle}</h1>
				<p class="lead fw-normal text-white-50 mb-0 text-break">${errorDescription}</p>
			</div>
		</div>
	</header>


	<!-- Footer-->
	<%@ include file="./template/footer.jsp"%>

	<!-- jQuery -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>

</body>
</html>