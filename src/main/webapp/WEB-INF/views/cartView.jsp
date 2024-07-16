<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Your Cart</h1>

	<c:if test="${not empty message}">
		<p>${message}</p>
	</c:if>

	<c:if test="${not empty cartItems}">
		<table border="1">
			<tr>
				<th>NFT ID</th>
				<th>Quantity</th>
			</tr>
			<c:forEach var="item" items="${cartItems}">
				<tr>
					<td>${item.nftId}</td>
					<td>${item.quantity}</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>

	<form action="/cart/add" method="post">
		<input type="hidden" name="_method" value="post" /> <label for="nftId">NFT
			ID:</label> <input type="text" id="nftId" name="nftId" /> <label
			for="quantity">Quantity:</label> <input type="text" id="quantity"
			name="quantity" />
		<button type="submit">Add to Cart</button>
	</form>

	<form action="/cart/clear" method="post">
		<input type="hidden" name="_method" value="delete" />
		<button type="submit">Clear Cart</button>
	</form>
</body>
</html>