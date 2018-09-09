<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 정보</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/default.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<script src="${pageContext.request.contextPath}/resources/js/common.js"></script>

</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	<section class="section section_2">
		<article class="container body">
			<div class="row">
				<div class="mymenu-wrap col-md-8 col-md-offset-2 col-xs-12">
					<ul>
						<li class=" col-md-6 col-xs-6"><a href="#">나의 정보보기</a></li>
						<li class=" col-md-6 col-xs-6"><a href="#">장바구니보기</a></li>
						<li class=" col-md-6 col-xs-6"><a href="#">구매내역 보기</a></li>
						<li class=" col-md-6 col-xs-6"><a href="#">고객센터</a></li>
					</ul>
				</div>
			</div>
		</article>
	</section>
	<section class="container footer"></section>

</body>
</html>