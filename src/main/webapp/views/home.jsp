<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="../views/css/home.css">
</head>
<body>


	<div class="container">
		<!--Banner-->
		<!--Flash Sale-->
		<div class="flashSale">
			<div id="clock">
				<div class="clocktxt">FLASH SALE</div>
				<div>
					<span id="hours"></span>
				</div>
				<span class="hai-cham">:</span>
				<div>
					<span id="minutes"></span>
				</div>
				<span class="hai-cham">:</span>
				<div>
					<span id="seconds"></span>
				</div>
			</div>
			<div class="row">
				<c:forEach var="item" items="${findtop6}">
					<div class="col-sm-2">
						<div class="card" style="width: 200px; height: 250px;">
							<a href="/detail/product/${item.productId}"> <img
								src="/image/${item.image}" class="card-img-top">
							</a>
							<div class="card-body text-center mt-0">
								<p class="card-text">
									<strike>${item.originalPrice}</strike>/d <fmt:formatNumber value="${item.price }"
							minFractionDigits="2" maxFractionDigits="2" />
								</p>
								<div class="overlay-box box1">
									<div class="date-deal">FreeShip</div>
									<div class="shopbee-box">Shopbee</div>
								</div>
							</div>
							<!-- Overlay boxes -->
							<div class="overlay-box box2">${item.percentageDiscount}%</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<!--ShopBee-Mall-->

		<div class="ShopBee-Mall mt-5">
			<div class="shopbeetxt">
				<div id="shopbeetxt">SHOPBEE MALL</div>
				<span>|</span>
				<div id="txt-free-return">
					<i class="fa fa-right-left"></i> 7 Ngày Miễn Phí Trả Hàng
				</div>
				<div id="txt-chinhhang-100">
					<i class="fa fa-shield-halved"></i> Hàng Chính Hãng 100%
				</div>
				<div id="txt-free-ship">
					<i class="fa fa-truck-fast"></i> Miễn Phí Vận Chuyển
				</div>
			</div>
			<hr>
			<div class="slide-and-product">
				<div class="row">
					<div class="col-sm-4 slide">
						<div id="carouselExampleFade" class="carousel slide carousel-fade">
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img
										src="https://img3.thuthuatphanmem.vn/uploads/2019/10/14/banner-quan-ao-thoi-trang_113855194.jpg"
										style="height: 450px;" class="d-block w-100" alt="...">
								</div>
								<div class="carousel-item">
									<img
										src="https://th.bing.com/th/id/OIP.QG0ihv3LcJAEaZhua8JTnAAAAA?rs=1&pid=ImgDetMain"
										style="height: 450px;" class="d-block w-100" alt="...">
								</div>
								<div class="carousel-item">
									<img
										src="https://th.bing.com/th/id/OIF.nWYekO98PxKq5L7H6QjyxQ?rs=1&pid=ImgDetMains"
										style="height: 450px;" class="d-block w-100" alt="...">
								</div>
							</div>
							<button class="carousel-control-prev" type="button"
								data-bs-target="#carouselExampleFade" data-bs-slide="prev">
								<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Previous</span>
							</button>
							<button class="carousel-control-next" type="button"
								data-bs-target="#carouselExampleFade" data-bs-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Next</span>
							</button>
						</div>
					</div>
					<div class="col-sm-8 products">
						<div class="row">
							<c:forEach var="item" items="${newProducts}">
								<div class="col-sm-3 product">
									<a href="/detail/product/${item.productId}"> <img
										src="/image/${item.image}" class="card-img-top">
									</a>
									<div class="box-txt-brand text-center">
										<p id="txt-brand">${item.productName}</p>
									</div>
									<div class="product-content">${item.price}</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>


		</div>
		<!--gợi ý hôm nay-->
		<div class="recommend-today mt-5">
			<div class="recommend-today-txt text-center">GỢI Ý HÔM NAY</div>
			<hr>

			<div class="row">
				<c:forEach var="item" items="${page.content}">
					<div class="col-sm-2">
						<div class="card" style="width: auto;">
							<a href="/detail/product/${item.productId}"> <img
								src="/image/${item.image}" class="card-img-top">
							</a>
							<div class="card-body">
								<a class="text-decoration-none text-dark"
									href="/detail/product/${item.productId}">
									<h5 class="card-title product-name-today">${item.productName}</h5>
								</a>
								<p class="card-text product-content-today">${item.content}</p>
								<div class="price-icons">
									<div class="card-price">đ <fmt:formatNumber value="${item.price }"
							minFractionDigits="2" maxFractionDigits="2" /></div>
									
									<div class="icon">
										<a href="/detail/product/${item.productId}"><i
											class="fa fa-magnifying-glass"></i></a> <a
											href="javascript:void(0);" id="heart-icon"
											class="position-relative"> <i class="fa fa-heart"></i> <span
											class="heart-count position-absolute">${item.likes}</span>
										</a>
										<form action="/cart/add" method="post">
											<input type="hidden" name="productId" value="${item.productId}"> <input type="hidden"
												name="quantity" value="1" min="1">
											<button type="submit" class="btn btn-primary">
												<i class="fa fa-cart-shopping"></i>
											</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>


			<nav>
				<ul class="pagination justify-content-center mt-5">
					<li class="page-item ${page.first ? 'disabled' : ''}"><a
						class="page-link" href="/index/layout?p=0">First</a></li>
					<li class="page-item ${page.first ? 'disabled' : ''}"><a
						class="page-link" href="/index/layout?p=${page.number - 1}">Previous</a>
					</li>
					<c:forEach var="i" begin="0" end="${page.totalPages - 1}">
						<li class="page-item ${i == page.number ? 'active' : ''}"><a
							class="page-link" href="/index/layout?p=${i}">${i + 1}</a></li>
					</c:forEach>
					<li class="page-item ${page.last ? 'disabled' : ''}"><a
						class="page-link" href="/index/layout?p=${page.number + 1}">Next</a>
					</li>
					<li class="page-item ${page.last ? 'disabled' : ''}"><a
						class="page-link" href="/index/layout?p=${page.totalPages - 1}">Last</a>
					</li>
				</ul>
			</nav>
		</div>
	</div>



	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://kit.fontawesome.com/68a6aada2a.js"crossorigin="anonymous"></script>
	<script src="../views/js/clock.js"></script>
</body>

</html>