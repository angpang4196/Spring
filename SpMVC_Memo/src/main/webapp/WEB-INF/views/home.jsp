<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:redirect url="memo"/>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<style>
* {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	margin: 20px auto;
	width: 99.5%;
}

header {
	height: 100px;
	background-color: blue;
	color: white;
	text-align: center;
	margin: 1px auto;
	padding: 30px;
}

section {
	background-color: black;
}

nav {
	padding: 0;
	margin : 0 auto;
	color: white;
}

article {
	border: 5px solid black;
	box-sizing: border-box;
	height: 30%;
	padding-top: 10%;
	padding-bottom: 10%;
}

footer {
	background-color: blue;
	color: white;
	text-align: center;
}
</style>
</head>
<body>
	<header>
		<h2>나의 Simple 메모장</h2>
	</header>

	<section>
		<nav class="w3-bar w3-black">
			<a href="#" class="w3-bar-item w3-button">홈</a> <a href="#"
				class="w3-bar-item w3-button">메모쓰기</a> <a href="#"
				class="w3-bar-item w3-button">로그인</a> <a href="#"
				class="w3-bar-item w3-button">회원가입</a>
	</section>

	<article>
		<h4>반갑습니다</h4>
	</article>

	<footer>
		<p>CopyRight &copy; colplayer@naver.com
	</footer>
</body>
</html>