 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Results</title>
<link href="css/simpleGridTemplate.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class="container"> 
  

   <jsp:include page="headerMenu.jsp" />
	 
 
	  <style>
		  		  ul {
  white-space: nowrap;
}

ul, li {
  list-style: none;
  display: inline;
	align: center;
}
		  
		  
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
	

</br></br>
	<hr>
	<ul>
    <li><img src="images/res6.jfif"  alt="Cinque Terre" width="150" height="100"></li>
    <li><img src="images/res3.jfif"	alt="Cinque Terre" width="150" height="100"></li>
    <li><img src="images/pub2.png"	alt="Cinque Terre" width="150" height="100"></li>
    <li><img src="images/res2.jfif"	alt="Cinque Terre" width="150" height="100"></li>
    <li><img src="images/pub3.jfif"	alt="Cinque Terre" width="150" height="100"></li>
    <li><img src="images/res4.jfif"	alt="Cinque Terre" width="150" height="100"></li>
	 <li><img src="images/mid.png"	alt="Cinque Terre" width="150" height="100"></li>
</ul>
	
  <br></br>
	<hr>
	
<h2>Recent Results</h2>
<p></p>

<table>
  <tr>
  <th>Grade</th>
  <th>Venue</th>
  <th>Home</th>
  <th>Away</th>
  <th>Score</th>
  <th>Date</th>
	  
	  
  </tr>
  <tr>
  <td>Senior A</td>
  <td>Suncroft Park</td>
  <td>Suncroft GFC</td>
  <td>MillBridge GAA</td>
  <td>1-13 to 2-12</td>
  <td>02/03/2020</td>
  </tr>
  <tr>
  <td>U21</td>
  <td>Ellistown Field</td>
  <td>Ellistown GFC</td>
  <td>MillBridge GAA</td>
  <td>1-13 to 2-12</td>
  <td>02/03/2020</td>
  </tr>
  <tr>
  <td>Senior Ladies</td>
  <td>Rheban Road</td>
  <td>Rheban GAA</td>
  <td>MillBridge GAA</td>
	   <td>2-11 to 0-9</td>
  <td>09/03/2020</td>
  </tr>
  <tr>
  <td>U21</td>
  <td>MillBridge Park</td>
  <td>MillBridge GAA</td>
  <td>Blakestown GFC</td>
	   <td>3-03 to 1-09</td>
  <td>16/03/2020</td>
  </tr>
	<tr>
  <td>Senior Ladies</td>
  <td>MillBridge Park</td>
  <td>MillBridge GAA</td>
  <td>Foxhill GAA</td>
		 <td>2-13 to 0-16</td>
  <td>17/03/2020</td>
  </tr>
  <tr>
  <td>Senior A</td>
  <td>MillBridge Park</td>
  <td>MillBridge GAA</td>
  <td>Moyvalley GFC</td>
	   <td>1-13 to 2-12</td>
  <td>24/03/2020</td>
  </tr>
  <tr>
  <td>U21</td>
  <td>Longriver Road</td>
  <td>Sarsfields</td>
  <td>MillBridge GAA</td>
	   <td>1-13 to 2-12</td>
  <td>24/03/2020</td>
  </tr>
  <tr>
  <td>Senior B</td>
  <td>Fedder Field</td>
  <td>St.Johns GAA </td>
  <td>MillBridge GAA</td>
	   <td>1-13 to 2-12</td>
  <td>25/03/2020</td>
  </tr>
</table>
		
</table>
  </section>
<br></br>
<hr>
<ul>
    <li><img src="images/ht1.jfif"  alt="Cinque Terre" width="150" height="100"></li>
    <li><img src="images/pub1.jfif"	alt="Cinque Terre" width="150" height="100"></li>
    <li><img src="images/rad.png"	alt="Cinque Terre" width="150" height="100"></li>
    <li><img src="images/res1.jfif"	alt="Cinque Terre" width="150" height="100"></li>
    <li><img src="images/svg.jfif"	alt="Cinque Terre" width="150" height="100"></li>
    <li><img src="images/res5.png"	alt="Cinque Terre" width="150" height="100"></li>
	 <li><img src="images/s1.jfif"	alt="Cinque Terre" width="150" height="100"></li>
</ul>
	
  <br></br>
<hr>

<div class="footer">
  <h2>©Millbridgegaa-2020</h2>
</div>
<hr>
 

></body>
</html>
