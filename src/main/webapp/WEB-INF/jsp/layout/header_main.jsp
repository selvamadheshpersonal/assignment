<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Student Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="assets/css/theme.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
	<nav class="navbar navbar-expand-md navbar-dark fixed-top header-bg">
		<h4>Plant-a-Tree</h4>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarsExampleDefault"
			aria-controls="navbarsExampleDefault" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarsExampleDefault">
			<ul class="navbar-nav ms-auto">
			<li class="nav-item active"><a class="nav-link"
					href="/">All</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="/indoor">Indoor Plants</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/outdoor">Outdoor Plants</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="index">Login</a></li>
				<li class="nav-item"><a class="nav-link"
					href="addToCart">Cart</a></li>
				<li class="nav-item"><a class="nav-link"
					href="logOut">Logout</a></li>
				<li class="nav-item">
				 <form class="form-inline my-2 my-lg-0" action="/search" method="POST">
      <input class="form-control mr-sm-2" type="text" name="sName" placeholder="Search" aria-label="Search">
      <button class="btn btn-default" type="submit"><span class="glyphicon glyphicon-search"></span></button>
    </form>
				</li>
			</ul>
			
		</div>

	</nav>