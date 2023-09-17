<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Cover</title>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body class="bg-image img-fluid" id="pageBackground">
	<jsp:include page="navbar.jsp" />
	<div class="container">
	<h1 class="text-light" id="topPadding">Update Cover</h1><br>
		<form action="updateCover.do" method="POST" class="row g-3 bg-light" style="padding: 10px;">
		<input type="hidden" name="id" value="${cover.id}">
			<div class="col-md-6">
				<label for="title" class="form-label">Title</label>
				<input type="text" class="form-control" name="title" value="${cover.title}">
			</div>
			<div class="col-md-6">
				<label for="originalArtist" class="form-label">Original Artist</label>
				<input type="text" class="form-control" name="originalArtist" value="${cover.originalArtist}">
			</div>

			<div class="col-md-2">
				<label for="songKey" class="form-label">Key</label>
				<input type="text" class="form-control" name="songKey" value="${cover.songKey}">
			</div>
			<div class="col-md-2">
				<label for="capo" class="form-label">Capo</label>
				<input type="text" class="form-control" name="capo" value="${cover.capo}">
			</div>
			<div class="col-md-4">
				<label for="status" class="form-label">Status</label>
				<select name="status" class="form-select">
					<option selected>Choose...</option>
					<option>Not Started</option>
					<option>Practicing</option>
					<option>Mastered</option>
				</select>
			</div>
			<div class="col-12">
				<label for="chordsURL" class="form-label">Link to Chords:</label>
				<input type="text" class="form-control" name="chordsURL" value="${cover.chordsURL}">
			</div>
			<div class="col-12">
				<button type="submit" class="btn btn-success">Update Cover</button>
			</div>
		</form>
	</div>
	<jsp:include page="bootstrapScript.jsp" />
</body>
</html>