<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Maggie Covers Songs</title>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body class="bg-image" id="mainBackground">
	<jsp:include page="navbar.jsp" />
	<div class="container">
		<div class="row float-lg-end" id="topPadding">
			<h3 class="text-light">Currently Practicing</h3>
			<div class="card bg-body-tertiary float-lg-end"">
				<c:forEach var="cover" items="${covers}">
					<div class="card-body">
						<h5 class="card-title">${cover.title}</h5>
						<p class="card-text">
							<strong>Original Artist:</strong> ${cover.originalArtist}<br>
							<strong>Key:</strong> ${cover.songKey}<br>
						</p>
						<a href="getCover.do?id=${cover.id}" class="btn btn-success">View
							Details</a>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<jsp:include page="bootstrapScript.jsp" />
</body>
</html>