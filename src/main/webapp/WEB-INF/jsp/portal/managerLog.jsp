<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Manager Profile</title>
<link href="${contextPath}/css/simpleGridTemplate.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class="container"> 
 
  <header> <a href="">
    <h4 class="logo"><img src="${contextPath}/images/finalcrest.png" width="125" height="92" alt=""/>
  </h4>
        </a>
<nav>
      <h1 class="personal">Manager Profile</h1> 
      	
	
 

                           
	  
      
    </nav>
	  <style>
		    
}

ul, li {
  list-style: none;
  display: inline;
	align: center;
}
		  .progress-bar{
  height: 12px;
  background: #e74c3c;
  border-radius: 12px;
}
.p1{
  width: 90%;
}
.p2{
  width: 70%;
}
.p3{
  width: 50%;
}
		  .progress-bar span{
  float: right;
  margin-right: 6px;
  line-height: 13px;
  color: #fff;
  font-size: 12px;
}
		
* {
  box-sizing: border-box;
}


body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}


.header {
  padding: 80px;
  text-align: center;
  background: #ffffff;
  color: white;
}


.header h1 {
  font-size: 40px;
}

.navbar {
  overflow: hidden;
  background-color: #333;
}

.navbar a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
}


.navbar a.right {
  float: right;
}

.navbar a:hover {
  background-color: #ddd;
  color: black;
}

.row {  
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap; 
  flex-wrap: wrap;
}


.side {
  -ms-flex: 30%; 
  flex: 30%;
  background-color: #f1f1f1;
  padding: 20px;
}


.main {   
  -ms-flex: 70%; /* IE10 */
  flex: 70%;
  background-color: white;
  padding: 20px;
}


.fakeimg {
  background-color: #aaa;
  width: 100%;
  padding: 20px;
}


.footer {
  padding: 20px;
  text-align: center;
  background: #ddd;
}

@media screen and (max-width: 700px) {
  .row {   
    flex-direction: column;
  }
}


@media screen and (max-width: 400px) {
  .navbar a {
    float: none;
    width: 100%;
  }
}
</style>
</head>
<body>

<div class="header">
  <h1></h1>
  <p></p>
</div>

<jsp:include page="Submenu.jsp" />

<div class="row">
  <div class="side">
	    <div id="content">
<div class="notOnDesktop"> 
 
	<input type="button" name="button" id="button" value="LOGOUT">
      
    </div>
    <section id="mainContent"> 
      
      <h1 style="color: black"> Weekly Training Report</h1>
     <input type="button" name="button" id="button2" value="Session1">
    
                 
</div>
   
    <p></p>
    <h3></h3>
    <p></p>
    <div class="fakeimg" style="height:60px;"><li><a href="Results1.html" title="Link"><button>RESULTS</button></a></li></div><br>
    <div class="fakeimg" style="height:60px;"><li><a href="Fixtures1.html" title="Link"><button>FIXTURES</button></a></li></div><br>
	  <div class="fakeimg" style="height:60px;"><li><a href="Physio.html" title="Link"><button>PHYSIO</button></a></li></div><br>
<tr>
		<h2 style="color: black"> Player List</h2>
		<table>
		<tbody>
		<th>Name</th>
      <th>Age&nbsp; &nbsp; &nbsp; &nbsp;</th>
		<th>Phone No.</th></tr>

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


		</table></tbody> </p>
    <br>
	  
  </div>
  <div class="main">
    <h2>Information from last Monday's Gym session</h2>
    <h5> Jan 10, 2020</h5>
    <ul>
    <img src="${contextPath}/images/trainer.jfif"  alt="Cinque Terre" width="150" height="100">
    <img src="${contextPath}/images/pitch.png"	alt="Cinque Terre" width="150" height="100">
    <img src="${contextPath}/images/physio.png"	alt="Cinque Terre" width="150" height="100">
	  </ul>
    <h5>Current Mens Senior Panel Analysis</h5>
	  <p> The first training session back after the New Year was what was to be expected. Some lads kept themselves in good shape over the break, but some definitely did not. The next two weeks training will have to be mainly cardio exercises to get the lads back in shape.  </p>
  <div class="about-section-col">
              <div class="skills">
                <div class="skill">
                  <div class="title">Duration</div>
                  <div class="progress">
                    <div class="progress-bar p1"><span>120 Minutes</span></div>
                  </div>
                </div>

                <div class="skill">
                  <div class="title">Attendance</div>
                  <div class="progress">
                    <div class="progress-bar p2"><span>30</span></div>
                  </div>
                </div>

                <div class="skill">
                  <div class="title">Training Performance Average</div>
                  <div class="progress">
                    <div class="progress-bar p3"><span>95%</span></div>
                  </div>

<div class="footer">
  <h2>©Millbridgegaa-2020</h2>
</div>
 

</body>
</html>
