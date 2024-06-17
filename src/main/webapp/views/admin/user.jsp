	<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	
	<h1 class="mb-4">User Management</h1>
	
	<form:form action="/admin/users" modelAttribute="users">
		<div class="form-group">
			<label for="email">Email:</label> <input value="${user.email}"
				name="email" type="email" class="form-control" id="email"
				placeholder="Enter email">
		</div>
		<div class="form-group">
			<label for="password">Password:</label> <input
				value="${user.password}" name="password" type="password"
				class="form-control" id="password" placeholder="Enter password">
		</div>
		<div class="form-group">
			<label for="id">ID:</label> <input value="${user.id}" name="id"
				type="id" class="form-control" id="id" placeholder="Enter id">
		</div>
		<div class="form-group">
			<label>Role:</label>
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="radio" name="role" id="role1"
					${user.role ? 'checked' : ''} value="true"> <label
					class="form-check-label" for="role1">Admin</label>
			</div>
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="radio" name="role" id="role2"
					${!user.role ? 'checked' : ''} value="false"> <label
					class="form-check-label" for="role2">User</label>
			</div>
		</div>
		<div class="btn-group mt-3">
			<button formaction="/admin/user/create" class="btn btn-info">Add</button>
			<button formaction="/admin/user/update" class="btn btn-warning">Update</button>
			 <button type="button" class="btn btn-danger" id="deleteButton" onclick="handleDelete()">Delete</button>
			<button type="reset" class="btn btn-success">Reset</button>
		</div>
	</form:form>
	
	<!-- Table -->
	<table class="table table-striped table-bordered mt-5">
		<thead class="thead-dark">
			<tr>
				<th>Email</th>
				<th>Password</th>
				<th>Role</th>
				<th>ID</th>
				<th>Edit</th>
	
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${users}">
				<tr>
					<td>${user.email}</td>
					<td>${user.password}</td>
					<td>${user.role ? 'Admin' : 'User'}</td>
					<td>${user.id}</td>
					<td><a href="/admin/user/edit/${user.id}"
						class="btn btn-info text-white">Edit</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<script>
    function handleDelete() {
        alert("Không thể xóa sản phẩm");
        
    }
</script>