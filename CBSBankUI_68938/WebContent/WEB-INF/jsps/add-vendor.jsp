<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.login {
	border: 1px #000 solid;
	border-radius: 20px;
	padding: 10px;
	margin-top: 20px;
	width: 80%;
	margin-left: 60px;
}
</style>
</head>
<body>
	<c:import url="header.jsp" />
	<c:import url="navbar.jsp" />




	<div class="col-sm-4 ">
		<div class="alert alert-primary mt-4 mb-4" role="alert">Order
			Management Module</div>



		<ol class="list-group list-group-numbered">
			<li
				class="list-group-item d-flex justify-content-between align-items-start">
				<div class="ms-2 me-auto">
					<a href="<%=request.getContextPath()%>/order">
						<div class="fw-bold">Order Dashboard</div>
					</a> Order Statistics
				</div> <span class="badge bg-primary rounded-pill">Home</span>
			</li>
			<li
				class="list-group-item d-flex justify-content-between align-items-start">
				<div class="ms-2 me-auto">
					<a href="<%=request.getContextPath()%>/add-order">
						<div class="fw-bold">Place New Order</div>
					</a> Record vendor details in the system
				</div> <span class="badge bg-primary rounded-pill">New</span>
			</li>
			<li
				class="list-group-item d-flex justify-content-between align-items-start">
				<div class="ms-2 me-auto">
					<a href="<%=request.getContextPath()%>/order-list">
						<div class="fw-bold">Completed Order List</div>
					</a> All vendors in the System
				</div> <span class="badge bg-primary rounded-pill">done</span>
			</li>
			<li
				class="list-group-item d-flex justify-content-between align-items-start">
				<div class="ms-2 me-auto">
					<a href="<%=request.getContextPath()%>/pending-order-list">
						<div class="fw-bold">Pending Order List</div>
					</a> Content for list item
				</div> <span class="badge bg-primary rounded-pill">pending</span>
			</li>
		</ol>
	</div>

	<div class="col-sm-8">
		<div class="login">
			<h3>Place New Order</h3>
			<c:out value="${msg }" />
			<form action="<%=request.getContextPath()%>/process-add-vendor"
				method="post">
				<label class="form-label">Name </label> <input type="text"
					class="form-control" name="name"> <br> <label
					class="form-label">Email </label> <input type="email"
					class="form-control" name="email"> <br> <label
					class="form-label">Contact </label> <input type="number"
					class="form-control" name="contact"> <br> <label
					class="form-label">Address </label>
				<textarea name="address" class="form-control"></textarea>
				<br> <label class="form-label">City </label> <input type="text"
					class="form-control" name="city"> <br> <label
					class="form-label">BusinessSpecialization </label> <select
					name="spec" class="form-control">
					<option value="">---select business type---</option>
					<option value="Cement Manufacturing">Cement Manufacturing</option>
					<option value="Water Transport">Water Transport</option>
					<option value="Workforce Provider">Workforce Provider</option>
					<option value="Interior Design">Interior Design</option>
					<option value="Electric Supplies">Electric Supplies</option>
					<option value="Pipes & Fittings">Pipes & Fittings</option>
					<option value="Logistics">Logistics</option>
				</select> <br> <input type="submit" class="btn btn-primary"
					value="Add Vendor" />
			</form>


		</div>
	</div>

	</div>

</body>
</html>