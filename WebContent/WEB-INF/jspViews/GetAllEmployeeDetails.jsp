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

		<%@ include file="/WEB-INF/jspViews/header.jsp" %><br><br>
		<h2>Employee Details</h2>
		<form:form>
			
			<br>
			<c:if test="${not empty empList}">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<table border="1" class="table table-light table-striped">
					
								<tr>
									<th>EmployeeID</th><th>EmployeeName</th><th>Role</th><th>Salary</th><th>EmpDate</th>
								</tr>
								<c:forEach var="var" items="${empList}">
								<tr>
									<td>${var.id}</td><td>${var.name}</td><td>${var.role}</td><td>${var.salary}</td><td>${var.insertTime}</td>
								</tr>		
								</c:forEach>
							
						</table>
					</div>
				</div>
			</div>
			
			</c:if>
			<c:if test="${empty empList}">
			
				<h2>No Employees Available</h2>
			
			</c:if>
			
			<br><a href="${pageContext.request.contextPath}/">Home</a>
		</form:form>
		<br><br>
		<%@ include file="/WEB-INF/jspViews/footer.jsp" %>
</center>
</body>
</html>