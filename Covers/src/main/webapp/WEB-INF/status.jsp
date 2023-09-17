<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cover Status</title>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body class="bg-image img-fluid" id="pageBackground">
	<jsp:include page="navbar.jsp" />
	<div class="container">
	<h1 class="text-light" id="topPadding">Delete Cover</h1>
	<p class="lead text-success">Cover deleted successfully.</p><br>
	<a href="home.do" class="btn btn-success">Back to Home</a>
	</div>

	<jsp:include page="bootstrapScript.jsp" />
</body>
</html>