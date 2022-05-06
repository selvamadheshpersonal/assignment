<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" import="java.util.*"%>
   <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ include file="layout/header_login.jsp"%>
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
<script type="text/javascript">
function validate(){           
    var emailId = document.forms["loginForm"]["emailId"]; 
    var password = document.forms["loginForm"]["password"];

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
     return true;


}

</script>
</head>
<body>


<div class="container-login100" style="background-image: url('assets/img/gallery/bg-01.jpg');">
		<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
			<form name="loginForm" action="authenticate" method="post" onsubmit="return validate()">
				<span class="login100-form-title p-b-37">
					Login
				</span>
				<div  style="color:red;" class="text-center">
				<c:out value="${responseDetails.responseMessage}"/>
      			</div>
				<div class="wrap-input100  m-b-20" >
					<input class="input100" type="text" name="emailId" id="emailId" placeholder="Email">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100  m-b-20" >
					<input class="input100" type="password" name="password" id="password" placeholder="Password">
					<span class="focus-input100"></span>
				</div>
				<div id ="errors" style="color:red;" class="text-center">
      			</div>

				<div class="container-login100-form-btn">
					<button class="login100-form-btn"  id="login" type="submit">
						Login
					</button>
				</div>
</form>
				<div class="text-center">
					<a href="loadRegistration" class="txt2 hov1">
						Sign Up
					</a>
				</div>
			

			
		</div>
	</div>
 

</body>
</html>
