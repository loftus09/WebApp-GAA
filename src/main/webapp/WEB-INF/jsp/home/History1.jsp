<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>History</title>
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
		  table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 16px;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
	background-color: #aaa;
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
	


  <div class="main">
   <p>
	   <h1>Club History</h1>
	  <hr>
 
			
			MillBridge is a Gaelic Athletic Association club based in the Mullinabreena area in Sligo, Ireland. The club is a member of the Sligo GAA. MillBridge GAA Club caters for huge numbers of young boys and girls and adults who play Football and Ladies Football in the parish of Mullinabreena area.</br>
The club was founded in 1887. During the 1970s the Club became a major underage force in Sligo football under the guidance of Club greats such as Tony Regan and Liam Sammon. This resulted in over ten championships at both minor and U-21 levels being won. The Club lost the All-Ireland Final in 1994 to Lavey of Derry after a spirited effort.
			</br></br>
Since the 1980s the Club has always had successful underage teams in football. Minor and U21 finals are regularly contested but the Club did however need to wait under 1997 to win its next County title. 
MillBridge has traditionally been recognised mainly as a major GAA Club in Sligo with a great reputation for producing strong underage teams. Ladies football also has flourished in recent years and the club has won titles at underage and junior level, capturing an Intermediate county title in 2010, and players are now playing for Sligo on the inter-county stage.
	</br> </br>
Ladies football has flourished in recent years and the club has won titles at underage and junior level, capturing a Junior county title in 2003, and players are now playing for Sligo on the inter-county stage. </p>
<h2>Club Honours
</h2>
 <hr>

<table>
 
	  
	  
  </tr>
  <tr>
  <td>Men's Football Honours:</td>
  <td>Sligo Senior Football Championship:</td>
  <td>1956, 1978, 1982, 1994, 1997, 1999, 2004, 2007, 2009, 2011, 2013</td>
  </tr>
  <tr>
  <td></td>
  <td>Sligo Junior Football Championship:</td>
  <td>1938, 1946, 1954, 1986, 2004</td>
  </tr>
  <tr>
  <td></td>
  <td>Sligo Under 21 Football Championship:</td>
  <td>1976, 2006, 2008</td>
  </tr>
  <tr>
  <td></td>
  <td>Sligo Minor 'A' Football Championship:</td>
  <td>1967, 1968, 1971, 1981, 1982</td>
  </tr>
</tr>
  <tr>
  <td></td>
  <td>Sligo Under-16 Football Championship:</td>
  <td>1971, 1975, 1977</td>
  </tr>
  <tr>
  <td></td>
  <td>Sligo Senior Football League (Division 1):</td>
  <td>1971, 1973, 1992, 2000, 2001, 2009, 2010, 2012, 2013</td>
  </tr>
  <tr>
  <td>Ladies Football Honours:</td>
  <td>Sligo Intermediate Championship:</td>
  <td>2010, 2013, 2019</td>
  </tr>
  <tr>
  <td></td>
  <td>Sligo Intermediate League:</td>
  <td>2009</td>
  </tr>
	<tr>
  <td></td>
  <td>Sligo Junior Championship:</td>
  <td>1995, 1997, 2005</td>
  </tr>
  <tr>
  <td></td>
  <td>Sligo Minor 'A' Championship:</td>
  <td>1994, 2003, 2005, 2006, 2007</td>
  </tr>
  <tr>
  <td></td>
  <td>Sligo Minor 'B' Championship:</td>
  <td>1995</td>
  </tr>
<tr>
  <td></td>
  <td>Sligo Minor 'C' Championship:</td>
  <td>1997</td>
  </tr>
</table>


<div class="footer">
  <h2>©Millbridgegaa-2020</h2>
	<hr>
 
</div>

 

</body>
</html>

