<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" import="java.util.*"%>
   <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
   <%@ include file="layout/header_main.jsp"%>
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
  
  function plus(elem){
    let targetElem = document.getElementById('count2');
    let targetCount = parseInt(targetElem.value);
    targetCount++;
      document.getElementById('count2').value=targetCount ; 
}
function minus(elem){
    let targetElem = document.getElementById('count2');
    let targetCount = parseInt(targetElem.value);
    if (targetCount > 1) {
        targetCount--;
        document.getElementById('count2').value=targetCount ; 
    }
}
  </script>
  <script type="text/javascript">
  $(document).ready(function(){
	  $("#addToCart").bind('click', function(){
		 document.cartForm.quantity = document.getElementById('count2').value;
		 document.cartForm.submit();
	  });
  });
  </script>
</head>
<body>
	<form name="cartForm" method="post" action="addToCart">
					<input type="hidden" name="selectedPlantId" value="${selectedPlant.id}"/>
					<input type="hidden" name="userEmail" value="${userEmail}"/>
					<input type="hidden" name="quantity"/>
					
					</form>
<div class="row" style="margin-top: 100px;">
<div class="col">
 <img class="card-image" src="${selectedPlant.imageName}" alt="image">
</div>
<div class="col">
<h2><c:out value="${selectedPlant.plantName}"/></h2>
<h5><c:out value="£ ${selectedPlant.price}"/></h5>
<div class="row" style="    margin-top: 10px;">
<div class="col-1"><button class="login101-form-btn" type="button" name="button" onclick="minus(this)">-</button></div>
                <div class="col-2 text-end"><input type="text" class="inputClass" name="count" value="1" size="10" id="count2"></div>
                <div class="col-1"><button class="login101-form-btn" type="button" name="button" onclick="plus(this)">+</button></div>
                </div>
<div class="container-login100-form-btn">
					<button class="login102-form-btn" id="addToCart">
					
						Add to Cart
					
				
					</button>
				</div>
</div>
<div>
<div class="row" style="margin-top:10px;">
<h2><l>Description :</l></h2>
<h3><c:out value="${selectedPlant.description}"/></h3>
</div>
</body>
</html>