<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/default.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script>
$(document).ready(function(){
	var itemValue = localStorage.getItem("saveId");
	
	if (itemValue != null) {
		$("input[name=id]").val(itemValue)
	}
	
	var $form = $("form");
	$("#login").click(function() {
		if ($("input[type=checkbox]").prop("checked") == true) {
			localStorage.setItem("saveId", $("input[name=id]").val());
		} else {
			localStorage.removeItem("saveId");
		}
		$form.submit();
		return false;
	});
});

</script>
</head>
<body class="text-center">
	<form class="form-signin" action="${pageContext.request.contextPath}/user/login" method="post">
		<h1 class="h3 mb-3 font-weight-normal">Please Log in</h1>
		<label for="id" class="sr-only">Email address</label>
		<input type="text" id="id" class="form-control" placeholder="ID" required autofocus name="id">
		<label for="inputPassword" class="sr-only">Password</label>
		<input type="password" id="inputPassword" class="form-control" placeholder="Password" required name="password">
		<div class="checkbox mb-3">
			<label> <input type="checkbox" value="remember-me"> Remember me
			</label>
		</div>
		<button class="btn btn-lg btn-primary btn-block" type="submit" id="login">Log in</button>
		<div class="card-body text-center">
			Don't have an account? <a href="sign-in.html">Sign In</a>
		</div>
	</form>
</body>
</html>
