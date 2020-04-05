<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Contact page</title>
<link href="css/simpleGridTemplate.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class="container"> 
  
  <header> <a href="">
    <h4 class="logo">MillBridge GAA <img src="images/finalcrest.png" width="125" height="92" alt=""/>
    </h4>
        </a>
     <jsp:include page="headerMenu.jsp" />
  <style>
	  	.column {
  column-count: 4;
  column-gap: 40px;
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

<div class="navbar">
  <a href="Seniormensteam.html">Senior Mens Team</a>
  <a href="SeniorLadiesteam.html">Senior Ladies Team</a>
  <a href="U21team.html">U21 Team</a>
  <a href="Physio.html">Physio</a>
</div>
		

<section class="mainContent"> 

<h3 style="color: red;">Contact via Email</h3>

	<div id="sendEmail">
		<form:form action="/sendEmail" method="post"
			modelAttribute="mail" enctype="multipart/form-data">
			
			<p>
				<label>Enter your email</label>
				<form:input path="fromAddress" />
			</p>
			<p>
				<label>Enter Subject</label>
				<form:input path="subject" />
			</p>
			<p>
				<label>Enter Message</label>
				<form:input path="message" />
			</p>
			<input type="SUBMIT" value="Submit" />
			
		</form:form>
		
		
	</div>

<h2>Contact Details</h2>
	<hr>

<div class="row">
  <div class="column" style="background-color:#aaa;">
    <h2>Administrator                                          </h2>
    <p><span>Name :</span> John Burke</p>
      <p><span>Email :</span> johnburke@gmail.com</p>
      <p><span>Website :</span> johnburke.com</p>
      <p><span>Phone :</span> (087) 1324388</p>
      <p><span>Address :</span> The Glens, Burch Road, Co.Sligo</p>
	</div>
 
  <div class="column" style="background-color:#bbb;">
    <h2 class="tag">Senior Team, Manager</h2>
	  <p><span>Name :</span> Pat Ryan</p>
		<p><span>Email :</span> patryan@gmail.com</p>
      <p><span>Phone :</span> (085) 8791344</p>
      <p><span>Address :</span> The Glens, Burch Road, Co.Sligo</p>
	  
	</div>
	<div class="column" style="background-color:#aaa;">
    <h2 class="tag">Senior Ladies, Manager</h2>
	  <p><span>Name :</span> Sinead Welsh</p>
		<p><span>Email :</span> sinwelsh@gmail.com</p>
      <p><span>Phone :</span> (083) 8451255</p>
      <p><span>Address :</span> The Hawthorns, Limeston Co.Sligo</p>
	</div>

	
		<div class="column" style="background-color: #bbb;">
    <h2 class="tag">U21, Manager</h2>
		<p><span>Name :</span> Brian Flynn</p>
       <p><span>Email :</span> brianflynn@gmail.com</p>
   
      <p><span>Phone :</span> (087) 7891754</p>
	<p><span>Address :</span> 10,The Glens, Burch Road,Co.Sligo </p>
	</div>
		
	<div class="column" style="background-color:#aaa;">
    <h2 class="tag">Physio</h2>
	  <p><span>Name :</span> Clare Hill</p>
		<p><span>Email :</span> clarehill@gmail.com</p>
		<p><span>Website :</span> clarehillphysio.com</p>
      <p><span>Phone :</span> (086) 2245923</p>
      <p><span>Address :</span> The Glens, Burch Road, Co.Sligo</p>
		
			</div>
	<div class="column" style="background-color: #bbb;">
    <h2 class="tag">Club Secretary</h2>
		<p><span>Name :</span> Vincent Hogan</p>
       <p><span>Email :</span> vhogan@gmail.com</p>
   
      <p><span>Phone :</span> (089) 7875932</p>
	<p><span>Address :</span> Burchway, Lynch Castle, Co.Sligo </p>
	</div>
	<div class="column" style="background-color: #aaa;">
    <h2 class="tag">Club President</h2>
		<p><span>Name :</span> Mary Butler</p>
       <p><span>Email :</span> Marybutler@gmail.com</p>
   
      <p><span>Phone :</span> (087) 7066998</p>
	<p><span>Address :</span> 15,Hookstown, The Glens,Co.Sligo </p>
	</div>
	
	<div class="column" style="background-color: #bbb;">
    <h2 class="tag">Club Vice President</h2>
		<p><span>Name :</span> Pat Quinn</p>
       <p><span>Email :</span> pquinn@gmail.com</p>
   
      <p><span>Phone :</span> (086) 7215772</p>
	<p><span>Address :</span> Hook road, Burch drive, Co.Sligo </p>
	</div>
	<div class="column" style="background-color: #aaa;">
    <h2 class="tag">Club Kit Man</h2>
		<p><span>Name :</span> Jarlet Hopkins</p>
       <p><span>Email :</span> jhop@gmail.com</p>
   
      <p><span>Phone :</span> (087) 9856332</p>
	<p><span>Address :</span> Finn road, Hazelway, Co.Sligo </p>
	</div>
	</div>
		
		  
  
	

<div class="footer">
  <h2>©Millbridgegaa-2020</h2>
	<hr>
</div>

</body>
</html>


