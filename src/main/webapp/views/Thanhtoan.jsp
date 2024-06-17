<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Thanh Toán</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body style="background-color: #fff4f4;">

	<nav class="navbar navbar-expand-lg navbar-light"
		style="background-color: #f7fffe;">
		<div class="container">
			<a class="navbar-brand" href="#"><img style="max-height: 60px;"
				src="../image/logo1.webp" alt="Logo"></a>
			<h2 class="mt-3" style="color: #FE5621;">Shoppe | Giỏ Hàng</h2>
			<div class="ms-auto input-group mt-2" style="max-width: 500px;">
				<input type="text" class="form-control" placeholder="Tìm Kiếm"
					aria-label="Search" aria-describedby="basic-addon1"
					style="border: 2px solid #FE5621;"> <span
					class="input-group-text" id="basic-addon1"
					style="background-color: #FE5621; border: 2px solid #FE5621; min-width: 100px;">
					<i class="fas fa-search"></i>
				</span>
			</div>
		</div>
	</nav>

	<div class="container mt-2"
		style="background-color: white; padding: 20px; border-radius: 2px">
		<div class="row mt-5">
			<div class="col-md-6 border-end"
				style="border-right: 1px solid black">
				<div class="mb-3">
					<label for="name1" class="form-label">Họ Và Tên :</label> <input
						type="text" class="form-control" id="name1">
				</div>
				<div class="mb-3">
					<label for="name2" class="form-label">Số điện thoại :</label> <input
						type="text" class="form-control" id="name2">
				</div>
				<div class="mb-3">
					<label for="name3" class="form-label">Địa chỉ :</label> <input
						type="text" class="form-control" id="name3">
				</div>
			</div>
			<div class="col-md-6">
				<div class="">
					<div class="text-center border-0">
						<h3>Tổng Thanh Toán</h3>
					</div>
					<div class="">


						<div class="input-group">
							<p class="text-start" style="margin-right: 150px">Tổng sản
								phẩm:</p>
							<c:forEach var="item" items="${cart}">
								<p>${item.quantity}   -- ${item.product.productName}<br></p>
								
								<c:set var="subtotal"
									value="${item.product.price*item.quantity}" />
								<c:set var="totalPrice" value="${totalPrice}" />
							</c:forEach>
						</div>

						<br>
						<div class="input-group">
							<p class="text-start" style="margin-right: 150px">Tổng Thanh
								toán:
							<p>đ ${totalPrice}</p>
							<!-- Add payment total here -->
							</p>

						</div>

						<hr>
					</div>
					<div class="text-end border-0">
						<button class="btn btn-danger" onclick="submitForm()">Thanh
							toán</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
	<script>
		function submitForm() {
			const name = document.getElementById('name1').value;
			const phone = document.getElementById('name2').value;
			const address = document.getElementById('name3').value;

			const form = document.createElement('form');
			form.method = 'POST';
			form.action = '/api/pdf/create';

			const inputName = document.createElement('input');
			inputName.type = 'hidden';
			inputName.name = 'name';
			inputName.value = name;
			form.appendChild(inputName);

			const inputPhone = document.createElement('input');
			inputPhone.type = 'hidden';
			inputPhone.name = 'phone';
			inputPhone.value = phone;
			form.appendChild(inputPhone);

			const inputAddress = document.createElement('input');
			inputAddress.type = 'hidden';
			inputAddress.name = 'address';
			inputAddress.value = address;
			form.appendChild(inputAddress);

			document.body.appendChild(form);
			form.submit();

		}
	</script>
</body>
</html>
