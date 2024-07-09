<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Admin Dashboard - Revenue Report</title>
	<link href="/admin/css/template.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css'>
	<link href="/admin/css/font-awesome.min.css" rel="stylesheet">
	<link href="/admin/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
	<c:if test="${not empty currentUser}">
		<div class="templatemo-flex-row">
			<div class="templatemo-sidebar">
				<header class="templatemo-site-header">
					<h2 class="text-white">${currentUser.username}</h2>
				</header>
				<div class="mobile-menu-icon">
					<i class="fa fa-bars"></i>
				</div>
				<nav class="templatemo-left-nav">
					<ul>
						<li><a href="/index/user/admin"><i class="fa fa-users fa-fw"></i>Manage Users</a></li>
						<li><a href="/index/game/admin"><i class="fa fa-sliders fa-fw"></i>Manage Games</a></li>
						<li><a href="/index/genre/admin"><i class="fa fa-sliders fa-fw"></i>Manage Genres</a></li>
						<li><a href="/index/revenue/admin" class="active"><i class="fa fa-bar-chart fa-fw"></i>Revenue Report</a></li>
						<li><a href="/form/admin/logout"><i class="fa fa-eject fa-fw"></i>Sign Out</a></li>
					</ul>
				</nav>
			</div>
			<div class="templatemo-content col-1 light-gray-bg">
				<div class="templatemo-top-nav-container">
					<div class="row">
						<nav class="templatemo-top-nav col-lg-12 col-md-12">
							<ul class="text-uppercase">
								<li><a href="" class="active">Admin panel</a></li>
								<li><a href="">Dashboard</a></li>
							</ul>
						</nav>
					</div>
				</div>
				<div class="templatemo-content-container">
					<div class="templatemo-content-widget no-padding">
						<div class="panel panel-default table-responsive">
							<table class="table table-striped table-bordered templatemo-user-table" style="width: 100%">
								<thead>
									<tr>
										<th>Genre</th>
										<th>Total Revenue</th>
										<th>Quantity</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${genreRevenueReports}" var="report">
										<tr>
											<td>${report.genre}</td>
											<td>${report.totalRevenue}</td>
											<td>${report.quantity}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<footer class="text-right">
						<p>Copyright &copy; 2084 Company Name | Nhóm 1</p>
					</footer>
				</div>
			</div>
		</div>
	</c:if>
	<c:if test="${empty currentUser}">
		<!-- Hiển thị thông báo khi chưa đăng nhập -->
		<div class="alert alert-warning" role="alert">Bạn chưa đăng nhập! Vui lòng đăng nhập để truy cập trang quản trị.</div>
	</c:if>
	<!-- JS -->
	<script type="text/javascript" src="/admin/js/jquery-1.11.2.min.js"></script>
	<script type="text/javascript" src="/admin/js/templatemo-script.js"></script>
	<script type="text/javascript" src="/admin/js/bootstrap-filestyle.min.js"></script>
	<script>
		$(document).ready(function() {
			// Content widget with background image
			var imageUrl = $('img.content-bg-img').attr('src');
			$('.templatemo-content-img-bg').css('background-image', 'url(' + imageUrl + ')');
			$('img.content-bg-img').hide();
		});
	</script>
</body>

</html>
