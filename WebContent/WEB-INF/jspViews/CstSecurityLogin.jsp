<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container self-align-center">
		
		<div class="col-6 offset-3">
			<%@ include file="/WEB-INF/jspViews/header.jsp" %><br><br>
			<div class="card">
				<div class="card-header bg-info">
					User Login:
				</div>
				<div class="card-body">
					<form action="${pageContext.request.contextPath}/cstValidateSecureLogin" method="POST" role="form">
						<div class="form-group">
							<label>User name:</label>
							<input type="text" class="form-control" name="username"/>
						</div>
						<div class="form-group">
							<label>Password:</label>
							<input type="password" class="form-control" name="password"/>
						</div>
						<br>
						<input type="submit" value="Login" class="btn btn-primary">
						<input type="hidden" name="${_csrf.parameterName}"
							   value="${_csrf.token}" />
					</form>
					<div class="row">
						<div class="col-12">
							<c:if test="${param.error != null}">
								<p class="alert-danger">${param.error}</p>
							</c:if>
							<c:if test="${param.logout != null}">
								<p class="alert-warning">${param.logout}</p>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
		
	<br><br>
	<%@ include file="/WEB-INF/jspViews/footer.jsp" %>
</div>

</body>
</html>