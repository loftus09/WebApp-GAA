<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<body>

<h1>Spring Boot - Upload Status</h1>

<div th:if="${msg}">
    <h2 th:text="${msg}"/>
</div>

</body>
</html>