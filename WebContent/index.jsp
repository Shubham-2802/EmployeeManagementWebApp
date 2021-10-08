<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
	<%@ include file="/WEB-INF/jspViews/header.jsp" %><br><br>
	<div class="container">
			<div class="row">
				<div class="list-group">
					<a class="list-group-item list-group-item-action list-group-item-primary" href="${pageContext.request.contextPath}/LoadSaveEmployee.html">Add Employee</a>
					<a class="list-group-item list-group-item-action list-group-item-primary" href="${pageContext.request.contextPath}/LoadUpdateEmployee.html">Update Employee</a>
					<a class="list-group-item list-group-item-action list-group-item-primary" href="${pageContext.request.contextPath}/GetDetails.html">Get All Employee Details</a>
					<%-- <a href="${pageContext.request.contextPath}/LoadGetDetailsInDateRange.html">Employee Details with in Date Range</a><br><br><br> --%>
					<a class="list-group-item list-group-item-action list-group-item-primary" href="${pageContext.request.contextPath}/LoadDeleteEmployeeByName.html">Delete Employee By-Name</a>
				</div>
			</div>
	</div>
	<%@ include file="/WEB-INF/jspViews/footer.jsp" %>
</center>
</body>
</html>