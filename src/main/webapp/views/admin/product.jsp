<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<h1 class="mb-4">Product Management</h1>
<form id="uploadForm" action="/product/upload" method="post"
	enctype="multipart/form-data">
	<div class="form-group">
		<label for="productId">Product ID:</label> <input name="productId"
			type="text" class="form-control" id="productId"
			value="${product.productId}">
	</div>
	<div class="form-group">
		<label for="productName">Product Name:</label> <input
			name="productName" type="text" class="form-control" id="productName"
			value="${product.productName}">
	</div>
	<div class="form-group">
		<label for="price">Price:</label> <input name="price" type="text"
			class="form-control" id="price" value="${product.price}">
	</div>
	<div class="form-group">
		<label for="content">Content:</label>
		<textarea name="content" class="form-control" id="content">${product.content}</textarea>
	</div>
	<div class="form-group">
		<label for="quantity">Quantity:</label> <input name="quantity"
			class="form-control" value="${product.quantity}" id="quantity"></input>
	</div>

	<div class="form-group">
		<label for="image">Image:</label> <input name="imgP" type="file"
			class="form-control" id="photo" multiple> <input
			type="hidden" name="image" id="fileName" value="${product.image}">
		<c:if test="${not empty product.image}">
			<p>Tên File: ${product.image}</p>
		</c:if>
	</div>

	<br>
	<div class="row mb-3">
		<div class="col-md-8">
			<div class="btn-group">
				<button formaction="/admin/product/create" class="btn btn-info">Add</button>
				<button formaction="/admin/product/update" class="btn btn-warning">Update</button>
				<button type="button" class="btn btn-danger" id="deleteButton"
					onclick="handleDelete()">Delete</button>
				<a href="/admin/products" class="btn btn-success">Reset</a>
			</div>
		</div>
	</div>
</form>
<div class="">
	<form action="/admin/product/search" method="get" class="input-group "
		style="left: 800px; width: 300px;">
		<input type="text" name="keywords" class="form-control" id="search"
			placeholder="Enter product name">
		<div class="input-group-append ">
			<button type="submit" class="btn btn-dark">
				<i class="fas fa-search"></i>
			</button>
		</div>
	</form>
</div>

<!-- table -->
<table class="table table-striped table-bordered mt-4" id="productTable">
	<thead class="thead-dark">
		<tr>
			<th>Product ID</th>
			<th>Product Name</th>
			<th>Price</th>
			<th>Content</th>
			<th>Image</th>
			<th>Category</th>
			<th>Quantity</th>
			<th>Edit</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="product" items="${products}">
			<tr>
				<td>${product.productId}</td>
				<td>${product.productName}</td>
				<td>${product.price}</td>
				<td>${product.content}</td>
				<td><img src="/image/${product.image}" alt=""
					style="width: 100px; height: 80px;"></td>
				<td>${product.category.categoryID}</td>
				<td>${product.quantity}</td>
				<td>
					<button class="btn btn-info">
						<a href="/admin/product/edit/${product.productId}"
							style="color: white; text-decoration: none;">Edit</a>
					</button>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<script>
	function handleDelete() {
		alert("Không thể xóa sản phẩm");

	}
</script>
