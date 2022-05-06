<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" import="java.util.*"%>
   <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
   <%@ include file="layout/header_login.jsp"%>
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
  <style>
body {font-family: Arial, Helvetica, sans-serif;}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
</style>
  
<script type="text/javascript">
// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];
function validate(){
var firstName = document.forms["registrationForm"]["firstName"];
    var lastName = document.forms["registrationForm"]["lastName"];            
    var emailId = document.forms["registrationForm"]["emailId"]; 
    var password = document.forms["registrationForm"]["password"];
    if (firstName.value === "")                                 
    { 
        document.getElementById('errors').innerHTML="Please enter First Name !";
        firstName.focus(); 
        return false; 
    } 
     if (lastName.value === "")                                 
    { 
       document.getElementById('errors').innerHTML="*Please enter Last Name !";
        lastName.focus(); 
        return false; 
    }
     if (emailId.value === "")                                 
    { 
        document.getElementById('errors').innerHTML="Please enter Email !";
        emailId.focus(); 
        return false; 
    }
     if (password.value === "")                                 
    { 
     document.getElementById('errors').innerHTML="Please enter Password !";
        password.focus(); 
        return false; 
    }
     modal.style.display = "block";
     return true;


}
</script>
</head>
<body>




<c:if test="${responseDetails.responseCode eq '000' }">
<c:out value="${responseDetails.responseMessage}"/>. Click here to <a href="index">Login</a>
<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <p><c:out value="${responseDetails.responseMessage}"/>. Click here to <a href="index">Login</a></p>
  </div>

</div>
</c:if>
<c:if test="${responseDetails.responseCode ne '000' }">
<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <p><c:out value="${responseDetails.responseMessage}"/></p>
  </div>

</div>

</c:if>
<div class="container-login100" style="background-image: url('assets/img/gallery/bg-03.jpg');">
		<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
			
				<span class="login100-form-title p-b-37">
					Sign Up
				</span>
				<form name="registrationForm" method="post" action="register" onsubmit="return validate()">
					<div class="wrap-input100  m-b-20" >
					<input class="input100" type="text" name="firstName" id="firstName" placeholder="First Name">
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100  m-b-20" >
					<input class="input100" type="text" name="lastName" id="lastName" placeholder="Last Name">
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100  m-b-20" >
					<input class="input100" type="email" name="emailId" id="emailId" placeholder="Email">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100  m-b-25" >
					<input class="input100" type="password" name="password" id="password" placeholder="Password">
					<span class="focus-input100"></span>
				</div>
				<div id ="errors" style="color:red;" class="text-center">
      			</div>
				<div class="container-login100-form-btn">
					<button class="login100-form-btn" id="register" type="submit">
						Create
					</button>
				</div>
</form>
	

</body>
</html>
