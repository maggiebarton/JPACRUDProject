<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${cover.title }</title>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body class="bg-image img-fluid" id="pageBackground">
	<jsp:include page="navbar.jsp" />
	<div class="container">
		<h1 class="text-light" id="topPadding">${cover.title}-
			${cover.originalArtist}</h1>

		<ul class="list-group" style="width: 18em;">
			<li class="list-group-item"><strong>ID: </strong>${cover.id}</li>
			<li class="list-group-item"><strong>Key: </strong>${cover.songKey}</li>
			<li class="list-group-item"><strong>Capo: </strong>${cover.capo}</li>
			<li class="list-group-item"><strong>Status: </strong>${cover.status}</li>
			<li class="list-group-item"><c:choose>
					<c:when test="${empty cover.chordsURL}">
					<strong><a target="_blank" href="https://www.google.com/search?q=<c:out value="${cover.title } ${cover.originalArtist}"/> chords">View Chords </a></strong>
					</c:when>
					<c:otherwise>
						<strong><a target="_blank" href="${cover.chordsURL}">View Chords</a></strong>
					</c:otherwise>
				</c:choose></li>
		</ul>
		<br> <a href="update.do?id=${cover.id}" class="btn btn-success">Update
			Cover</a> <a href="delete.do?id=${cover.id}" class="btn btn-danger">Delete
			Cover</a>
	</div>
	<jsp:include page="bootstrapScript.jsp" />
</body>
</html>