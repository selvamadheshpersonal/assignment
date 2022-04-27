<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" import="java.util.*"%>
   <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
  <%@ include file="layout/header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Plant-A-Tree</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css"  href="assets/css/main.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#login").bind('click',function(){
		document.loginForm.emailId.value=$("#email").val();
		document.loginForm.password.value=$("#password").val();
		document.loginForm.submit();
	});
});

</script>
</head>
<body>
<form name="loginForm" action="authenticate" method="post">
<input type="hidden" name="firstName"/>
<input type="hidden" name="lastName"/>
<input type="hidden" name="emailId"/>
<input type="hidden" name="password"/>

</form>
<div class="row" style="margin-top: 100px;">
<c:forEach var = "plant" items="${plants}">

<div class="card" style="width: 18.5rem;margin: 10px;">
  <img class="card-image" src="${plant.imageName}" alt="Card image cap">
  <div class="card-body">
    <a href="viewPlantDetails?plantId=${plant.id}" ><h5 class="card-title">${ plant.plantName}</h5>  </a>
    <p class="card-text">£ ${ plant.price}</p>
 
  </div>
</div>
 
</c:forEach>

</div>
</body>
</html>
