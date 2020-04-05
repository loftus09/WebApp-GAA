<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Senior Ladies Team</title>
<link href="css/simpleGridTemplate.css" rel="stylesheet" type="text/css">
	<script>
function resizeToMax(id){
    myImage = new Image() 
    var img = document.getElementById(id);
    myImage.src = img.src; 
    if(myImage.width > myImage.height){
        img.style.width = "100%";
    } else {
        img.style.height = "100%";
    }
}
</script>
</head>
<body>

<div class="container"> 
   <header> <a href="">
    <h4 class="logo"><img src="images/finalcrest.png" width="125" height="92" alt=""/>
  </h4>
        </a>
 <jsp:include page="headerMenu.jsp" />
	 
	  <style>
		  

table, td, th {  
  border: 1px solid #ddd;
  text-align: left;
}

table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 15px;
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

</style>
</head>
<body>
<jsp:include page="SubheaderMenu.jsp" />
	
</head>
	

	<div>
	<img src="images/dl1.jpg" width="100%" height="auto" id="image" onload="resizeToMax(this.id)">
</div>
	<div><p> From left to right; Denise Horan, Nuala O'Shea, Helena Lohan (c), Sharon McGing, 
		Mary T. Garvey, Yvonne Byrne, Claire O'Hara, Clare Egan, Jackie Moran, E. Mullins, 
		Cora Staunton, Michelle McGing, Diane O'Hora, Marcella Heffernan, Christina Heffernan </p></div>
  
<div class="footer">
  <h2>©Millbridgegaa-2020</h2>
	<hr>
</div>
 

</body>
</html>
