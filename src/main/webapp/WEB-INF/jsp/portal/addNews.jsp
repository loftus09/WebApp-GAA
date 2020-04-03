<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Employee</title>
  <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/common.css" rel="stylesheet">

</head>
<jsp:include page="menu.jsp" />
<body>
	<h3 style="color: red;">Add New News</h3>

	<div id="addNews">
		<form:form action="${contextPath}/portal/addNewNews" method="post"
			modelAttribute="news" enctype="multipart/form-data">
			
			<p>
				<label>Enter HeadLine</label>
				<form:input path="headLine" />
			</p>
			<p>
				<label>Enter Author</label>
				<form:input path="author" />
			</p>
			<p>
				<label>Enter Date</label>
				<form:input path="date" />
			</p>
			<p>
				<label>Enter News Content</label>
				<form:input path="content" />
			</p>
				<p>
			 <label>Select a file to upload</label>
           <input type="file" name="files" />
			</p>
			
			<input type="SUBMIT" value="Submit" />
			
		</form:form>
		
		
	</div>
</body>
</html>
