<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="/views/css/style.css">
	
	


</head>
<body>

	<div class="container-fluid">
	
	<div class="row topNav">
	<jsp:include page="../views/admin/nav.jsp"></jsp:include>
	
	</div>
	
	  <div class="row flex-grow-1 h-100">
	  		<div class="col-md-3 left_content bg-dark text-light">
                 <jsp:include page="/views/admin/header.jsp"></jsp:include>
        	 </div>           
                    
             <div class="col-md-9 right_content">
                    <jsp:include page="../views/${showPage}"></jsp:include>
             </div>
        </div>
	

	
	</div>
	
		<!-- footer -->
		

			<jsp:include page="/views/admin/footer.jsp"></jsp:include>
		
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
		<script src="/views/js/admin.js"></script>
		<script src="https://kit.fontawesome.com/03099bb746.js" crossorigin="anonymous"></script>
			
			
		


</body>
</html>