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
	<div class="row mt-4">
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
						<a href="<%=request.getContextPath()%>/completed-order-list">
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
			<div class="alert alert-warning mt-4 mb-4" align="center"
				role="alert">Order List</div>

			<c:forEach items="${list }" var="o">
				<div class="card mt-4 mb-4">
					<div class="card-header">
						OrderID:
						<c:out value="${o.id}" />
						&nbsp;&nbsp;&nbsp;&nbsp; Status:
						<c:out value="${o.status}" />
						&nbsp;&nbsp;&nbsp;&nbsp; Vendor Name:
						<c:out value="${o.vendor.name}" />

					</div>
					<div class="card-body">
						Expected Date of Fulfillment: <strong><c:out
								value="${o.expectedDateOfFulfillment}" /></strong>
						&nbsp;&nbsp;&nbsp;&nbsp; <br /> Amount:
						<c:out value="${o.amount}" />
						&nbsp;&nbsp;&nbsp;&nbsp; <br /> Order Details:
						<c:out value="${o.orderDetails}" />
						&nbsp;&nbsp;
						<hr>
						Vendor Details: <br> Contact:
						<c:out value="${o.vendor.contact}" />
						&nbsp;&nbsp;&nbsp;&nbsp; Email:
						<c:out value="${o.vendor.email}" />
						&nbsp;&nbsp;&nbsp;&nbsp; <br /> Address:
						<c:out value="${o.vendor.address}" />
						&nbsp;&nbsp; City:
						<c:out value="${o.vendor.city}" />
						&nbsp;&nbsp; Specialization:
						<c:out value="${o.vendor.specs}" />

					</div>
					<c:if test='${o.status == "PENDING" }'>
						<div class="card-footer">
							<a
								href="<%=request.getContextPath() %>/order-received?id=<c:out value="${o.id}" />"
								class="btn btn-primary">Order Received </a>
						</div>
					</c:if>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>