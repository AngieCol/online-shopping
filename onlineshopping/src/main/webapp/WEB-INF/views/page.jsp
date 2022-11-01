<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<meta name="author" content="" />
<title>Online Shopping - ${title}</title>
<script>
	window.menu = '${title}';
</script>

<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="${css}/styles.css" rel="stylesheet" />
<link href="${css}/myapp.css" rel="stylesheet" />
<!-- <link href="${css}/bootstrap-luxury-theme.css" rel="stylesheet" />
<link href="${css}/bootstrap-sandstone-theme.css" rel="stylesheet" />-->
</head>
<body>
	<div class="wrapper">
		<!-- Navigation-->
		<%@include file="./shared/navbar.jsp"%>

		<!-- Header-->
		<%@include file="./shared/header.jsp"%>

		<!-- Page Content -->
		<div class="content">
			<!-- Home -->
			<c:if test="${userClickHome ==true}">
				<%@include file="home.jsp"%>
			</c:if>
			<!-- About -->
			<c:if test="${userClickAbout ==true}">
				<%@include file="about.jsp"%>
			</c:if>

			<!-- Contact -->
			<c:if test="${userClickContact ==true}">
				<%@include file="contact.jsp"%>
			</c:if>
			
			<c:if test="${userClickAllProducts ==true or userClickCategoryProducts ==true}">
				<%@include file="listProducts.jsp"%>
			</c:if>

		</div>
		<!-- Footer-->
		<%@include file="./shared/footer.jsp"%>

		<!-- Bootstrap css
		<script src="${css}/bootstrap-sandstone-theme.css"></script>-->
		<!-- Bootstrap core JS-->
		<script src="${js}/bootstrap.bundle.min.js"></script>
		<!-- Core theme JS-->
		<script src="${js}/scripts.js"></script>
		<script
			src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<!-- Self coded Javascript-->
		<script src="${js}/myapp.js"></script>

	</div>

</body>
</html>