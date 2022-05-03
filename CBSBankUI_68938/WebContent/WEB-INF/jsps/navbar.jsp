<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar navbar-light bg-light">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">CBS Payments</a>
		<div id="navbarText">
			<span class="navbar-text"> Welcome <c:out
					value="${user.getName() }"></c:out>
			</span>
		</div>
	</div>
</nav>