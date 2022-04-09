<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" import="java.util.*"%>
   <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Plant-A-Tree</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
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
<c:out value="${responseDetails.responseMessage}"/>
<div class="container mt-3">
  <h2>Login form</h2>
  <form>
    <div class="mb-3">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email">
    </div>
    <div class="mb-3">
      <label for="password">Password:</label>
      <input type="password" class="form-control" id="password" placeholder="Enter password">
    </div>
    
    <button type="button" class="btn btn-primary" id="login">Submit</button>
  </form>
    <a href="loadRegistration">Register</a>
  
</div>

</body>
</html>
