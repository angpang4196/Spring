<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<title>Dynamic Menu</title>

<link rel="stylesheet" href="<c:url value='/css/menu.css'/>">

</head>

<body>
<%@ include file="/WEB-INF/views/include/include-nav.jspf" %>
	<nav>
		<ul>
			<li><a href="#">홈</a>
			<li><a href="<c:url value='/menu1'/> ">메뉴시스템1</a>
			<li><a href="<c:url value='/menu2'/> ">DROP Menu</a>
			<li><a href="<c:url value='/menu3'/> ">DB Menu</a>
			<li><a href="#">로그인</a>
			<li><a href="#">회원가입</a>
		</ul>
	</nav>

</body>
</html>