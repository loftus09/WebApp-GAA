<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>



<div class="navbar">

<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_MANAGER')">


  <a href="${pageContext.request.contextPath}/portal/MensPanel">Senior Mens Team Panel</a>
  <a href="${pageContext.request.contextPath}/portal/LadiesPanel">Senior Ladies Team Panel</a>
  <a href="${pageContext.request.contextPath}/portal/U21Panel">U21 Team Panel</a>
  </sec:authorize>
</div>


