<%@page import="com.cbsbankui.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:import url="header.jsp" />
	<c:import url="navbar.jsp" />

	<div class="container mt-4">

		<div class="row">

			<div class="col-md-4">
				<div class="card" style="width: 18rem;">
					<div class="card-header">Vendor Management Module</div>
					<div class="card-body">
						<h5 class="card-title">Vendor</h5>
						<h6 class="card-subtitle mb-2 text-muted">Add & Manage</h6>
						<p class="card-text">Manage Existing Vendors, Add new Vendor
							to the system, Track Orders placed</p>
						<a href="<%=request.getContextPath()%>/vendor"
							class="btn btn-secondary"> Open Module</a>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card" style="width: 18rem;">
					<div class="card-header">Order Management Module</div>
					<div class="card-body">
						<h5 class="card-title">Order</h5>
						<h6 class="card-subtitle mb-2 text-muted">Place Order &
							Manage</h6>
						<p class="card-text">Place New Orders, Manage Existing Orders</p>
						<a href="<%=request.getContextPath()%>/order"
							class="btn btn-secondary"> Open Module</a>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card" style="width: 18rem;">
					<div class="card-header">Module Name</div>
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="card-link">Card link</a> <a href="#"
							class="card-link">Another link</a>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card" style="width: 18rem;">
					<div class="card-header">Module Name</div>
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="card-link">Card link</a> <a href="#"
							class="card-link">Another link</a>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card" style="width: 18rem;">
					<div class="card-header">Module Name</div>
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="card-link">Card link</a> <a href="#"
							class="card-link">Another link</a>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card" style="width: 18rem;">
					<div class="card-header">Module Name</div>
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="card-link">Card link</a> <a href="#"
							class="card-link">Another link</a>
					</div>
				</div>
			</div>

		</div>

	</div>

</body>
</html>