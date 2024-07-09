<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-light fixed-top shadow-lg">
		<div class="container">
			<a class="navbar-brand" href="/home">NFTDesignConnect</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link click-scroll"
						href="/home">Trang chủ</a></li>
					<li class="nav-item"><a class="nav-link click-scroll"
						href="/about">Giới thiệu</a></li>
					<li class="nav-item"><a class="nav-link click-scroll"
						href="/shop">Sản phẩm</a></li>
					<li class="nav-item"><a class="nav-link click-scroll"
						href="/contact">Liên hệ</a></li>
					<%-- Kiểm tra xem người dùng đã đăng nhập chưa --%>
					<c:choose>
						<c:when test="${not empty currentUser}">
							<!-- User đã đăng nhập, chỉ hiển thị thông tin tài khoản và đăng xuất -->
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="" id="navbarDropdown"
								role="button" data-bs-toggle="dropdown" aria-expanded="false">${currentUser.getFullname()}</a>
								<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
									<li><a class="dropdown-item"
										href="/profile/${currentUser.getUser_id()}">Trang cá nhân</a></li>
									<li><a class="dropdown-item" href="/cart">Giỏ hàng</a></li>
									<li><a class="dropdown-item" href="#!doimatkhau">Đổi
											mật khẩu</a></li>
									<li><a class="dropdown-item" href="#!capnhatthongtin">Cập
											nhật tài khoản</a></li>
									<li><a class="dropdown-item" href="/logout">Đăng xuất</a></li>
								</ul></li>
						</c:when>
						<c:otherwise>
							<!-- User chưa đăng nhập, hiển thị tất cả các tùy chọn -->
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-bs-toggle="dropdown" aria-expanded="false">Tài
									khoản</a>
								<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
									<li><a class="dropdown-item" href="/register">Đăng ký</a></li>
									<li><a class="dropdown-item" href="/login">Đăng nhập</a></li>
									<li><a class="dropdown-item" href="#!quenmatkhau">Quên
											mật khẩu</a></li>
								</ul></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>