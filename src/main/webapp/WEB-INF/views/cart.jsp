<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="Tooplate">
<title>NFT Design Connect Cart</title>
<!-- CSS FILES -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=League+Spartan:wght@100;300;400;600;700&display=swap"
	rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-icons.css" rel="stylesheet">
<link href="css/owl.carousel.min.css" rel="stylesheet">
<link href="css/tooplate-moso-interior.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="/WEB-INF/views/temple/nav.jsp"></jsp:include>
	<main class="pt-5">
		<div class="container mt-5">
			<h1 class="text-center mb-4" style="color: #212529;">Shopping
				Cart</h1>
			<div class="row">
				<div class="col col-md-12">
					<c:if test="${not empty message}">
						<div class="alert alert-success">${message}</div>
					</c:if>
					<c:if test="${not empty cart.detail}">
						<table border="1" style="width: 100%;" class="table table-hover">
							<thead>
								<tr>
									<th>STT</th>
									<th>Tên</th>
									<th>Giá</th>
									<th>Số lượng</th>
									<th>Thành tiền</th>
									<th>Xóa</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${cart.detail}" varStatus="status">
									<tr id="row-${item.value.gameId}">
										<td>${status.index + 1}</td>
										<td>${item.value.title}</td>
										<td>${item.value.price}</td>
										<td><input type="number" name="quantity"
											value="${item.value.quantity}" min="1"
											onchange="updateItemQuantity(${item.value.gameId}, this.value)">
										</td>
										<td id="total-${item.value.gameId}">${item.value.price * item.value.quantity}</td>
										<td><button class="btn btn-danger" onclick="removeItemFromCart(${item.value.gameId})">Xóa</button></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<p class="" style="color: #212529;">
							Tổng tiền:
							<c:out value="${cart.totalAmount}" />
						</p>
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-primary"
							data-bs-toggle="modal" data-bs-target="#exampleModal">Thanh toán</button>
						<!-- Modal -->
						<div class="modal fade" id="exampleModal" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h1 class="modal-title fs-5" id="exampleModalLabel">Hóa
											đơn</h1>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<table border="1" class="table table-hover">
											<thead>
												<tr>
													<th>STT</th>
													<th>Tên</th>
													<th>Giá</th>
													<th>Số lượng</th>
													<th>Thành tiền</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="item" items="${cart.detail}"
													varStatus="status">
													<tr id="row-${item.value.gameId}">
														<td>${status.index + 1}</td>
														<td>${item.value.title}</td>
														<td>${item.value.price}</td>
														<td>${item.value.quantity}</td>
														<td id="total-${item.value.gameId}">${item.value.price * item.value.quantity}</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										<p class="" style="color: #212529;">
											Tổng tiền:
											<c:out value="${cart.totalAmount}" />
										</p>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-bs-dismiss="modal">Hủy</button>
										<form action="/checkout/${currentUser.getUserId()}"
											method="get">
											<input type="hidden" value="${currentUser.getUserId()}">
											<button type="submit" class="btn btn-primary">Thanh toán</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</c:if>
					<a href="/home" class="btn btn-warning btn-md mb-3 mt-3">
						<i class="fa fa-arrow-left" aria-hidden="true"></i>&nbsp; Quay về trang chủ
					</a>
				</div>
			</div>
		</div>
		<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
			<path fill="#36363e" fill-opacity="1"
				d="M0,96L40,117.3C80,139,160,181,240,186.7C320,192,400,160,480,149.3C560,139,640,149,720,176C800,203,880,245,960,250.7C1040,256,1120,224,1200,229.3C1280,235,1360,277,1400,298.7L1440,320L1440,320L1400,320C1360,320,1280,320,1200,320C1120,320,1040,320,960,320C880,320,800,320,720,320C640,320,560,320,480,320C400,320,320,320,240,320C160,320,80,320,40,320L0,320Z"></path></svg>
	</main>
	<jsp:include page="/WEB-INF/views/temple/footer.jsp"></jsp:include>

	<!-- JAVASCRIPT FILES -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/click-scroll.js"></script>
	<script src="js/jquery.backstretch.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>