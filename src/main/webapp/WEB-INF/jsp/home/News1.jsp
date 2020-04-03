<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>News</title>
<link href="css/simpleGridTemplate.css" rel="stylesheet" type="text/css">
</head>
<body>

	<div class="container">

		<header>
			<a href="">
				<h4 class="logo">
					<img src="images/finalcrest.png" width="125" height="92" alt="" />
				</h4>
			</a>
			<jsp:include page="headerMenu.jsp" />
			</head>
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
			<body>

			<jsp:include page="SubheaderMenu.jsp" />
	


				<div class="main">

					<c:forEach var="listValue" items="${news}">

						<h2>${listValue.headLine}</h2>
						<h5>${listValue.date}</h5>

						<div class="fakeimg">
							<img src="${listValue.picturePath}"  height="150" width="150">
						</div>
						<p>${listValue.author}</p>
						<p>${listValue.content}</p>
						<br>
					</c:forEach>

				</div>


				<main>

				<article>
					<h2>Millbridge Newsletter March 2020</h2>

					<p>That figure is a crucial part of the commitment that the GAA
						makes to sustaining our games. And GAA Clubs will be at the heart
						of the business which occupies the annual GAA Congress which takes
						place at Croke Park on the weekend of February 28-29. Aside from
						electing who the next GAA President will be from 2021-2024, the
						gathering of representatives will deliberate and discuss motions
						on a wide variety of topics seeking to improve how the GAA.</p>

					<h3>Gaelic Football playing rule changes</h3>

					<p>The club commenced underage coaching in 2006 and have
						dedicated the past 13 years to juvenile coaching and games within
						the club. Now they are in the process of expanding to cater for
						all the players who have come through this underage system. The
						club held its first formal Junior Hurling training session
						recently which drew 17 adult players to the newly opened
						Carracastle Astropark and Hurling Wall.</p>

					<p>The facility is proving very popular for the youth of the
						area and will be a central point for the development of hurlers in
						the locality. .</p>

					<h3>Tips on making your Club winter ready</h3>

					<p>Carrickedmond in Longford are a good example of a club who
						will soon reap the benefits of some original thinking. Back in
						2018 they hit upon the idea of purchasing 15 calves with the plan
						of selling them for beef two years down the line, and now it’s
						nearly time to make good on their investment.</p>

					<p>We had a meeting last week and we’ll have another one in
						the next week with the owners of the calves because they’re now
						ready to go,” Carrickedmond GAA club treasurer, Mairéad
						McDonnell told GAA.ie.</p>
				</article>


				<aside>
					<div class="row">
						<div class="side">
							<h2>The annual club all-stars live on Mid-West radio!</h2>
							<h5>June 8th,2020</h5>
							<div class="fakeimg" style="height: 230px;">
								<img src="images/mid.png" width="275" height="183" alt="" />
							</div>
							<p>Tickets available bellow</p>
							<h3>Related</h3>
							<p></p>
							<div class="fakeimg" style="height: 60px;">
								<li><a href="#">All star Tickets</a></li>
							</div>
							<br>
							<div class="fakeimg" style="height: 60px;">
								<li><a href="#">Mid-West radio</a></li>
							</div>
							<br>
							<div class="fakeimg" style="height: 60px;">
								<li><a href="#">Millbridge Gaa</a></li>
							</div>
						</div>
						<h2>Related</h2>



						<ul>

							<li><a href="#">https://www.gaa.ie/stories</a></li>
							<li><a href="#"></a></li>
							<li><a href="#">https://www.gaa.ie/search/?q=newsletter</a></li>
							<li><a href="#">https://www.gaa.ie/</a></li>
							<li><a href="#">https://www.gaa.ie/news-archive/</a></li>

						</ul>
				</aside>
				<div class="footer">
					<h2>©Millbridgegaa-2020</h2>
				</div>
			</body>
</html>
