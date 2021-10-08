<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags"  prefix="spring"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
			<h2>Update Employee Details Success</h2>
	
				<br>
				<div class="container">
					<div class="row">
						<div class="col-12">
							<table border="2" class="table table-success table-striped">
								<tr>
									<th>Employee Id</th>
									<td>${empObj3.id}</td>
									
								</tr>
								<tr>
									<th>Employee Name</th>
									<td>${empObj3.name}</td>
									
								</tr>
								<tr>
									<th>Role</th>
									<td>${empObj3.role}</td>
									
								</tr>
								<tr>
									<th>Salary</th>
									<td>${empObj3.salary}</td>
									
								</tr>
								<tr>
									<th>Employee Date of Joining</th>
									
									<td>
										<fmt:formatDate pattern="dd-MMM-yyyy" value="${empObj3.insertTime}"/>	
									</td>
									
								</tr>
							</table>
						</div>
					</div>
				</div>
				
		<br><a href="${pageContext.request.contextPath}/">Home</a>
		<br><br>
		<%@ include file="/WEB-INF/jspViews/footer.jsp" %>
	</center>
</body>
</html>