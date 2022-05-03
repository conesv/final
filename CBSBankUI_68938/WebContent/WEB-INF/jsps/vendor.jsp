[8:36 AM] Imtiyaz Hirani (Guest)
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script type="text/javascript">
	window.onload = function() {
		var chart = new CanvasJS.Chart("chartContainer", {
			theme : "light2",
			title : {
				text : "Vendor Statistics - based on Industry"
			},
			subtitles : [ {
				text : "Speciality vs No. of vendors"
			} ],
			axisY : {
				title : "Number of Vendors",
				labelFormatter : addSymbols
			},
			data : [ {
				type : "bar",
				indexLabel : "{y}",
				indexLabelFontColor : "#444",
				indexLabelPlacement : "inside",
				dataPoints :
<%=request.getAttribute("dataPoints")%>
	} ]
		});
		chart.render();
		function addSymbols(e) {
			var suffixes = [ "", "K", "M", "B" ];
			var order = Math.max(
					Math.floor(Math.log(e.value) / Math.log(1000)), 0);
			if (order > suffixes.length - 1)
				order = suffixes.length - 1;
			var suffix = suffixes[order];
			return CanvasJS.formatNumber(e.value / Math.pow(1000, order))
					+ suffix;
		}
	}
</script>
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
			</ol>
		</div>
		<div class="col-sm-8">
			<div id="chartContainer" style="height: 500px; width: 100%;"></div>
			<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
		</div>
	</div>
</body>
</html>

