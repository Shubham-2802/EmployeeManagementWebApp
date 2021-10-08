<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
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
	
	<div class="container">
		
		<div class="row">
			<div class="col-6 offset-3">
				<div class="card">
					<div class="card-header bg-info">
						Add Employee
					</div>
					<div class="card-body">
						<form:form modelAttribute="empObj" method="GET"
								action="${pageContext.request.contextPath}/saveEmployee.html" role="form">
					
								<br>
					
								<table border="1">
									<tr>
										<th>EmployeeName</th>
										<td><form:input path="name" /></td>
									</tr>
									<tr>
										<th>Role</th>
										<td>
											<form:select path="role">
												<form:option value="" label="--Select--" />
												<form:option value="TL" label="TeamLead" />
												<form:option value="M" label="Manager" />
												<form:option value="SE" label="Software Engineer" />
											</form:select>
										</td>
									</tr>
									<tr>
										<th>Salary</th>
										<td>
											<form:input path="salary"/>
										</td>
									</tr>
									<tr>
										<th>Employee Date of Joining</th>
										<td>
											<form:input path="insertTime"/>
										</td>
									</tr>
									
					
					
								</table>
							<br>
							<input type="submit" value="Register" class="btn btn-primary"/>
					
							</form:form>
					</div>
				</div>
			</div>
		</div>
		
	</div>
		
		
		
		<br><a href="${pageContext.request.contextPath}/">Home</a>
	</center>
</body>
</html>