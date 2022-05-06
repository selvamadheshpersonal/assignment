<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" import="java.util.*"%><%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ include file="layout/header_main.jsp"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Plant-A-Tree</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="assets/css/util.css">
    <link rel="stylesheet" type="text/css" href="assets/css/main.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  </head>
  <body>
    <div class=row style="margin-top: 138px;margin-left: 9px;">
      <div class=col>
        <h4>Shipping and Billing Information</h4>
        <div class="wrap-input100 validate-input m-b-10" data-validate="Enter Password">
          <input class="input101" type="email" name="email" id="email" placeholder="Email">
          <span class="focus-input100"></span>
        </div>
        <div class="wrap-input100 validate-input m-b-10" data-validate="Enter Password">
          <input class="input101" type="text" name="name" id="name" placeholder="Name">
          <span class="focus-input100"></span>
        </div>
        <div class="wrap-input100 validate-input m-b-10" data-validate="Enter Password">
          <input class="input101" type="number" name="mblNo" id="mblNo" placeholder="Mobile Number">
          <span class="focus-input100"></span>
        </div>
        <div class="wrap-input100 validate-input m-b-10" data-validate="Enter Password">
          <input class="input101" type="text" name="address" id="address" placeholder="Address Line">
          <span class="focus-input100"></span>
        </div>
        <div class="row">
          <div class="col">
            <div class="wrap-input100 validate-input m-b-10" data-validate="Enter Password">
              <input class="input101" type="text" name="city" id="city" placeholder="City">
              <span class="focus-input100"></span>
            </div>
          </div>
          <div class="col">
            <div class="wrap-input100 validate-input m-b-10" data-validate="Enter Password">
              <input class="input101" type="text" name="postCode" id="postCode" placeholder="Postcode">
              <span class="focus-input100"></span>
            </div>
          </div>
        </div>
        <div>
          <h4>Card Details</h4>
          <div class="wrap-input100 validate-input m-b-10" data-validate="Enter Password">
            <input class="input101" type="text" name="cardNum" id="cardNum" placeholder="Card Number">
            <span class="focus-input100"></span>
          </div>
          <div class="row">
            <div class="col">
              <div class="wrap-input100 validate-input m-b-10" data-validate="Enter Password">
                <input class="input101" type="text" name="expiry" id="expiry" placeholder="Expiry">
                <span class="focus-input100"></span>
              </div>
            </div>
            <div class="col">
              <div class="wrap-input100 validate-input m-b-10" data-validate="Enter Password">
                <input class="input101" type="number" name="cvv" id="cvv" placeholder="CVV">
                <span class="focus-input100"></span>
              </div>
            </div>
          </div>
        </div>
       
      </div>
      <div class=col>
        <h4>Order Summary</h4>
        <div class="order-bg">
        <div class="divMargin">
        <c:forEach var = "cartItem" items="${cartItemList}">
        <div class="row">
          <div class="col-6"> ${ cartItem.productName} </div>
          <div class="col text-end"> ${ cartItem.quantity}X ${ cartItem.productPrice} </div>
          <div class="col text-end">£ 30 </div>
        </div>
        <div class="row">
          <div class="col">
            <button class="login101-form-btn">+</button>
            <button class="login101-form-btn">-</button>
          </div>
        </div>
        </c:forEach>
      </div>
        <div class="divMargin">
        <div class="row">
          <div class="col-9"> Sub-total </div>
          <div class="col text-end">£ 30 </div>
        </div>
        <div class="row">
          <div class="col-9">
            Discount(20%)
          </div>
          <div class="col text-end">
            £200
          </div>
        </div>
        <div class="row borderTop">
          <div class="col-9">
           Total
          </div>
          <div class="col text-end">
            £200
          </div>
        </div>
      </div>
      </div>
      </div>
    </div>
     <div>
          <button class="login103-form-btn">Pay</button>
        </div>
  </body>
</html>