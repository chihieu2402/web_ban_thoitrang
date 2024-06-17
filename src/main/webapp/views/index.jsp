<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/views/css/banner.css">

</head>
<body>
	<div>
		<jsp:include page="../views/banner.jsp"/>
	</div>
	
	<div>
		<jsp:include page="../views/home.jsp"/>
	</div>
	
	<div>
		<jsp:include page="../views/footer.jsp"/>
	</div>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://kit.fontawesome.com/68a6aada2a.js" crossorigin="anonymous"></script>
</body>
</html>