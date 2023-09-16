<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Cover</title>
</head>
<body>
	<form action="updateCover.do" method="POST">
		<input type="hidden" name="id" value="${cover.id}">
		<label for="title">Title:</label>
		<input type="text" name="title" value="${cover.title}">
		<br>
		<label for="originalArtist">Original Artist:</label>
		<input type="text" name="originalArtist" value="${cover.originalArtist}">
		<br>
		<label for="songKey">Key:</label>
		<input type="text" name="songKey" value="${cover.songKey}">
			<br>
		<label for="capo">Capo:</label>
		<input type="text" name="capo" value="${cover.capo}">
		<br>
		<label for="status">Status:</label>
		<input list="status" name="status">
		<datalist id="status">
			<option value="Mastered">
			<option value="Practicing">
			<option value="Not Started">
		</datalist>
		<br>
		<label for="chordsURL">Link to Chords:</label>
		<input type="text" name="chordsURL" value="${cover.chordsURL}"> <br>
		<input type="submit" value="Update Cover">
	</form>

</body>
</html>