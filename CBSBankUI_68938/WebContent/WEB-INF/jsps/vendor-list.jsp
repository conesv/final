<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:import url="header.jsp" />
	<c:import url="navbar.jsp" />

	<div class="row mt-4">
		<div class="col-sm-4 ">
			<div class="alert alert-primary mt-4 mb-4" role="alert">Vendor
				Management Module</div>

			<ol class="list-group list-group-numbered">
				<li
					class="list-group-item d-flex justify-content-between align-items-start">
					<div class="ms-2 me-auto">
						<a href="<%=request.getContextPath()%>/vendor">
							<div class="fw-bold">Vendor Dashboard</div>
						</a> Vendor Statistics
					</div> <span class="badge bg-primary rounded-pill">Home</span>
				</li>
				<li
					class="list-group-item d-flex justify-content-between align-items-start">
					<div class="ms-2 me-auto">
						<a href="<%=request.getContextPath()%>/add-vendor">
							<div class="fw-bold">Add New Vendor</div>
						</a> Record vendor details in the system
					</div> <span class="badge bg-primary rounded-pill">New</span>
				</li>
				<li
					class="list-group-item d-flex justify-content-between align-items-start">
					<div class="ms-2 me-auto">
						<a href="<%=request.getContextPath()%>/vendor-list">
							<div class="fw-bold">Vendor List</div>
						</a> All vendors in the System
					</div> <span class="badge bg-primary rounded-pill">14</span>
				</li>
				<li
					class="list-group-item d-flex justify-content-between align-items-start">
					<div class="ms-2 me-auto">
						<div class="fw-bold">Subheading</div>
						Content for list item
					</div> <span class="badge bg-primary rounded-pill">14</span>
				</li>
			</ol>
		</div>
		<div class="col-sm-8">
			<div class="alert alert-warning mt-4 mb-4" align="center"
				role="alert">Vendor List</div>

			<c:forEach items="${list }" var="v">
				<div class="card mt-4 mb-4">
					<div class="card-header">
						<c:out value="${v.name}" />

					</div>
					<div class="card-body">
						Contact:
						<c:out value="${v.contact}" />
						&nbsp;&nbsp;&nbsp;&nbsp; Email:
						<c:out value="${v.email}" />
						&nbsp;&nbsp;&nbsp;&nbsp; <br /> Address:
						<c:out value="${v.address}" />
						&nbsp;&nbsp; City:
						<c:out value="${v.city}" />
						&nbsp;&nbsp; Specialization:
						<c:out value="${v.specs}" />
					</div>
				</div>
			</c:forEach>

		</div>
	</div>
</body>
</html>