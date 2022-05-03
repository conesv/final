<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- CSS only -->
<style>
.login{
	border: 1px #000 solid; 
	border-radius: 20px;
	padding: 10px;
	margin-top: 100px;
	
}
</style>
</head>
<body>
<div class="row">
	<div class="col-sm-3"></div>
	<div class="col-sm-6">
		<div class="login">
			<h3>Login</h3>	
			<c:out value="${msg}" /> <br>
		 	<form action="<%=request.getContextPath() %>/process-login" method="post"> 
			<label class="form-label">Username/Email address
			</label>
  			<input type="email" class="form-control" name="username">
  			<br> 
  			<label class="form-label">Password
			</label>
  			<input type="password" class="form-control" name="password">
  			
  			<br> 
  			<input type="submit" class="btn btn-primary" value="LOGIN" />
  			</form>
  			
  			<hr>
  			<a href="<%=request.getContextPath() %>/sign-up">Sign-Up</a>
  			<br>
  			<a href="<%=request.getContextPath() %>/forgot-password">Forgot Password?</a>
		</div>
	</div>
</div>
</body>
 
 
</html>