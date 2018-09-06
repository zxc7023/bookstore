<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <script src="https://code.jquery.com/jquery-1.11.3.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/default.css">
    <link rel="stylesheet" href="resources/css/style.css">
    <script src="resources/js/common.js"></script>
    <script src="resources/js/jquery-3.2.1.min.js"></script>
</head>

<body class="text-center">
<form class="form-signin" action="${pageContext.request.contextPath}/login" method="post">
    <h1 class="h3 mb-3 font-weight-normal">Please Log in</h1>
    <label for="id" class="sr-only">Email address</label>
    <input type="text" id="id" name="id" class="form-control" placeholder="ID" required autofocus>
    <label for="inputPassword" class="sr-only">Password</label>
    <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" required>
    <div class="checkbox mb-3">
        <label>
            <input type="checkbox" value="remember-me"> Remember me
        </label>
    </div>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Log in</button>
</form>
<div class="card-body text-center">Don't have an account? <a href="sign-in.html">Sign In</a></div>
</body>
</html>
