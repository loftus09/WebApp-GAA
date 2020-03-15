<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page session="false"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Index</title>
<link href="css/simpleGridTemplate.css" rel="stylesheet" type="text/css">
</head>
<body>
<!-- Main Container -->
<div class="container"> 
  <!-- Navigation -->
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
  <a href="manager log.html">Manager</a>
  <a href="Players LOG1.html">Player</a>
  <a href="#">U21</a>
  <a href="#">Physio</a>
</div>

<div class="row">
  <div class="side">
    <h2>The annual GAA Cúl Camp is on in Castlegar GAA</h2>
    <h5>Jul 5,2019</h5>
    <div class="fakeimg" style="height:230px;"><img src="images/clubhouse.jpg" width="275" height="183" alt=""/></div>
    <p>Sign up today!</p>
    <h3>Lotto winners!</h3>
    <p>Draw took place last Sunday.</p>
    <div class="fakeimg" style="height:60px;">1st Luke Sweeney</div><br>
    <div class="fakeimg" style="height:60px;">2nd Laura Fitzpatrick</div><br>
    <div class="fakeimg" style="height:60px;">3rd Mairt Ruddy</div>
  </div>
  <div class="main">
    <h2>GAA Healthy Clubs’ Achievement</h2>
    <h5> Jan 7, 2020</h5>
    <div class="fakeimg" style="height:200px;">
		<img src="images/2players.jfif" alt="8"></div>
    <p>John Burke</p>
    <p>In 2019 Castlegar GAA Club achieved the ‘GAA Healthy Club’ status. Following work completed over a  three year period the club attained the highest level of health awareness and activity that the GAA award annually.  In 2020 the club are hoping to continue this trend of healthy activities and are open for club members to get involved in both the organisation and the activities themselves</p>
    <br>
    <h2>Tribute to Paddy Fahy (RIP)</h2>
    <h5>Feb 2, 2020</h5>
    <div class="fakeimg" style="height:200px;"><img src="images/pitch.png" alt="8"></div>
    <p>Sarah Roy</p>
    <p>A few days ago Paddy Fahy passed away to his eternal rest. It marked the end of a long era. Not only an era, but, in fact, a century came to an end as Paddy showed his determination in life by being around with his family and friends for all of one hundred years. This is no mean feat and its worth taking a wee trip down his memory lane and considering for a moment the times that he grew up in so as to try to imagine his younger days.</p>
	<br>
	  <h2>A Trio of Dreams on All- Ireland Final Day!</h2>
    <h5>Feb 28, 2020</h5>
    <div class="fakeimg" style="height:200px;"><img src="images/team.jfif" alt="8"></div>
    <p>Sarah Roy</p>
    <p>In 1996 there was a great sporting movie by the name of When Saturday Comes. It starred the well known Seán Bean in the main role as an ageing footballer who aspired to play for his home town professional Football Club Sheffied United.  Seán`s character was named Jimmy in the movie and his demeanour off the pitch was not to be respected at all as he caroused in late nights of excessive drinking and was content in living for a go nowhere job. Then, he fell for a pretty girl called Annie and from there things began to change for him that eventually made his dreams come true.</p>
  </div>
</div>

<div class="footer">
  <h2>©Millbridgegaa-2020</h2>
</div>
 

></body>
</html>
