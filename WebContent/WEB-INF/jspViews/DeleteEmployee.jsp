<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Employee Page</title>
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
	<h2>Delete Employee </h2>
	
		<form:form action="${pageContext.request.contextPath}/DeleteEmployeeByName.html" 
				   method="POST" 
				   modelAttribute="empObj">
		
			Enter name:<form:input path="name"/>
			<input type="submit" value="Submit">
		
		</form:form>
		
		<c:if test="${result==1 && not empty message}">
			<h2>${result} Employee deleted successfully</h2>
		</c:if>
		
		<c:if test="${result==0 && not empty message}">
			<h2>No employee with such name. Enter correct name.</h2>
		</c:if>
		
		<br><a href="${pageContext.request.contextPath}/">Home</a>
	
	</center>
</body>
</html>