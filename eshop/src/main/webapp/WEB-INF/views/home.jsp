<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>eShop Market - ${title}</title>
        <script>
        	window.menu = '${title}';
        </script>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${css}/styles.css" rel="stylesheet" />
        <link href="${css}/custom.css" rel="stylesheet" />
    </head>
    <body class="d-flex flex-column min-vh-100">
        <!-- Navigation-->
        <%@ include file="./template/navbar.jsp" %>
        
        <!-- Section-->
        <c:if test="${userClickHome==true}">
        	<%@ include file="index.jsp" %>
        </c:if>
        
        <c:if test="${userClickProducts==true}">
        	<%@ include file="products.jsp" %>
        </c:if>
        
        <c:if test="${userClickAbout==true}">
        	<%@ include file="about.jsp" %>
        </c:if>
        
        <c:if test="${userClickContact==true}">
        	<%@ include file="contact.jsp" %>
        </c:if>
        
        <!-- Footer-->
 		<%@ include file="./template/footer.jsp" %>
        
        <!-- jQuery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="${js}/scripts.js"></script>
        <!-- Custom JS -->
        <script type="text/javascript" src="${js}/custom.js"></script>
    </body>
</html>