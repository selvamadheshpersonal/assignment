<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" import="java.util.*"%>
   <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Plant-A-Tree</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
   <link rel="stylesheet" type="text/css" href="assets/css/util.css">
   <link rel="stylesheet" type="text/css"  href="assets/css/main.css">
   
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<div class="row" style="margin-top: 100px;">
<div class="col">
 <img class="card-image" src="${selectedPlant.imageName}" alt="image">
</div>
<div class="col">
<h2><c:out value="${selectedPlant.plantName}"/></h2>
<h5><c:out value="£ ${selectedPlant.price}"/></h5>
<div class="container-login100-form-btn">
					<button class="login100-form-btn" id="register">
					<a href="addToCart?selectedPlantId=${selectedPlant.id}" >
						Add to Cart
					</a>
						
					</button>
				</div>
</div>
<div>
<div class="row">
<h5><c:out value="${selectedPlant.description}"/></h5>
</div>
</body>
</html>