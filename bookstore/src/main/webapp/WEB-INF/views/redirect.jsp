<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="resources/js/jquery-3.2.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript"> 
var message = '${msg}'; 
var returnUrl = '${url}'; 
alert(message); 
document.location.href = returnUrl; 
</script>
</body>
</html>