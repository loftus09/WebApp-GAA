<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<div style="border: 1px solid #ccc; padding: 5px; margin-bottom: 20px;">

	<a href="${pageContext.request.contextPath}/portal/welcome">Home</a> | &nbsp;

<table border="1">

<tr>

<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_MANAGER')">
<td>
  <a href="${pageContext.request.contextPath}/portal/addNewNews">Add
        News</a>
        </td>
       
</sec:authorize>

<sec:authorize access="hasRole('ROLE_ADMIN')">
<td>
     <a href="${pageContext.request.contextPath}/portal/addNewPlayer">Add
        Player</a>
</td>
</sec:authorize>
<sec:authorize access="hasRole('ROLE_ADMIN')">
<td>
     <a href="${pageContext.request.contextPath}/portal/getPlayers">Get
        All Players</a>
</td>
</sec:authorize>

<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_MANAGER')">
<td>
      <a href="${pageContext.request.contextPath}/portal/managerLog">Manager
        Logs</a>
</td>
</sec:authorize>

<sec:authorize access="hasRole('ROLE_USER')">
   <a href="${pageContext.request.contextPath}/portal/addResult">Add
        Result</a>
</sec:authorize>
<td>
<a href="${contextPath}/portal/logout">Logout</a>
</td>
</tr>
</table>

    <form id="logoutForm" method="POST" action="${contextPath}/portal/logout">
    </form>

</div>