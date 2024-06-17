<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
         <form action="" method="post">
       
	        <div class="container-fluid mt-4">
        <h1 class="mt-4">Quản lý Đơn hàng</h1>
        <table class="table table-bordered">
            <thead>
                <tr>
                 
                    <th>ID Đơn hàng</th>
                    <th>ID Khách hàng</th>
                    <th>Ngày Xuất Hóa đơn</th>
                    <th>Thao tác</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="order" items="${orders}">
                    <tr>
                        <td>${order.billID}</td>
                        <td>${order.customer.customerID}
                        <td>${order.createDate}</td>
                        <td>
                            <button class="btn btn-info btn-sm">Xem</button>
                            <button class="btn btn-danger btn-sm">Hủy</button>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    
    </form>