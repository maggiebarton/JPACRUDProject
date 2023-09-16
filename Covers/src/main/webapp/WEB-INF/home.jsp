<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Maggie's Covers</title>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body>
	<jsp:include page="navbar.jsp" />
	<h1>Maggie Covers Songs</h1>
	<c:forEach var="cover" items="${covers}">
		<a href="getCover.do?id=${cover.id}" ${cover}>${cover.title}</a>
	</c:forEach>
	<a href="add.html">Add Cover</a>
	<jsp:include page="bootstrapScript.jsp" />
</body>
</html>