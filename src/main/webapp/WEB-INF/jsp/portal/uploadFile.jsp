<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Employee</title>
</head>
<jsp:include page="menu.jsp" />
<body>
	<h3 style="color: red;">Add New Player</h3>

	<div id="addPlayer">
		<form:form action="${contextPath}/portal/addNewPlayer" method="post"
			modelAttribute="player">
			
			<p>
				<label>Enter Name</label>
				<form:input path="playerName" />
			</p>
			<p>
				<label>Enter Age</label>
				<form:input path="age" />
			</p>
			<p>
				<label>Enter Phone#</label>
				<form:input path="phoneNumber" />
			</p>
			<input type="SUBMIT" value="Submit" />
		</form:form>
		
	</div>
</body>
</html>
