<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page session="false"%>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Gallery</title>
<link href="css/simpleGridTemplate.css" rel="stylesheet" type="text/css">

</head>
<body>

<div class="container"> 

  <header> <a href="">
    <h4 class="logo"><img src="images/finalcrest.png" width="125" height="92" alt=""/>
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

/* Main column */
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

/* Footer */
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

		  
div.gallery {
  margin: 5px;
  border: 1px solid #ccc;
  float: left;
  width: 180px;
}

div.gallery:hover {
  border: 1px solid #777;
}

div.gallery img {
  width: 100%;
  height: auto;
}

div.desc {
  padding: 15px;
  text-align: center;
}
	.column {
  float: left;
  width: 25%;
  padding: 5px;
}


.row::after {
  content: "";
  clear: both;
  display: table;
}

</style>
</head>
<body>
<jsp:include page="SubheaderMenu.jsp" />

	<div class="row">
<div class="column">
  <a target="_blank" href="img_5terre.jpg">
    <img src="images/lcelb.jfif" alt="Cinque Terre" width="400" height="200">
  </a>
  <div class="desc">Sligo LGFA Final 2019</div>
</div>

<div class="column">
  <a target="_blank" href="img_forest.jpg">
    <img src="images/highb.jfif" alt="Forest" width="400" height="200">
  </a>
  <div class="desc">Millbridge v Hookstown</div>
</div>

<div class="column">
  <a target="_blank" href="img_lights.jpg">
    <img src="images/def.jfif" alt="Northern Lights" width="400" height="200">
  </a>
  <div class="desc">Chloe Coady in Round 2</div>
</div>

<div class="column">
  <a target="_blank" href="img_5terre.jpg">
    <img src="images/redwin.jfif" alt="Cinque Terre" width="400" height="200">
  </a>
  <div class="desc">Sligo county Final 2019</div>
</div>

<div class="column">
  <a target="_blank" href="img_forest.jpg">
    <img src="images/lift.jfif" alt="Forest" width="400" height="200">
  </a>
  <div class="desc">Connacht Champions</div>
</div>

<div class="column">
  <a target="_blank" href="img_lights.jpg">
    <img src="images/puncj.jfif" alt="Northern Lights" width="400" height="200">
  </a>
  <div class="desc">Final Win</div>
</div>		

		<div class="column">
  <a target="_blank" href="img_5terre.jpg">
    <img src="images/shot.jfif" alt="Cinque Terre" width="400" height="200">
  </a>
  <div class="desc">Ryan O'Dwer Penalty</div>
</div>

<div class="column">
  <a target="_blank" href="img_forest.jpg">
    <img src="images/thru.jfif" alt="Forest" width="400" height="200">
  </a>
	<div class="desc">Brendan Ryan through on goal</div>
</div>

<div class="column">
  <a target="_blank" href="img_lights.jpg">
    <img src="images/clubhouse.jpg" alt="Northern Lights" width="400" height="200">
  </a>
  <div class="desc">Millbridge Gaa Clubhouse</div>
</div>
		
			<div class="column">
  <a target="_blank" href="img_5terre.jpg">
    <img src="images/2players.jfif" alt="Cinque Terre" width="400" height="200">
  </a>
  <div class="desc">Sligo Championship Qtr Final</div>
</div>

<div class="column">
  <a target="_blank" href="img_forest.jpg">
    <img src="images/shw.jfif" alt="Forest" width="400" height="200">
  </a>
	<div class="desc">Simon Covey looking for support</div>
</div>

<div class="column">
  <a target="_blank" href="img_lights.jpg">
    <img src="images/high.jfif" alt="Northern Lights" width="400" height="200">
  </a>
  <div class="desc">High challenge on Evan Casey</div>
</div>
		
			<div class="column">
  <a target="_blank" href="img_5terre.jpg">
    <img src="images/heart.jfif" alt="Cinque Terre" width="400" height="200">
  </a>
  <div class="desc">John Flynn after Semi-Final win</div>
</div>

<div class="column">
  <a target="_blank" href="img_forest.jpg">
    <img src="images/lkick.jfif" alt="Forest" width="400" height="200">
  </a>
	<div class="desc">Laura Welsh going for a point</div>
</div>

<div class="column">
  <a target="_blank" href="img_lights.jpg">
    <img src="images/fall.jfif" alt="Northern Lights" width="400" height="200">
  </a>
  <div class="desc">Sligo League round 2</div>
</div>
		
		
</div>


  

<div class="footer">
  <h2>©Millbridgegaa-2020</h2>
	
	<hr>
</div>
 
 


</body>
</html>
