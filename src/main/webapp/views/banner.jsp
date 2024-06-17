<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>Bootstrap 5 Integration</title>
		<!-- Bootstrap CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">
		<!-- Bootstrap JavaScript (and dependencies) -->
		<link rel="stylesheet" type="text/css" href="/views/css/banner.css">
	</head>
	<body>
		<div class="navbar-header m-auto">
			<div
				class="navbar-banner justify-content-between d-none d-md-flex mx-4">
				<div class="banner-left d-flex ms-2 p-2">
					<a href="" class="text-decoration-none text-light">Kênh Người Bán | </a> <a href="" class="text-decoration-none text-light">Tải Ứng Dụng | </a> <a
						href="" class="text-decoration-none text-light">Kết Nối <i class="fa-brands fa-facebook"
						style="color: #ffffff;"></i> <i class="fa-brands fa-instagram"
						style="color: #ffffff;"></i>
					</a>
				</div>
				<div class="banner-right f-flex me-2 p-2">
					<a href="" class="text-decoration-none text-light"> <i class="fa-regular fa-bell"
						style="color: #ffffff;"></i> Thông Báo
					</a> <a href="" class="text-decoration-none text-light"> <i class="fa-solid fa-question"
						style="color: #ffffff;"></i> Hỗ Trợ
					</a> <a href="" class="text-decoration-none text-light"> <i class="fa-solid fa-globe"
						style="color: #ffffff;"></i> Tiếng Việt
					</a> <a href="../views/login.jsp" class="text-decoration-none text-light"> <i class="fa-regular fa-user"
						style="color: #ffffff;"></i> Customer
					</a>
				</div>
			</div>
			<div class="container-fluid navbar-wrapper m-2 p-2 mx-4">
				<nav class="navbar navbar-tt navbar-expand-lg">
					<div class="row w-100 align-items-center">
						<div class="col-3">
							<div class="navbar-brand m-auto d-flex align-items-center" href="">
								<img class="w-10 mr-2" alt="Shopee Logo"
									src="../image/logo-body.jpg"> <span
									class="shopee-text">Shopee</span>
							</div>
						</div>
						<div class="col-6">
							<div class="collapse navbar-collapse" id="navbarSupportedContent">
								<form class="d-flex input-group w-100" role="search" action="/index/search" method="post">
									<input  name="keywords" class="form-control" placeholder="Search">
									<button class="btn btn-search bg-light">
										<i class="fa-solid fa-magnifying-glass" style="color: #ee4d2d;"></i>
									</button>
								</form>
							</div>
						</div>
						<div class="col-3 d-flex justify-content-center">
							<a href="../views/Giohang.jsp" class="d-flex align-items-center text-decoration-none">
								<i class="fa-solid fa-cart-shopping fa-2xl"
								style="color: #ffffff;"></i>
							</a>
						</div>
					</div>
				</nav>
			</div>
		</div>
		<div class="home-banner mt-4">
			<div class="row">
				<div class="row">
					<div
						class="col-sm-12 col-md-12 col-lg-9 me-lg-0 mx-sm-auto mx-auto "
						style="width: 60%">
						<div id="carouselExampleIndicators" class="carousel slide"
							data-bs-ride="carousel">
							<div class="carousel-indicators mx-md-auto w-100">
								<button type="button" data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="0" class="active" aria-current="true"
									aria-label="Slide 1"></button>
								<button type="button" data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="1" aria-label="Slide 2"></button>
								<button type="button" data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="2" aria-label="Slide 3"></button>
							</div>
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img
										src="https://cf.shopee.vn/file/vn-50009109-ec46efa059fc186be18459717833566a_xxhdpi"
										class="d-block w-100" alt="...">
								</div>
								<div class="carousel-item">
									<img
										src="https://cf.shopee.vn/file/vn-50009109-8528623054de9f2f8a1f6842ee2f2c36_xxhdpi"
										class="d-block w-100" alt="...">
								</div>
								<div class="carousel-item">
									<img
										src="https://cf.shopee.vn/file/vn-50009109-40add378e665a655a62144401c2ebaae_xxhdpi"
										class="d-block w-100" alt="...">
								</div>
							</div>
							<button class="carousel-control-prev" type="button"
								data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
								<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Previous</span>
							</button>
							<button class="carousel-control-next" type="button"
								data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Next</span>
							</button>
						</div>
					</div>
					<div class="col-lg-3 mx-auto ms-0 d-none d-lg-block">
						<div class="col-md-2 p-1 pt-0" style="width: 122.5%">
							<img
								src="https://cf.shopee.vn/file/vn-50009109-4cfc966bab5684ccb057c556c6204dd2_xhdpi"
								class="img-fluid" alt="...">
						</div>
						<div class="col-md-2 p-1" style="width: 122.5%">
							<img
								src="https://cf.shopee.vn/file/vn-50009109-98a0b5dc9715d4d18e3dfd87f63c35cc_xhdpi"
								class="img-fluid" alt="...">
						</div>
					</div>
	
				</div>
				<div class="row m-auto mt-4 d-none d-lg-flex justify-content-center ">
					<div class="col-md-1 text-center w-10 mx-4">
						<a href="" class="text-decoration-none text-dark"><img
							src="https://cf.shopee.vn/file/vn-50009109-11d9732a464d895d3699ca40431d0bfd_xhdpi"
							class="w-50" alt="...">
							<p>Voucher Giảm Đến 1 Triệu</p> </a>
					</div>
					<div class="col-md-1 text-center w-10 mx-4">
						<a href="" class="text-decoration-none text-dark"> <img
							src="https://cf.shopee.vn/file/vn-50009109-c7a2e1ae720f9704f92f72c9ef1a494a_xhdpi"
							class="w-50" alt="...">
							<p>Miễn Phí Ship</p>
						</a>
					</div>
					<div class="col-md-1 text-center w-10 mx-4">
						<a href="" class="text-decoration-none text-dark"> <img
							src="https://cf.shopee.vn/file/e4a404283b3824c211c1549aedd28d5f_xhdpi"
							class="w-50" alt="...">
							<p>Khung Giờ Săn Sale</p>
						</a>
					</div>
					<div class="col-md-1 text-center w-10 mx-4">
						<a href="" class="text-decoration-none text-dark"> <img
							src="https://cf.shopee.vn/file/vn-50009109-8a387d78a7ad954ec489d3ef9abd60b4_xhdpi"
							class="w-50" alt="...">
							<p>Miễn Phí Ship</p>
						</a>
					</div>
					<div class="col-md-1 text-center w-10 v">
						<a href="" class="text-decoration-none text-dark"> <img
							src="https://cf.shopee.vn/file/vn-50009109-91399a1d3ed283d272b069fac5ca989c_xhdpi"
							class="w-50" alt="...">
							<p>Shopee Siêu Rẽ</p>
						</a>
					</div>
					<div class="col-md-1 text-center w-10 mx-4">
						<a href="" class="text-decoration-none text-dark"> <img
							src="https://cf.shopee.vn/file/vn-50009109-852300c407c5e79bf5dc1854aa0cfeef_xhdpi"
							class="w-50" alt="...">
							<p>Hàng Hiệu Outlet Giảm 50%</p>
						</a>
					</div>
					<div class="col-md-1 text-center w-10 mx-4">
						<a href="" class="text-decoration-none text-dark"> <img
							src="https://cf.shopee.vn/file/a08ab28962514a626195ef0415411585_xhdpi"
							class="w-50" alt="...">
							<p>Hàng Quốc Tế</p>
						</a href="">
					</div>
					<div class="col-md-1 text-center w-10 mx-4">
						<a href="" class="text-decoration-none text-dark"> <img
							src="https://cf.shopee.vn/file/9df57ba80ca225e67c08a8a0d8cc7b85_xhdpi"
							class="w-50" alt="...">
							<p>Nạp Thẻ, Dịch Vụ & Học Phí</p>
						</a>
					</div>
	
	
				</div>
			</div>
		</div>
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js"></script>
		<script src="https://kit.fontawesome.com/491e594b35.js" crossorigin="anonymous"></script>

	</body>

	</html>