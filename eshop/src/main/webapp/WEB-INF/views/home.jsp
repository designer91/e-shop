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
<script>
	window.menu = '${title}';
	window.contextRoot = '${contextRoot}';
</script>
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
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/v/bs5/dt-1.11.5/datatables.min.css" />
</head>
<body class="d-flex flex-column min-vh-100">
	<!-- Navigation-->
	<%@ include file="./template/navbar.jsp"%>

	<!-- Section-->
	<c:if test="${userClickHome==true}">
		<%@ include file="index.jsp"%>
	</c:if>

	<c:if test="${userClickProducts==true}">
		<%@ include file="listOfProducts.jsp"%>
	</c:if>

	<c:if test="${userClickAbout==true}">
		<%@ include file="about.jsp"%>
	</c:if>

	<c:if test="${userClickContact==true}">
		<%@ include file="contact.jsp"%>
	</c:if>

	<c:if
		test="${userClickAllProducts==true or userClickCategoryProducts==true}">
		<%@ include file="listOfProducts.jsp"%>
	</c:if>

	<c:if test="${userClickShowProduct==true}">
		<%@ include file="singleProduct.jsp"%>
	</c:if>

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
	<!-- Font Awesome -->
	<script src="https://kit.fontawesome.com/a92cc1dc3d.js"
		crossorigin="anonymous"></script>
	<!-- DataTable plugin -->
	<script type="text/javascript"
		src="https://cdn.datatables.net/v/bs5/dt-1.11.5/datatables.min.js"></script>
	<!-- Core theme JS-->
	<script src="${js}/scripts.js"></script>
	<!-- Custom JS -->
	<script type="text/javascript" src="${js}/custom.js"></script>
</body>
</html>