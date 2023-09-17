<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Covers</title>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body class="bg-image img-fluid" id="pageBackground">
	<jsp:include page="navbar.jsp" />
	<div class="container">
		<h1 class="text-light" id="topPadding">All Covers</h1>
		<table class="table table-striped">
			<thead class="table-dark">
				<tr>
					<th>ID</th>
					<th>SONG</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cover" items="${covers}">
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