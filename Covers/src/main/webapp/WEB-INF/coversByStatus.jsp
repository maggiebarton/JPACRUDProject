<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Covers By Status</title>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body class="bg-image img-fluid" id="pageBackground">
	<jsp:include page="navbar.jsp" />
	<div class="container">
		<h1 class="text-light" id="topPadding">Covers by Status</h1>

		<h3 class="text-light bg-success border border-success rounded-3"
			style="padding: 10px;">
			Mastered
			<jsp:include page="fullStars.jsp" />
		</h3>
		<table class="table table-striped">
			<thead class="table-dark">
				<tr>
					<th>ID</th>
					<th>SONG</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cover" items="${mastered}">
					<tr>
						<td>${cover.id}</td>
						<td><a href="getCover.do?id=${cover.id}"> ${cover.title}
								by ${cover.originalArtist}</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<h3 class="text-light bg-warning border border-warning rounded-3"
			style="padding: 10px;">
			Practicing
			<jsp:include page="halfStars.jsp" />
		</h3>

		<table class="table table-striped">
			<thead class="table-dark">
				<tr>
					<th>ID</th>
					<th>TITLE</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cover" items="${practicing}">
					<tr>
						<td>${cover.id}</td>
						<td><a href="getCover.do?id=${cover.id}"> ${cover.title}
								by ${cover.originalArtist}</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<h3 class="text-light bg-danger border border-danger rounded-3"
			style="padding: 10px;">
			Not Started
			<jsp:include page="noStars.jsp" />
		</h3>

		<table class="table table-striped">
			<thead class="table-dark">
				<tr>
					<th>ID</th>
					<th>SONG</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cover" items="${notStarted}">
					<tr>
						<td>${cover.id}</td>
						<td><a href="getCover.do?id=${cover.id}"> ${cover.title}
								by ${cover.originalArtist}</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<jsp:include page="bootstrapScript.jsp" />
</body>
</html>