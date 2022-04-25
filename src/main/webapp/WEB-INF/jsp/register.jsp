<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" import="java.util.*"%>
   <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Plant-A-Tree Registration</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" type="text/css" href="assets/css/util.css">
   <link rel="stylesheet" type="text/css"  href="assets/css/main.css">
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
<div class="container-login100" style="background-image: url('assets/img/gallery/bg-03.jpg');">
		<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
			
				<span class="login100-form-title p-b-37">
					Sign Up
				</span>
					<div class="wrap-input100 validate-input m-b-20" data-validate="Enter Username or Email">
					<input class="input100" type="text" name="firstName" id="firstName" placeholder="First Name">
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input m-b-20" data-validate="Enter Username or Email">
					<input class="input100" type="text" name="lastName" id="lastName" placeholder="Last Name">
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input m-b-20" data-validate="Enter Username or Email">
					<input class="input100" type="email" name="email" id="email" placeholder="Email">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-25" data-validate = "Enter Password">
					<input class="input100" type="password" name="password" id="password" placeholder="Password">
					<span class="focus-input100"></span>
				</div>

				<div class="container-login100-form-btn">
					<button class="login100-form-btn" id="register">
						Create
					</button>
				</div>

	

</body>
</html>
