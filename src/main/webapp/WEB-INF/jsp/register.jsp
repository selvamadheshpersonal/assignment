<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" import="java.util.*"%>
   <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Plant-A-Tree Registration</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#register").bind('click',function(){
		document.registrationForm.firstName.value=$("#firstName").val();
		document.registrationForm.lastName.value=$("#lastName").val();
		document.registrationForm.emailId.value=$("#email").val();
		document.registrationForm.password.value=$("#password").val();
		document.registrationForm.submit();
	});
});

</script>
</head>
<body>
<form name="registrationForm" action="register" method="post">
<input type="hidden" name="firstName"/>
<input type="hidden" name="lastName"/>
<input type="hidden" name="emailId"/>
<input type="hidden" name="password"/>

</form>
<c:if test="${responseDetails.responseCode eq '000' }">
<c:out value="${responseDetails.responseMessage}"/>. Click here to <a href="index">Login</a>
</c:if>
<c:if test="${responseDetails.responseCode ne '000' }">
<c:out value="${responseDetails.responseMessage}"/>
</c:if>
<div class="container mt-3">
  <h2>Registration form</h2>
  <form>
   <div class="mb-3 mt-3">
      <label for="firstName">First Name:</label>
      <input type="text" class="form-control" id="firstName" placeholder="Enter First Name">
    </div>
    <div class="mb-3 mt-3">
      <label for="lastName">Last Name:</label>
      <input type="text" class="form-control" id="lastName" placeholder="Enter Last Name">
    </div>
    <div class="mb-3">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email">
    </div>
    <div class="mb-3">
      <label for="password">Password:</label>
      <input type="password" class="form-control" id="password" placeholder="Enter password">
    </div>
    
    <button type="button" class="btn btn-primary" id="register">Submit</button>
  </form>
</div>

</body>
</html>
