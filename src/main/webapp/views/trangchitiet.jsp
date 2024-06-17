<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Detail - ${detailItem.productName }</title>
<link rel="stylesheet" href="/views/css/ngoiSaoTrangChiTiet.css">
<link rel="stylesheet" href="/views/css/btnTrangChiTiet.css">
<link rel="stylesheet" href="/views/css/NguoiDanhGiaTrangChiTiet.css">
<link rel="stylesheet" href="/views/css/btnLikeTrangChiTiet.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body class="bg-body-secondary">
	<div class="container">
		<!-- 1 -->
		<div class="card my-3 p-3" style="width: 1200px;">
			<div class="row">

				<!-- cột trái -->
				<div class="col-md-5">
					<div id="carouselExampleSlidesOnly" class="carousel slide pb-3"
						data-bs-ride="carousel">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img src="/image/${detailItem.image}" class="d-block w-100"
									alt="..." id="zoomedImage">
							</div>
						</div>
						<div class="row mt-3">
							<img id="" src="/image/${detailItem.image1}"
								class="img-thumbnail w-25 border-0 mainImage" alt=""> <img
								id="" src="/image/${detailItem.image2}"
								class="img-thumbnail w-25 border-0 mainImage" alt=""> <img
								id="" src="/image/${detailItem.image3}"
								class="img-thumbnail w-25 border-0 mainImage" alt=""> <img
								id="" src="/image/${detailItem.image}"
								class="img-thumbnail w-25 border-0 mainImage" alt="">
						</div>
					</div>
					<span class="px-5"> chia sẻ: <i
						class="fa-brands fa-facebook fa-xl" style="color: #1158b6;"></i> <i
						class="fa-brands fa-facebook-messenger fa-xl"
						style="color: #74C0FC;"></i> <i
						class="fa-brands fa-pinterest fa-xl" style="color: #ff1a1a;"></i>
						<i class="fa-brands fa-x-twitter fa-xl" style="color: #347af4;"></i>
					</span> | <span class="px-3 "><i class="fa-regular fa-heart fa-xl"
						style="color: #ff4747;"></i> Đã thích (${detailItem.likes})</span>
				</div>

				<!-- cột phải -->
				<div class="col-md-7 ps-4">

					<div class="fs-5 w-100">
						<img
							src="https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg/productdetailspage/40a453875daccf8cc324.svg"
							alt=""> ${detailItem.productName}
					</div>
					<div class="sao">
						<span class="me-3"> <span
							class="text-decoration-underline text-danger">${SaoTB}</span> <i
							class="fa-${SaoTB >= 1 ? 'solid' : 'regular'} fa-star"
							style="color: #d31d1d;"></i> <i
							class="fa-${SaoTB >= 2 ? 'solid' : 'regular'} fa-star"
							style="color: #d31d1d;"></i> <i
							class="fa-${SaoTB >= 3 ? 'solid' : 'regular'} fa-star"
							style="color: #d31d1d;"></i> <i
							class="fa-${SaoTB >= 4 ? 'solid' : 'regular'} fa-star"
							style="color: #d31d1d;"></i> <i
							class="fa-${SaoTB >= 5 ? 'solid' : 'regular'} fa-star"
							style="color: #d31d1d;"></i>
						</span>|
						<!-- đánh giá -->
						<span class="mx-2"> <span class="text-decoration-underline">3tỷ</span>
							<span class="text-secondary">Đánh giá</span>
						</span>|
						<!-- đã bán -->
						<span class="mx-3"> <span>${detailItem.sold}</span> <span
							class="text-secondary">Đã bán</span>
						</span>

					</div>
					<!-- Giá -->

					<div class="card mt-3 border-0">
						<img src="/image/flashsale.PNG" alt="" class="">
						<div class="card-body "
							style="background-color: rgb(250, 250, 250);">
							<span class="text-decoration-line-through text-secondary fs-5">
								<span class="align-text-top fs-6"> đ</span>${detailItem.price}
							</span> <span class="text-danger fs-3 mx-3"> <span
								class="align-text-top fs-5 p-0 m-0">₫</span>${giaDaGiam}
							</span> <span class="badge text-bg-danger">${detailItem.percentageDiscount }%
								GIẢM</span>

						</div>
					</div>

					<!-- mã giảm giá -->
					<div class="text-secondary my-2">
						Mã giảm giá của shop <img src="/image/giamgia.PNG" alt=""
							class="w-50">
					</div>

					<!-- vận chuyển -->
					<div class="row lh-lg">
						<div class="col-md-2 text-secondary">Vận chuyển</div>
						<div class="col">
							<img
								src="https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg/productdetailspage/d9e992985b18d96aab90.png"
								alt="" style="width: 30px;"> Miễn phí vận chuyển <br>
							<img
								src="https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg/productdetailspage/7b101a24cfe44d8eb45f.svg"
								alt=""> <span class="text-secondary me-3">Vận
								chuyển từ</span> Campuchia tới <span class="ms-3"> Hồ Chí Minh</span> <br>

							<span class="text-secondary ms-4 me-3">Phí vận chuyển</span> 0đ
						</div>

					</div>


					<!-- màu sắc -->
					<div class="mt-3">
						<span class="text-secondary me-3"> Màu sắc</span> <span
							class="border p-2 pb-3 mx-2"> <img
							src="/image/${detailItem.image1}" class="" style="width: 30px;"
							alt="..."> <span>Hồng</span>
						</span> <span class="border p-2 pb-3 mx-3"> <img
							src="/image/${detailItem.image2}" class="" style="width: 30px;"
							alt="..."> <span>Xanh lam</span>
						</span>

					</div>


					<!-- số lượng -->
					<div class="d-flex text-secondary" style="margin-top: 30px;">
						<span class="pt-1" style="width: 90px;">số lượng</span>
						<div class="input-group w-25 h-50">
							<button class="input-group-text" id="giamSL">
								<i class="fa-solid fa-minus" style="color: #a1a1a1;"></i>
							</button>
							<input type="number" min="1" name="quantity"  max="${detailItem.quantity}"
								class="w-25 form-control text-center" value="1" id="soluong">
							<button class="input-group-text" id="tangSL">
								<i class="fa-solid fa-plus" style="color: #a1a1a1;"></i>
							</button>
						</div>


						<span class="ms-3 pt-1">${detailItem.quantity} sản phẩm có
							sẵn</span>
					</div>

					<!-- Mua ngay -->
					<div class="row mt-4">
						<div class="col-auto">
							<form action="/cart/add" method="post">
								<input type="hidden" name="productId" value="${detailItem.productId}">
								<input type="hidden" name="quantity" value="1" min="1">
								<button class="btn btn-outline-danger btn-lg rounded-0">
									<img
										src="https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg/productdetailspage/b96050554b3be4feea08.svg"
										alt="" class="figure-img"> Thêm Vào Giỏ Hàng
								</button>
							</form>
						</div>
						<div class="col-auto">
							<button class="btn btn-danger btn-lg rounded-0">Mua Ngay</button>
						</div>
					</div>

					<!--  -->
					<hr class="my-4">
					<div class="row ">
						<div class="col-auto">
							<img
								src="https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg/productdetailspage/2bcf834c40468ebcb90b.svg"
								alt=""> Đổi ý miễn phí 15 ngày
						</div>
						<div class="col-auto">
							<img
								src="https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg/productdetailspage/511aca04cc3ba9234ab0.png"
								style="width: 32px;" alt=""> Hàng chính hãng 100%
						</div>
						<div class="col-auto">
							<img
								src="https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg/productdetailspage/16ead7e0a68c3cff9f32.png"
								style="width: 32px;" alt=""> Miễn phí vận chuyển
						</div>
					</div>

				</div>
			</div>

		</div>


		<!-- đánh giá sản phẩm -->
		<div class="card my-3 p-4" style="width: 1200px;">


			<h4 class="mb-3">
				Đánh giá sản phẩm

				<!-- Button trigger modal -->
				<button type="button" class="btn btn-danger btn-sm"
					data-bs-toggle="modal" data-bs-target="#staticBackdrop">
					Viết Đánh Giá</button>

				<!-- Modal -->
				<div class="modal fade" id="staticBackdrop"
					data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
					aria-labelledby="staticBackdropLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h1 class="modal-title fs-5" id="staticBackdropLabel">Đánh
									Giá</h1>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>

							<!-- xử lý nội dung đánh giá -->
							<form action="/detail/product/${detailItem.productId}"
								method="post">
								<div class="modal-body">
									<!-- chọn sao -->
									<div
										class="container  d-flex justify-content-center align-items-center">

										<div class="ratingA">
											<input type="radio" id="star5" name="ratingA" value="5">
											<label for="star5" title="5 stars"></label> <input
												type="radio" id="star4" name="ratingA" value="4"> <label
												for="star4" title="4 stars"></label> <input type="radio"
												id="star3" name="ratingA" value="3"> <label
												for="star3" title="3 stars"></label> <input type="radio"
												id="star2" name="ratingA" value="2"> <label
												for="star2" title="2 stars"></label> <input type="radio"
												id="star1" name="ratingA" value="1"> <label
												for="star1" title="1 star"></label>
										</div>

									</div>

									<div class="">
										<label class="form-label mb-3">Nội dung:</label>
										<textarea type="text" name="reviewText" class="form-control"></textarea>
									</div>
									<input type="hidden" name="product.productId"
										value="${detailItem.productId}"> <input type="hidden"
										name="customer.customerID" value="C001">

								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-outline-danger"
										data-bs-dismiss="modal">Đóng</button>
									<button type="submit" class="btn btn-danger">Lưu</button>
								</div>
							</form>
						</div>

					</div>
				</div>
			</h4>

			<!-- saooo -->
			<div class="card border-danger-subtle  rounded-0"
				style="background-color: #FFFBF8;">
				<div class="row">
					<div class="col-md-3 fw-semibold text-center " style="color: red;">
						<div class="" style="position: relative; top: 10px;">
							<span class="fs-1 ">${SaoTB}</span> <span>trên 5</span>
						</div>
						<!-- ngôi sao -->

						<div class=" justify-content-center">
							<i class="fa-${SaoTB >= 1 ? 'solid' : 'regular'} fa-star fa-xl"
								style="color: #cc0000;"></i> <i
								class="fa-${SaoTB >= 2 ? 'solid' : 'regular'} fa-star fa-xl"
								style="color: #cc0000;"></i> <i
								class="fa-${SaoTB >= 3 ? 'solid' : 'regular'} fa-star fa-xl"
								style="color: #cc0000;"></i> <i
								class="fa-${SaoTB >= 4 ? 'solid' : 'regular'} fa-star fa-xl"
								style="color: #cc0000;"></i> <i
								class="fa-${SaoTB >= 5 ? 'solid' : 'regular'} fa-star fa-xl"
								style="color: #cc0000;"></i>
						</div>



					</div>
					<div class="col-md-9 pt-3 btn-outline-danger">

						<a class="btn  me-3 border" data-bs-toggle="button" href="#">Tất
							cả</a> <a class="btn active me-3 border" data-bs-toggle="button"
							href="#">5 sao (1,9k)</a> <a class="btn me-3 border"
							data-bs-toggle="button" href="#">4 sao (192)</a> <a
							class="btn me-3 border" data-bs-toggle="button" href="#"> 3
							sao (53)</a> <a class="btn me-3 border" data-bs-toggle="button"
							href="#"> 2 sao (11)</a> <a class="btn me-3 border"
							data-bs-toggle="button" href="#"> 1 sao (18)</a> <a
							class="btn  border " data-bs-toggle="button" href="#"> Có
							Bình Luận (1,3k)</a> <a class="btn border mt-3"
							data-bs-toggle="button" href="#"> Có Hình Ảnh/Video (300)</a>

					</div>
				</div>

			</div>



			<!-- thông tin người đánh giá -->
			<c:forEach var="review" items="${lreview}">


				<div class="row mt-3">
					<div class="col-md-1 pe-0">
						<img src="/image/${detailItem.image2}"
							class="img-thumbnail w-75 rounded-circle" alt="">
					</div>
					<div class="col-md-11 ps-0">
						<div class="fst-italic">${review.customer.customerName}</div>
						<div>


							<i
								class="fa-${review.rating >= 1 ? 'solid' : 'regular'} fa-star fa-xs"
								style="color: #cc0000;"></i> <i
								class="fa-${review.rating >= 2 ? 'solid' : 'regular'} fa-star fa-xs"
								style="color: #cc0000;"></i> <i
								class="fa-${review.rating >= 3 ? 'solid' : 'regular'} fa-star fa-xs"
								style="color: #cc0000;"></i> <i
								class="fa-${review.rating >= 4 ? 'solid' : 'regular'} fa-star fa-xs"
								style="color: #cc0000;"></i> <i
								class="fa-${review.rating >= 5 ? 'solid' : 'regular'} fa-star fa-xs"
								style="color: #cc0000;"></i>
						</div>
						<div class="text-secondary">Đánh giá ngày
							${review.reviewDate}</div>
						<div class="my-2">${review.reviewText }</div>
						<div>
							<img src="/image/${detailItem.image}"
								class="img-thumbnail border-0" style="width: 100px" alt="...">
							<img src="/image/${detailItem.image1}"
								class="img-thumbnail border-0" style="width: 100px" alt="...">
							<img src="/image/${detailItem.image3}"
								class="img-thumbnail border-0" style="width: 100px" alt="...">
						</div>
						<!-- nút like -->
						<div class="mb-3">
							<label class="containerLike"> <input checked="checked"
								type="checkbox"> <svg viewBox="0 0 512 512" height="1em"
									xmlns="http://www.w3.org/2000/svg" class="thumbs-up-regular">
                                    <path
										d="M323.8 34.8c-38.2-10.9-78.1 11.2-89 49.4l-5.7 20c-3.7 13-10.4 25-19.5 35l-51.3 56.4c-8.9 9.8-8.2 25 1.6 33.9s25 8.2 33.9-1.6l51.3-56.4c14.1-15.5 24.4-34 30.1-54.1l5.7-20c3.6-12.7 16.9-20.1 29.7-16.5s20.1 16.9 16.5 29.7l-5.7 20c-5.7 19.9-14.7 38.7-26.6 55.5c-5.2 7.3-5.8 16.9-1.7 24.9s12.3 13 21.3 13L448 224c8.8 0 16 7.2 16 16c0 6.8-4.3 12.7-10.4 15c-7.4 2.8-13 9-14.9 16.7s.1 15.8 5.3 21.7c2.5 2.8 4 6.5 4 10.6c0 7.8-5.6 14.3-13 15.7c-8.2 1.6-15.1 7.3-18 15.1s-1.6 16.7 3.6 23.3c2.1 2.7 3.4 6.1 3.4 9.9c0 6.7-4.2 12.6-10.2 14.9c-11.5 4.5-17.7 16.9-14.4 28.8c.4 1.3 .6 2.8 .6 4.3c0 8.8-7.2 16-16 16H286.5c-12.6 0-25-3.7-35.5-10.7l-61.7-41.1c-11-7.4-25.9-4.4-33.3 6.7s-4.4 25.9 6.7 33.3l61.7 41.1c18.4 12.3 40 18.8 62.1 18.8H384c34.7 0 62.9-27.6 64-62c14.6-11.7 24-29.7 24-50c0-4.5-.5-8.8-1.3-13c15.4-11.7 25.3-30.2 25.3-51c0-6.5-1-12.8-2.8-18.7C504.8 273.7 512 257.7 512 240c0-35.3-28.6-64-64-64l-92.3 0c4.7-10.4 8.7-21.2 11.8-32.2l5.7-20c10.9-38.2-11.2-78.1-49.4-89zM32 192c-17.7 0-32 14.3-32 32V448c0 17.7 14.3 32 32 32H96c17.7 0 32-14.3 32-32V224c0-17.7-14.3-32-32-32H32z">
                                    </path>
                                </svg> <svg viewBox="0 0 512 512" height="1em"
									xmlns="http://www.w3.org/2000/svg" class="thumbs-up-solid">
                                    <path
										d="M313.4 32.9c26 5.2 42.9 30.5 37.7 56.5l-2.3 11.4c-5.3 26.7-15.1 52.1-28.8 75.2H464c26.5 0 48 21.5 48 48c0 18.5-10.5 34.6-25.9 42.6C497 275.4 504 288.9 504 304c0 23.4-16.8 42.9-38.9 47.1c4.4 7.3 6.9 15.8 6.9 24.9c0 21.3-13.9 39.4-33.1 45.6c.7 3.3 1.1 6.8 1.1 10.4c0 26.5-21.5 48-48 48H294.5c-19 0-37.5-5.6-53.3-16.1l-38.5-25.7C176 420.4 160 390.4 160 358.3V320 272 247.1c0-29.2 13.3-56.7 36-75l7.4-5.9c26.5-21.2 44.6-51 51.2-84.2l2.3-11.4c5.2-26 30.5-42.9 56.5-37.7zM32 192H96c17.7 0 32 14.3 32 32V448c0 17.7-14.3 32-32 32H32c-17.7 0-32-14.3-32-32V224c0-17.7 14.3-32 32-32z">
                                    </path>
                                </svg> <span class="text-secondary">${detailItem.likes-2}</span>
							</label>
						</div>
					</div>
					<hr>
				</div>
			</c:forEach>
		</div>





	</div>


	<script src="https://kit.fontawesome.com/daba042c9f.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
	<script src="/views/js/trangchitiet.js"></script>
	<script src="/views/js/AnhTrangChiTiet.js"></script>

	<script src="/views/js/LaySaoTrangChiTiet.js"></script>

</body>

</html>