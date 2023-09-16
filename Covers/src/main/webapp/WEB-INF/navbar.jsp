<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="home.do"><img src="images/darkLogo.png" alt="logo" height="50"/>
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home.do">Home</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            View Covers
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">By Key</a></li>
            <li><a class="dropdown-item" href="getStatus.do">By Status</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">View All</a></li>
          </ul>
        </li>
      </ul>
      <form class="d-flex" role="search" action="getCover.do">
        <input class="form-control me-2" type="search" name="id" placeholder="Search by Cover ID" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>