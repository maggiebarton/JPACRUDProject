<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Covers By Key</title>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body class="bg-image img-fluid" id="pageBackground">
	<jsp:include page="navbar.jsp" />
	<div class="container">
		<h1 class="text-light" id="topPadding">Covers by Key</h1>
		<div class="accordion accordion-flush" id="accordionFlushExample">
			<div class="accordion-item">
				<h2 class="accordion-header">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
						aria-expanded="false" aria-controls="flush-collapseOne">
						Keys of A</button>
				</h2>
				<div id="flush-collapseOne" class="accordion-collapse collapse"
					data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						<c:choose>
							<c:when test="${empty A}">
								<p class="lead">No songs in this key.</p>
							</c:when>
							<c:otherwise>
								<table class="table table-striped">
									<thead class="table-dark">
										<tr>
											<th>KEY</th>
											<th>SONG</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="cover" items="${A}">
											<tr>
												<td>${cover.songKey}</td>
												<td><a href="getCover.do?id=${cover.id}">
														${cover.title} by ${cover.originalArtist}</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
			<div class="accordion-item">
				<h2 class="accordion-header">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo"
						aria-expanded="false" aria-controls="flush-collapseTwo">
						Keys of B</button>
				</h2>
				<div id="flush-collapseTwo" class="accordion-collapse collapse"
					data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						<c:choose>
							<c:when test="${empty B}">
								<p class="lead">No songs in this key.</p>
							</c:when>
							<c:otherwise>
								<table class="table table-striped">
									<thead class="table-dark">
										<tr>
											<th>KEY</th>
											<th>TITLE</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="cover" items="${B}">
											<tr>
												<td>${cover.songKey}</td>
												<td><a href="getCover.do?id=${cover.id}">
														${cover.title} by ${cover.originalArtist}</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
			<div class="accordion-item">
				<h2 class="accordion-header">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#flush-collapseThree"
						aria-expanded="false" aria-controls="flush-collapseThree">
						Keys of C</button>
				</h2>
				<div id="flush-collapseThree" class="accordion-collapse collapse"
					data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						<c:choose>
							<c:when test="${empty C}">
								<p class="lead">No songs in this key.</p>
							</c:when>
							<c:otherwise>
								<table class="table table-striped">
									<thead class="table-dark">
										<tr>
											<th>KEY</th>
											<th>TITLE</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="cover" items="${C}">
											<tr>
												<td>${cover.songKey}</td>
												<td><a href="getCover.do?id=${cover.id}">
														${cover.title} by ${cover.originalArtist}</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
			<div class="accordion-item">
				<h2 class="accordion-header">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#flush-collapseFour"
						aria-expanded="false" aria-controls="flush-collapseFour">
						Keys of D</button>
				</h2>
				<div id="flush-collapseFour" class="accordion-collapse collapse"
					data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						<c:choose>
							<c:when test="${empty D}">
								<p class="lead">No songs in this key.</p>
							</c:when>
							<c:otherwise>
								<table class="table table-striped">
									<thead class="table-dark">
										<tr>
											<th>KEY</th>
											<th>TITLE</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="cover" items="${D}">
											<tr>
												<td>${cover.songKey}</td>
												<td><a href="getCover.do?id=${cover.id}">
														${cover.title} by ${cover.originalArtist}</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
			<div class="accordion-item">
				<h2 class="accordion-header">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#flush-collapseFive"
						aria-expanded="false" aria-controls="flush-collapseFive">
						Keys of E</button>
				</h2>
				<div id="flush-collapseFive" class="accordion-collapse collapse"
					data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						<c:choose>
							<c:when test="${empty E}">
								<p class="lead">No songs in this key.</p>
							</c:when>
							<c:otherwise>
								<table class="table table-striped">
									<thead class="table-dark">
										<tr>
											<th>KEY</th>
											<th>TITLE</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="cover" items="${E}">
											<tr>
												<td>${cover.songKey}</td>
												<td><a href="getCover.do?id=${cover.id}">
														${cover.title} by ${cover.originalArtist}</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
			<div class="accordion-item">
				<h2 class="accordion-header">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#flush-collapseSix"
						aria-expanded="false" aria-controls="flush-collapseSix">
						Keys of F</button>
				</h2>
				<div id="flush-collapseSix" class="accordion-collapse collapse"
					data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						<c:choose>
							<c:when test="${empty F}">
								<p class="lead">No songs in this key.</p>
							</c:when>
							<c:otherwise>
								<table class="table table-striped">
									<thead class="table-dark">
										<tr>
											<th>KEY</th>
											<th>TITLE</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="cover" items="${F}">
											<tr>
												<td>${cover.songKey}</td>
												<td><a href="getCover.do?id=${cover.id}">
														${cover.title} by ${cover.originalArtist}</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
			<div class="accordion-item">
				<h2 class="accordion-header">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#flush-collapseSeven"
						aria-expanded="false" aria-controls="flush-collapseSeven">
						Keys of G</button>
				</h2>
				<div id="flush-collapseSeven" class="accordion-collapse collapse"
					data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						<c:choose>
							<c:when test="${empty G}">
								<p class="lead">No songs in this key.</p>
							</c:when>
							<c:otherwise>
								<table class="table table-striped">
									<thead class="table-dark">
										<tr>
											<th>KEY</th>
											<th>TITLE</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="cover" items="${G}">
											<tr>
												<td>${cover.songKey}</td>
												<td><a href="getCover.do?id=${cover.id}">
														${cover.title} by ${cover.originalArtist}</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</div>


	</div>
	<jsp:include page="bootstrapScript.jsp" />
</body>
</html>