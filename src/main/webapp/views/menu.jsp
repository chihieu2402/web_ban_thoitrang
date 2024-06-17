<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bootstrap 5 Integration</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Bootstrap JavaScript (and dependencies) -->
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/491e594b35.js"
	crossorigin="anonymous"></script>
<style type="text/css">
a {
	color: inherit; /* Giữ nguyên màu văn bản mặc định */
	text-decoration: none; /* Bỏ gạch chân */
}

a:hover {
	color: inherit; /* Giữ nguyên màu văn bản khi hover */
	text-decoration: none; /* Bỏ gạch chân khi hover */
}

.navbar-header {
	background-color: #ee4d2d;
	color: white;
}

.btn-search {
	
}

a {
	padding: 4px;
}

.navbar-custom {
	font-family: 'Arial', sans-serif;
}

.navbar-brand img {
	width: 20%; /* Giới hạn độ rộng của hình ảnh */
}
1
.icon-container {
	height: 100%;
}

.form-control {
	flex-grow: 1;
}

.input-group .btn-search {
	margin-left: -1px;
	/* To avoid a small gap between the input and button */
}

.navbar-brand .shopee-text {
	font-weight: bold; /* Đặt chữ đậm */
	font-size: 1.5rem; /* Đặt kích thước lớn hơn */
}
</style>
</head>
<body>
	<div class="navbar-header m-auto">
		<div class="navbar-banner justify-content-between d-none d-md-flex mx-4">
			<div class="banner-left d-flex ms-2 p-2">
				<a href="">Kênh Người Bán | </a> <a href="">Tải Ứng Dụng | </a> <a
					href="">Kết Nối <i class="fa-brands fa-facebook"
					style="color: #ffffff;"></i> <i class="fa-brands fa-instagram"
					style="color: #ffffff;"></i>
				</a>
			</div>
			<div class="banner-right f-flex me-2 p-2">
				<a href=""> <i class="fa-regular fa-bell"
					style="color: #ffffff;"></i> Thông Báo
				</a> <a href=""> <i class="fa-solid fa-question"
					style="color: #ffffff;"></i> Hỗ Trợ
				</a> <a href=""> <i class="fa-solid fa-globe"
					style="color: #ffffff;"></i> Tiếng Việt
				</a> <a href=""> <i class="fa-regular fa-user"
					style="color: #ffffff;"></i> Customer
				</a>
			</div>
		</div>
		<div class="container-fluid navbar-wrapper m-2 p-2 mx-4">
			<nav class="navbar navbar-expand-lg bg-body-tertiary">
				<div class="row w-100 align-items-center">
					<div class="col-3">
						<div class="navbar-brand m-auto d-flex align-items-center" href="">
							<img class="w-10 mr-2" alt="Shopee Logo"
								src="${pageContext.request.contextPath}/images/icons8-shopee-100.png">
							<span class="shopee-text">Shopee</span>
						</div>
					</div>
					<div class="col-6">
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<form class="d-flex input-group w-100" role="search">
								<input type="search" class="form-control" placeholder="Search">
								<button class="btn btn-search bg-light" type="button">
									<i class="fa-solid fa-magnifying-glass" style="color: #ee4d2d;"></i>
								</button>
							</form>
						</div>
					</div>
					<div class="col-3 d-flex justify-content-center">
						<a href="" class="d-flex align-items-center"> <i
							class="fa-solid fa-cart-shopping fa-2xl" style="color: #ffffff;"></i>
						</a>
					</div>
				</div>
			</nav>
		</div>
	</div>
</body>
</html>
