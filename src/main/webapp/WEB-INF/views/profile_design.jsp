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
<title>NFT Design Connect Profile</title>
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
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="/css/profile.css" rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/web3.js/1.3.0/web3.min.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/temple/nav.jsp"></jsp:include>
	<main class="mt-5">
		<section id="content" class="container">
			<!-- Begin .page-heading -->
			<div class="page-heading">
				<div class="media clearfix">
					<div class="media-left pr30">
						<a href="#"> <img class="media-object mw150"
							src="/images/avatar/${user.avatar}" alt="...">
						</a>
					</div>
					<div class="media-body va-m">
						<h2 class="media-heading">
							${user.fullname} <small> - Profile</small>
						</h2>
						<p class="lead">${user.description}</p>
						<div class="media-links">
							<ul class="list-inline list-unstyled">
								<li><a href="${user.facebook}" title="facebook link"> <span
										class="fa fa-facebook-square fs35 text-primary"></span>
										${user.facebook}
								</a></li>
								<li class=""><a href="#" title="phone link"> <span
										class="fa fa-phone-square fs35 text-system"></span>
										${user.phone}
								</a></li>
								<li><a href="#" title="email link"> <span
										class="fa fa-envelope-square fs35 text-muted"></span>
										${user.email}
								</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="tab-block">
					<ul class="nav nav-tabs">
						<li class="active"><a href="" data-toggle="tab">Sản phẩm</a></li>
					</ul>
					<div class="tab-content p30" style="height: 730px;">
						<div class="tab-pane active">
							<c:forEach var="nft" items="${nfts}">
								<div class="media">
									<a class="pull-left" href=""> <img
										class="media-object mn thumbnail mw50"
										src="/images/avatar/${user.avatar}" alt="...">
									</a>
									<div class="media-body">
										<h5 class="media-heading mb20">
											${nft.name} <small> - ${nft.created_at}</small>
										</h5>
										<a href="/shopdetail/${nft.nft_id}"><img
											src="/images/${nft.images}" class="mw140 mr25 mb20"></a>
										<div class="media-links">
											<span class=" fs12 mr10"> <span
												class="fa fa-thumbs-o-up text-primary mr5"></span> Like
											</span> <span class=" fs12 mr10"> <span
												class="fa fa-share text-primary mr5"></span> Share
											</span> <span class=" fs12 mr10"> <span
												class="fa fa-floppy-o text-primary mr5"></span> Save
											</span> <span class=" fs12 mr10"> <span
												class="fa fa-comment text-primary mr5"></span> Comment
											</span>
										</div>
									</div>
								</div>
							</c:forEach>
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
	<script src="/js/jquery.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/click-scroll.js"></script>
	<script src="/js/jquery.backstretch.min.js"></script>
	<script src="/js/owl.carousel.min.js"></script>
	<script src="/js/custom.js"></script>
</body>
</html>