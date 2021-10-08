<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
<style>
.error {
	color: #ff0000;
	font-style: italic;
}
</style>
</head>
<body>
	<div class="justify-content-end">
			<h3>Welcome ${pageContext.request.userPrincipal.name}</h3>
			<a href="${pageContext.request.contextPath}/cstLogout">
				<input type="button" value="Logout" >
			</a>
	</div>
	<center>
		<h2>Add Employee Details Success</h2>
		${message}
		<br><br><a href="${pageContext.request.contextPath}/">Home</a>
	</center>
</body>
</html>