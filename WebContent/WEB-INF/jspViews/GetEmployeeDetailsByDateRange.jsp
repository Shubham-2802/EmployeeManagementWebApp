<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WithInDateRange</title>
<style>
.error {
color: #ff0000;
font-style: italic;
}
.cst_table {
    border: 2px solid black;
}
</style>
</head>
<body>
<center>
<h2>Employee Details with in Date Range</h2>
	
	<form:form action="${pageContext.request.contextPath}/GetDataWithinDateRange.html"
			   method="GET"
			   modelAttribute="empDetails">
		
		<table border="1">
			<tr><td>From:</td><td><form:input path="fromDate"/></td></tr>
			<tr><td>To  :</td><td><form:input path="toDate"/></td></tr>
		</table>
		<br>
		<input type="submit" value="Submit">
	
	</form:form>
	
	<hr>
	<c:if test="${not empty empList}">
		
		<table border="1">
			<tr>
				<th>EmployeeId</th><th>EmployeeName</th><th>Role</th><th>Salary</th><th>EmpDate</th>
			</tr>
			<c:forEach items="${empList}" var="emp"></c:forEach>
			<tr>
				<th>${emp.id}</th><th>${emp.name}</th><th>${emp.role}</th><th>${emp.salary}</th><th>${emp.insertTime}</th>
			</tr>
		</table>
	
	</c:if>

	<br><a href="${pageContext.request.contextPath}/">Home</a>
</center>
</body>
</html>