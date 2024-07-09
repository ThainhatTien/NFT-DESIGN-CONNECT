<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>
	<section
		class="hero-section hero-slide d-flex justify-content-center align-items-center"
		id="section_1">
		<div class="container">
			<div class="row">

				<div class="col-lg-8 col-12 text-center mx-auto">
					<div class="hero-section-text">
						<small class="section-small-title">Chào mừng bạn đến với NFT Design
							Connect <i class="hero-icon bi-house"></i>
						</small>

						<h1 class="hero-title text-white mt-2 mb-4">Thiết kế đẹp cho không gian sống của bạn</h1>

						<form class="custom-form hero-form" action="#" method="get"
							role="form">
							<div class="row">
								<div class="col-lg-5 col-md-6 col-12">
									<div class="input-group align-items-center">
										<label for="product-name">Bản thiết kế</label> 
										<input type="text" name="product-name" id="product-name" class="form-control"
											placeholder="Mẫu nhà ở phố, Mẫu nhà ở ngoại thành..." required>
									</div>
								</div>

								<div class="col-lg-5 col-md-6 col-12">
									<div class="input-group align-items-center">
										<label for="last-name">Giá</label> <select
											name="price-range" class="form-select form-control"
											id="price-range" aria-label="Default select example">
											<option value="500" selected>$500 to $990</option>
											<option value="1000">$1,000 - 2,900</option>
											<option value="3000">$3,000 - 5,000</option>
											<option value="5000">$5,000 - 10,000</option>
											<option value="11000">$11,000 - 25,000</option>
										</select>
									</div>
								</div>
								<div class="col-lg-2 col-md-6 col-12">
									<button type="submit" class="form-control">Tìm</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>