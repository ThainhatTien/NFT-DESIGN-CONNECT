<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="Tooplate">
<title>NFT Design Connect Contact</title>
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
	<main>
		<section class="contact-section" id="section_5">
			<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
				<path fill="#f9f9f9" fill-opacity="1"
					d="M0,96L40,117.3C80,139,160,181,240,186.7C320,192,400,160,480,149.3C560,139,640,149,720,176C800,203,880,245,960,250.7C1040,256,1120,224,1200,229.3C1280,235,1360,277,1400,298.7L1440,320L1440,0L1400,0C1360,0,1280,0,1200,0C1120,0,1040,0,960,0C880,0,800,0,720,0C640,0,560,0,480,0C400,0,320,0,240,0C160,0,80,0,40,0L0,0Z"></path></svg>
			<div class="container">
				<div class="row">

					<div class="col-lg-12 col-12">
						<small class="section-small-title">Ask anything.</small>

						<h2 class="mb-4">Say Hello</h2>
					</div>

					<div class="col-lg-6 col-12">
						<form class="custom-form contact-form" action="#" method="post"
							role="form">
							<div class="row">
								<div class="col-lg-6 col-md-6 col-12">
									<div class="input-group align-items-center">
										<label for="first-name">First Name</label> <input type="text"
											name="first-name" id="first-name" class="form-control"
											placeholder="Jack" required>
									</div>
								</div>

								<div class="col-lg-6 col-md-6 col-12">
									<div class="input-group align-items-center">
										<label for="last-name">Last Name</label> <input type="text"
											name="last-name" id="last-name" class="form-control"
											placeholder="Doe" required>
									</div>
								</div>
							</div>

							<div class="input-group align-items-center">
								<label for="email">Email Address</label> <input type="email"
									name="email" id="email" pattern="[^ @]*@[^ @]*"
									class="form-control" placeholder="Jackdoe@gmail.com" required>
							</div>

							<div class="input-group textarea-group">
								<label for="message">Message</label>

								<textarea name="message" rows="6" class="form-control"
									id="message" placeholder="What can we help you?"></textarea>
							</div>

							<div class="col-lg-3 col-md-4 col-6">
								<button type="submit" class="form-control">Send</button>
							</div>
						</form>
					</div>

					<div class="col-lg-6 col-12 mt-5 mt-lg-0">
						<div class="custom-block">

							<h3 class="text-white mb-2">Store</h3>

							<p class="text-white mb-2">
								<i class="contact-icon bi-geo-alt me-1"></i> FPT PolyTeachnic
							</p>

							<h3 class="text-white mt-3 mb-2">Contact Info</h3>

							<div class="d-flex flex-wrap">
								<p class="text-white mb-2 me-4">
									<i class="contact-icon bi-telephone me-1"></i> <a
										href="tel: 097-674-5901" class="text-white"> 097-674-5901
									</a>
								</p>

								<p class="text-white">
									<i class="contact-icon bi-envelope me-1"></i> <a
										href="mailto:thainhattien3011@gmail.com" class="text-white">
										thainhattien3011@gmail.com </a>
								</p>
							</div>
							<iframe class="google-map mt-2"
								src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.450734870822!2d106.62411456400505!3d10.853281643526802!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752bee0b0ef9e5%3A0x5b4da59e47aa97a8!2zQ8O0bmcgVmnDqm4gUGjhuqduIE3hu4FtIFF1YW5nIFRydW5n!5e0!3m2!1svi!2s!4v1718784053283!5m2!1svi!2s"
								width="100%" height="220" style="border: 0;" allowfullscreen=""
								loading="lazy"></iframe>
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