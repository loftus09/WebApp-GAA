<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@page session="false"%>
<html>
<head>
<title>Show Employees</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	      
	<h3 style="color: red;">Show All Players</h3>
	<ul>
		<c:forEach var="listValue" items="${players}">

			<tr>
				<td>${listValue.playerName}</td>
				<td>${listValue.age}</td>
				<td>${listValue.phoneNumber}</td>
				<sec:authorize access="hasRole('ROLE_ADMIN')">
					<td><a
						href="${pageContext.request.contextPath}/portal/deletePlayer/${listValue.id}">delete
							</a></td>
				</sec:authorize>


			</tr>

		</c:forEach>
	</ul>
</body>
</html>