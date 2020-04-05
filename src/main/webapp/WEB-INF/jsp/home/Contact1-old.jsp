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

<jsp:include page="SubheaderMenu.jsp" />
		

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





<div class="row">
  <div class="column" style="background-color:#aaa;">
    <h2>Administrator</h2>
    <p><span>Name :</span> John Burke</p>
      <p><span>Email :</span> johnburke@gmail.com</p>
      <p><span>Website :</span> johnburke.com</p>
      <p><span>Phone :</span> (087) 1324388</p>
      <p><span>Address :</span> The Glens, Co.Sligo</p>
	</div>
 
  <div class="column" style="background-color:#bbb;">
    <h2 class="tag">Senior Team, Manager</h2>
	  <p><span>Name :</span> Pat Ryan</p>
		<p><span>Email :</span> patryan@gmail.com</p>
      <p><span>Phone :</span> (085) 8791344</p>
      <p><span>Address :</span> The Glens, Burch Road, Co.Sligo</p>
	</div>

	
		<div class="column" style="background-color: #aaa;">
    <h2 class="tag">U21, Manager</h2>
		<p><span>Name :</span> Brian Flynn</p>
       <p><span>Email :</span> brianflynn@gmail.com</p>
   
      <p><span>Phone :</span> (087) 7891754</p>
	<p><span>Address :</span> Hookstown, Co.Sligo </p>
	</div>
		
	<div class="column" style="background-color:#bbb;">
    <h2 class="tag">Physio</h2>
	  <p><span>Name :</span> Clare Hill</p>
		<p><span>Email :</span> clarehill@gmail.com</p>
		<p><span>Website :</span> clarehillphysio.com</p>
      <p><span>Phone :</span> (086) 2245923</p>
      <p><span>Address :</span> The Glens, Burch Road, Co.Sligo</p>
		
			</div>
	<div class="column" style="background-color: #aaa;">
    <h2 class="tag">Club Secretary</h2>
		<p><span>Name :</span> Vincent Hogan</p>
       <p><span>Email :</span> vhogan@gmail.com</p>
   
      <p><span>Phone :</span> (089) 7875932</p>
	<p><span>Address :</span> Lynch Casle, Co.Sligo </p>
	</div>
	<div class="column" style="background-color: #bbb;">
    <h2 class="tag">Club President</h2>
		<p><span>Name :</span> Mary Butler</p>
       <p><span>Email :</span> Marybutler@gmail.com</p>
   
      <p><span>Phone :</span> (087) 7066998</p>
	<p><span>Address :</span> Hookstown, Co.Sligo </p>
	</div>
	
	</div>
		
		  
  
	

<footer>
  <hr>
  <p class="footerDisclaimer">&nbsp;</p>
<span class="container">&copy; - <strong>Millbridge Gaa 2020</strong></span></footer>
	
	
  
  
  <footer id="contact">
    <p class="hero_header"></p>
    <div class="button">EMAIL ADMIN </div>
  </footer>
 
  <div class="Millbridge">&copy;2020 - <strong></strong></div>
</div>

</body>
</html>

></body>
</html>


