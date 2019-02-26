<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
html, body {
	box-sizing:border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing:border-box;
	width: 100%;
}

header {
	text-align: center;
	background-color: blue;
	color: white;
	padding: 0.3em;
	display: flex; 
	align-items:center;
	justify-content:center;
	margin : 0;
}

nav {
	background-color: gray;
	color: black;
	margin-top: 10px;
	margin-bottom: 10px;
	padding : 0.2em;
}

nav a{
	text-decoration: none;
	margin:0px;
	padding: 0.8em;	
}

nav a:hover {
	background-color: white;
	color: black;
	padding: 0.4em;
}

.content-container {
	display: flex;
	justify-content: center;
    align-items: center;
	border: 3px solid black;
	width: auto;
	margin-bottom: 10px;
}

.join{
	display :flex;
	flex-direction : column;
	background-color : white;
	width : 50%;
	height : 50%;
	text-align:center;
	border : 3px solid black;
	justify-content: center;
    align-items: center;
}

#btn-confirm{
	width: 10%;
}

footer {
	text-align: center;
	background-color: blue;
	color: white;
	padding : 0.2em;
	display: flex; 
	align-items:center;
	justify-content:center;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
	<header>
		<h1>회원가입</h1>
	</header>

	<nav>
		<a href="<c:url value='/' />">홈</a> 
		<a href="#">로그인</a> 
		<a href="<c:url value='/join'/>">회원가입</a> 
		<a href="<c:url value='/admin'/>">관리자</a>
		<a href="#">시스템정보</a>
	</nav>

	<section class="content-container">
		<c:if test="${BODY == 'JOIN-FORM'}">
			<%@ include file="/WEB-INF/views/bodys/join-form.jspf" %>
		</c:if>
	</section>

	<footer>
		<address>CopyRight &copy; colplayer@naver.com</address>
	</footer>

</body>
</html>