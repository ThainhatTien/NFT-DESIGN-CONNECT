<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="Tooplate">
<title>NFT Design Connect Login</title>
<!-- CSS FILES -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=League+Spartan:wght@100;300;400;600;700&display=swap"
	rel="stylesheet">
<link href="/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/bootstrap-icons.css" rel="stylesheet">
<link href="/css/owl.carousel.min.css" rel="stylesheet">
<link href="/css/tooplate-moso-interior.css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js">
<link href="/css/login.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="/WEB-INF/views/temple/nav.jsp"></jsp:include>
	<main class="pb-5 pt-4">
		<form:form method="post" modelAttribute="specification" action="/specifications/add">

			<!-- Dropdown for Specifications -->
			<div class="form-group">
				<form:label path="specifications_id">Thông số</form:label>
				<form:input type="texy" path="specifications_id"
					class="form-control" placeholder="Specifications_id" />
			</div>

			<!-- Số tầng -->
			<div class="form-group">
				<form:label path="floors">Số tầng</form:label>
				<form:input type="number" path="floors"
					class="form-control" placeholder="Floors" />
			</div>

			<!-- Diện tích -->
			<div class="form-group">
				<form:label path="area">Diện tích</form:label>
				<form:input type="number" path="area"
					class="form-control" placeholder="Area" />
			</div>

			<!-- Chiều dài -->
			<div class="form-group">
				<form:label path="length">Chiều dài</form:label>
				<form:input type="number" path="length"
					class="form-control" placeholder="Length" />
			</div>

			<!-- Mặt tiền -->
			<div class="form-group">
				<form:label path="frontage">Mặt tiền</form:label>
				<form:input type="number" path="frontage"
					class="form-control" placeholder="Frontage" />
			</div>

			<!-- Phòng ngủ -->
			<div class="form-group">
				<form:label path="bedrooms">Phòng ngủ</form:label>
				<form:input type="number" path="bedrooms"
					class="form-control" placeholder="Bedrooms" />
			</div>

			<div class="form-group pt-2">
				<button class="btn btn-dark btn-block">Tiếp theo</button>
			</div>

		</form:form>
	</main>
	<svg class="pt-5" xmlns="http://www.w3.org/2000/svg"
		viewBox="0 0 1440 320">
			<path fill="#36363e" fill-opacity="1"
			d="M0,96L40,117.3C80,139,160,181,240,186.7C320,192,400,160,480,149.3C560,139,640,149,720,176C800,203,880,245,960,250.7C1040,256,1120,224,1200,229.3C1280,235,1360,277,1400,298.7L1440,320L1440,320L1400,320C1360,320,1280,320,1200,320C1120,320,1040,320,960,320C880,320,800,320,720,320C640,320,560,320,480,320C400,320,320,320,240,320C160,320,80,320,40,320L0,320Z"></path></svg>
	<jsp:include page="/WEB-INF/views/temple/footer.jsp"></jsp:include>

	<!-- JAVASCRIPT FILES -->
	<script src="/js/jquery.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/click-scroll.js"></script>
	<script src="/js/jquery.backstretch.min.js"></script>
	<script src="/js/owl.carousel.min.js"></script>
	<script src="/js/custom.js"></script>
</body>
</html>