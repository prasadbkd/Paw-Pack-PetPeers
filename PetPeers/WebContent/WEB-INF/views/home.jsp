<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
* {
	box-sizing: border-box;
	margin: 0px;
	font-family: sans-serif;
}

.head-div {
	background-color: #ff99cc;
	color: #1a66ff;
}

h1 {
	text-align: center;
}

.main-nav {
	display: inline-block;
	text-align: right;
	width: calc(100% - 74px);
	vertical-align: middle;
}

.main-nav-items {
	display: inline-block;
	list-style: none;
}

.main-nav-item a {
	display: inline-block;
	text-decoration: none;
	font-weight: bold;
	color: black;
	font-size: large;
	margin: 0px;
}

.main-nav-item {
	display: inline-block;
	padding: 5px;
	vertical-align: middle;
}

.main-nav-item a:hover {
	color: #1a66ff;
}

.para {
	text-align: justify;
	text-justify: auto;
	border: 1px solid black;
	box-shadow: 5px 10px #ADD8E6;
	width: 75%;
	padding: 20px;
	line-height: 30px;
	background-color: #ffe6e6;
	margin-top:30px; 
}

body {
	background-image:
		url("https://i.pinimg.com/originals/5b/89/5b/5b895b1b531b2ca248b8a252b6009d68.jpg");
}

.cont {
	display: flex;
	justify-content: center;
	align-content: center;
	vertical-align: middle;
	padding-top: 150px;
	font-family: sans-serif;
}

.large {
	font-size: 25px;
}

.loginhead {
	color: #1a66ff;
	margin-left: 10px;
}
.message{
text-align:center;
color: black; 
}
.bgcolor{
background-color: green;
}
</style>
<%
	response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");
%>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
	<header>
		<div class="head-div">
			<h1>The Paw Pack PetPeers</h1>
			<nav class="main-nav">
				<ul class="main-nav-items">
					<li class="main-nav-item"><a
						href="${pageContext.request.contextPath}/register">Register</a></li>
					<li class="main-nav-item"><a
						href="${pageContext.request.contextPath}/login">Login</a></li>
				</ul>
			</nav>
		</div>
	</header>
	
	<div class="cont">
		<h2 class="loginhead">&nbsp;&nbsp; About Us:</h2>
	
		<p class="para">
			Owning a pet can positively impact not only your health but also your
			lifestyle. Couples who own a pet together have lower blood pressure
			and interact with each other more than couples who do not own a pet.
			Studies show that pet owners are more likely to get to know people in
			their neighborhood than those who do not have a pet. Animals can help
			children by teaching them about empathy and responsibility, and can
			even boost their literacy skills. Whether you have a dog, cat, bird,
			or anything in between, pet ownership can be an adventure. A furry
			friend can also keep you company through the stress or isolation of
			the coronavirus pandemic as this may be why pet adoption and fostering
			have spiked recently. While people who adopt an animal usually think
			they're changing its life for the better, pets have just as much of a
			positive impact on the lives of their owners. If you're still on the
			fence about whether or not you should adopt a pet, here are 15
			reasons why you need one in your life. <br>
			<strong class="large">So, Get your furry friend from us and
				have a "PAWsome" life ahead!!</strong>
		</p>

	</div>
	<br><br><div class="message"><span class="bgcolor" >${message}</span></div>
</body>
</html>