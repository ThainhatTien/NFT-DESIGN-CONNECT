<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="description" content="">
<meta name="author" content="Tooplate">

<title>NFT Design Connect - Product</title>

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

<body class="shop-listing-page">
	<jsp:include page="/WEB-INF/views/temple/nav.jsp"></jsp:include>

	<main>

		<header
			class="site-header d-flex justify-content-center align-items-center">
			<div class="container">
				<div class="row">

					<div class="col-lg-12 col-12">
						<h1 class="text-white">Cửa hàng</h1>
					</div>

				</div>
			</div>
		</header>

		<section class="shop-section section-padding">
			<div class="container">
				<div class="row">

					<div class="col-lg-4 col-md-5 col-12 me-auto mb-5">
						<form class="custom-form filter-form" action="#" method="get"
							role="form">
							<div class="">
								<h6 class="filter-form-small-title">Bản thiết kế</h6>
								<form:select path="categories" class="form-select form-control">
									<form:options items="${categories}" itemValue="category_id"
										itemLabel="name" />
								</form:select>
							</div>

							<div class="mt-4">
								<h6 class="filter-form-small-title">Giá</h6>

								<div class="form-check">
									<input name="price-range[]" type="checkbox"
										class="form-check-input" id="PriceCheckOne" value="500"
										checked> <label class="form-check-label"
										for="PriceCheckOne">Dưới $1,000</label>
								</div>

								<div class="form-check">
									<input name="price-range[]" type="checkbox"
										class="form-check-input" id="PriceCheckTwo" value="1000">

									<label class="form-check-label" for="PriceCheckTwo">$1,000
										- $4,900</label>
								</div>

								<div class="form-check">
									<input name="price-range[]" type="checkbox"
										class="form-check-input" id="PriceCheckTwo" value="5000">

									<label class="form-check-label" for="PriceCheckTwo">$5,000
										- $9,900</label>
								</div>

								<div class="form-check">
									<input name="price-range[]" type="checkbox"
										class="form-check-input" id="PriceCheckThree" value="10000">

									<label class="form-check-label" for="PriceCheckThree">$10,000
										- $30,000</label>
								</div>
							</div>

							<div class="mt-4">
								<h6 class="filter-form-small-title">Phong cách</h6>

								<div class="form-check">
									<form:checkboxes class="me-3" items="${styles}" path="styles"
										itemValue="style_id" itemLabel="name" />
								</div>
							</div>

							<div class="mt-4">
								<button type="submit" class="form-control">Áp dụng</button>
							</div>
						</form>
					</div>

					<div class="col-lg-7 col-md-6 col-12">
						<h2>Bản thiết kế</h2>

						<p class="mb-5">
							<strong>3,648 bản thiết kế</strong> phù hợp với yêu cầu của bạn
						</p>

						<div class="row">
							<c:forEach var="nft" items="${nfts }">
								<div class="col-lg-6 col-12">
									<div class="shop-thumb">
										<div class="shop-image-wrap">
											<a href="shop-detail.html"> <img
												src="/images/${nft.images }" class="shop-image img-fluid"
												alt="">
											</a>

											<div class="shop-icons-wrap">
												<div
													class="shop-icons d-flex flex-column align-items-center">
													<a href="#" class="shop-icon bi-heart"></a>
												</div>

												<p class="shop-pricing mb-0 mt-3">
													<span class="badge custom-badge">${nft.price } VNĐ</span>
												</p>
											</div>

											<div class="shop-btn-wrap">
												<a href="/shopdetail/${nft.nft_id}"
													class="shop-btn custom-btn btn d-flex align-items-center align-items-center">Learn
													more</a>
											</div>
										</div>

										<div class="shop-body">
											<h4>${nft.name }</h4>
										</div>
									</div>
								</div>
							</c:forEach>

							<nav aria-label="Page navigation example">
								<ul class="pagination justify-content-center">
									<li class="page-item"><a class="page-link" href="#"
										aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
									</a></li>

									<li class="page-item active" aria-current="page"><a
										class="page-link" href="#">1</a></li>

									<li class="page-item"><a class="page-link" href="#">2</a>
									</li>

									<li class="page-item"><a class="page-link" href="#">3</a>
									</li>

									<li class="page-item"><a class="page-link" href="#">4</a>
									</li>

									<li class="page-item"><a class="page-link" href="#">5</a>
									</li>

									<li class="page-item"><a class="page-link" href="#"
										aria-label="Next"> <span aria-hidden="true">&raquo;</span>
									</a></li>
								</ul>
							</nav>
						</div>
					</div>

				</div>
			</div>
		</section>

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
