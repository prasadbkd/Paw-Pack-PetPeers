<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
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
	vertical-align: middle;
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

body {
	background-image:
		url("https://i.pinimg.com/originals/5b/89/5b/5b895b1b531b2ca248b8a252b6009d68.jpg");
}

.login {
	display: flex;
	justify-content: center;
	align-content: center;
	vertical-align: middle;
	padding: 10px;
	/*  border: 1px solid black;
     margin-left:35%;
     margin-right:35%;
     margin-top:10px; */
	/* box-shadow:  box-shadow: 5px 10px #888888;; */
}

h1, p {
	text-align: center;
}

.loginhead {
	margin-top: 90px;
	margin-bottom: 10px;
}

.welcome {
	text-align: left;
	margin: 5px;
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
}

.cont {
	display: flex;
	justify-content: center;
	align-content: center;
	vertical-align: middle;
	padding-top: 90px;
	font-family: sans-serif;
}

.buy {
	text-align: center;
	text-decoration: none;
	font-weight: bold;
	color: black;
	font-size: large;
	margin-left: 405px;
	background-color: #888888;
	border-radius: 8px;
	padding: 5px;
}

.buyy : hover {
	background-color: #ADD8E6;
}
</style>
<meta charset="ISO-8859-1">
<title>Profile</title>
<c:if test="${validUser==null}">
	<c:redirect url="/login"></c:redirect>
</c:if>
</head>
<body>
	<div class="head-div">
		<h1>The Paw Pack PetPeers</h1>
		<nav class="main-nav">
			<br>
			<ul class="main-nav-items">
				<li class="main-nav-item"><a
					href="${pageContext.request.contextPath}/">Home</a></li>
				<li class="main-nav-item"><a
					href="${pageContext.request.contextPath}/registerpet">Register
						Pet</a></li>
				<li class="main-nav-item"><a
					href="${pageContext.request.contextPath}/displaypets">My Pets</a></li>
				<li class="main-nav-item"><a
					href="${pageContext.request.contextPath}/logout">Logout</a></li>
			</ul>
		</nav>
	</div>
	<h1 class="welcome">Welcome, ${validUser.name}</h1>
	<div class="cont">
		<p class="para">
			<br>
			<strong class="large">So, Get your furry friend from us and
				have a "PAWsome" life ahead!!</strong> We provide a wide variety of breeds of
			dogs, the furry friend you will get from us will love like no one
			could ever do. Click here to get your pawsome friend. <br>
			<br>
			<a class="buy" href="${pageContext.request.contextPath}/buypets">Buy
				Pets</a>
		</p>
	</div>
</body>
</html>