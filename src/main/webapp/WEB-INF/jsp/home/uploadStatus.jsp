<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<body>

<%
String msg = request.getParameter("msg");
%>

<h1>Request Status</h1>
<div>
<c:if test="${msg}">
<h2 th:text="${msg}"> </h2>
</c:if>

</div>

</body>
</html>