<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
<h1>Checkout</h1>

<table>
  <tr>
    <th>Quantity</th>
    <th>Description</th>
    <th>Price</th>
    <th>Amount</th>
  </tr>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var = "total" scope = "session" value = "0"/> 
<c:forEach var="item" items="${cart.items}">
	<c:set var="total" value="${total + item.total}"/>
  <tr>
    <!--<td>
      <form action=<%=response.encodeURL("cart") %> method="post">
        <input type="hidden" name="productCode" value="${item.product.code}">
        <input type=text name="quantity" value="${item.quantity}" id="quantity">
        <input type="submit" value="Update">
      </form>
    </td> -->
    <td>${item.quantity}</td>
    <td>${item.product.description}</td>
    <td>${item.product.priceCurrencyFormat}</td>
    <td>${item.totalCurrencyFormat}</td>
  </tr>
</c:forEach>
	<tr>
		<td></td>
		<td></td>
		<td><b>Total:</b></td>
		<td><fmt:formatNumber value = "${total}" type = "currency"/></td>
	</tr>
</table>

<div>
<form action=<%=response.encodeURL("cart") %> method="post">
  <input type="hidden" name="action" value="goToCart">
  <input type="submit" value="Go Back to Cart">
</form>

<form action=<%=response.encodeURL("cart") %> method="post">
  <input type="hidden" name="action" value="clearCart">
  <input type="submit" value="Complete order">
</form>
</div>

</body>
</html>