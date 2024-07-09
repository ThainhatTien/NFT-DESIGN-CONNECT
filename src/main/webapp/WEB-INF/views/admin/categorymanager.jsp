<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Visual Admin Dashboard - Manage Users</title>
<meta name="description" content="">
<meta name="author" content="templatemo">
<!-- BootTrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<!-- 
    Visual Admin Template
    https://templatemo.com/tm-455-visual-admin
    -->
<link href="/admin/css/template.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700'
	rel='stylesheet' type='text/css'>
<link href="/admin/css/font-awesome.min.css" rel="stylesheet">
<link href="/admin/css/bootstrap.min.css" rel="stylesheet">


</head>

<body>
	<%-- <c:if test="${not empty currentUser}"> --%>
	<div class="templatemo-flex-row">
		<div class="templatemo-sidebar">
			<header class="templatemo-site-header ">
				<h2 class="text-dark">${currentUser.username}</h2>
			</header>
			<div class="mobile-menu-icon">
				<i class="fa fa-bars"></i>
			</div>
			<nav class="templatemo-left-nav">
				<ul>
					<li><a href="/home/user" class="active"><i
							class="fa fa-users fa-fw"></i>Manage Users</a></li>
					<li><a href="/home/category"><i
							class="fa fa-sliders fa-fw"></i>Manage Category</a></li>
					<li><a href="/home/style"><i class="fa fa-sliders fa-fw"></i>Manage
							Style</a></li>
					<li><a href="/index/revenue/admin"><i
							class="fa fa-bar-chart fa-fw"></i>Revenue Report</a></li>
					<li><a href="/form/admin/logout"><i
							class="fa fa-eject fa-fw"></i>Sign Out</a></li>
				</ul>
			</nav>
		</div>
		<!-- Main content -->
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
						<table
							class="table table-striped table-bordered templatemo-user-table">
							<thead>
								<tr>
									<td class=""><a href=""
										class="text-dark templatemo-sort-by"># <span class="caret"></span>
									</a></td>
									<td class=""><a href=""
										class="text-dark templatemo-sort-by">Name<span
											class="caret"></span>
									</a></td>
									<td>Edit</td>
									<td>Delete</td>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${categories}" var="category">
									<tr>
										<td>${category.category_id}</td>
										<td>${category.name}</td>
										<td><a href="/admin/game/${category.category_id}"
											class="templatemo-edit-btn">Edit</a></td>
										<td><a href="/admin/game/delete/${category.category_id}"
											class="templatemo-link">Delete</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<div class="templatemo-flex-row flex-content-row">
					<div class="col-1">
						<div class="panel panel-default margin-10">
							<div class="panel-heading">
								<h2 class="text-uppercase">Category Form</h2>
							</div>
							<div class="panel-body">
								<form:form action="/category/update" method="post"
									class="templatemo-login-form" modelAttribute="category">
									<form:input type="hidden" path="category_id" name="category_id"
										value="${category.category_id}" />
									<!-- Thêm trường ẩn để lưu ID của người dùng -->
									<div class="form-group">
										<label for="inputTitle">Name</label>
										<form:input type="text" name="name" value="${category.name}"
											class="form-control" path="name" id="inputName"
											placeholder="Enter Title" />
									</div>
									<div class="form-group">
										<button type="submit" class="templatemo-blue-button">Update</button>
									</div>
									<div class="form-group">
										<button formaction="/admin/game/reset" type="submit"
											class="templatemo-blue-button">Rest</button>
									</div>
								</form:form>
							</div>
						</div>
					</div>
				</div>
				<!-- Second row ends -->
				<footer class="text-right">
					<p>NFT Design Connect</p>
				</footer>
			</div>
		</div>
	</div>
	<%-- </c:if>
	<c:if test="${empty currentUser}">
		<!-- Hiển thị thông báo khi chưa đăng nhập -->
		<div class="alert alert-warning" role="alert">Bạn chưa đăng
			nhập! Vui lòng đăng nhập để truy cập trang quản trị.</div>
	</c:if> --%>
	<!-- JS -->
	<script type="text/javascript" src="/admin/js/jquery-1.11.2.min.js"></script>
	<!-- jQuery -->
	<script type="text/javascript" src="/admin/js/templatemo-script.js"></script>
	<script type="text/javascript"
		src="/admin/js/bootstrap-filestyle.min.js"></script>
	<!-- Templatemo Script -->
	<
	<!-- script>
		$(document).ready(
				function() {
					// Content widget with background image
					var imageUrl = $('img.content-bg-img').attr('src');
					$('.templatemo-content-img-bg').css('background-image',
							'url(' + imageUrl + ')');
					$('img.content-bg-img').hide();
				});
	</script> -->
</body>

</html>