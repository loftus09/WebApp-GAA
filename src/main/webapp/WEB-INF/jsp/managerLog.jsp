<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page session="false"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Managers Log</title>
<link href="css/ManagerLog1CSS.css" rel="stylesheet" type="text/css">
<!--The following script tag downloads a font from the Adobe Edge Web Fonts server for use within the web page. We recommend that you do not modify it.--><script>var __adobewebfontsappname__="dreamweaver"</script><script src="http://use.edgefonts.net/montserrat:n4:default;source-sans-pro:n2:default.js" type="text/javascript"></script>
</head>

<body>
<div id="mainwrapper">
  <header> 
    <!--**************************************************************************
    Header starts here. It contains Logo and 3 navigation links. 
    ****************************************************************************-->
    <div id="logo"> <img src="css/finalcrest.jpg" alt="sample logo" width="190" height="136"> </div>
    <nav>
		
      <h2 class="personal">Personal Trainer</h2> 
      <input type="button" name="button" id="button" value="LOGOUT">	
	
    </nav>
  </header>
  <div id="content">
    <div class="notOnDesktop"> 
      <!-- This search box is displayed only in mobile and tablet laouts and not in desktop layouts -->
      <input type="text" placeholder="Search">
    </div>
    <section id="mainContent"> 
      <!--************************************************************************
    Main Blog content starts here
    ****************************************************************************-->
      <h2 style="color: black"> Player List</h2>
      	<a href="${pageContext.request.contextPath}/addNewEmployee">Add New
        Employee</a>
		<table>
		<tbody>
		
	
    <tr>
		<th>Name</th>
      <th>Age&nbsp; &nbsp; &nbsp; &nbsp;</th>
		<th>Phone No.</th></tr>
	
    <h3 style="color: red;">Show All Employees</h3>
	<ul>
	
	<c:forEach var="listValue" items="${players}">
	
	<tr>
	<td>${listValue.playerName}</td>
	<td>${listValue.age}</td>
	<td>${listValue.phoneNumber}</td>
	</tr>
	
		</c:forEach>
		
    
    	</table>
    	
    	</tbody>
		
		
		<h2 style="color: black"> Weekly Training Report</h2>
     <input type="button" name="button" id="button2" value="Session1">
		<input type="button" name="button" id="button3" value="Session 2">
		
		<h2 style="color:  black" class="training">Duration</h2>
		<div class="container">
  <div class="skills html">65 Minutes</div>
</div>
      <h2 style="color:  black" class="training">Attendance</h2>
		<div class="container">
  <div class="attendance css">20</div>
</div>
		<h2 style="color:  black" class="training">Training Performance</h2>
		<div class="container">
  <div class="player">85%</div>
</div>
		
      
    </section>
    <section id="sidebar"> 
      <!--************************************************************************
    Sidebar starts here. It contains a searchbox, sample ad image and 6 links
    ****************************************************************************-->
      
      <div id="adimage"><img src="fyp crest.JPG" alt=""/></div>
      <nav>
        <ul>
          <li><a href="#" title="Link">FIXTURES</a></li>
          <li><a href="#" title="Link">TRAINING SCHEDULE</a></li>
          <li><a href="#" title="Link">NEWS</a></li>
          <li><a href="#" title="Link">PHYSIO</a></li>
          <li><a href="#" title="Link">FEEDBACK</a></li>
        </ul>
      </nav>
    </section>
   
  </div>
  <div id="footerbar"><!-- Small footerbar at the bottom --></div>
</div>
</body>
</html>
