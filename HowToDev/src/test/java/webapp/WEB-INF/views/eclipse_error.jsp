<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>HowToDev</title>
<link href="https://fonts.googleapis.com/css?family=Sunflower:300"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Indie+Flower"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Staatliches"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/public.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/eclipse_code.css">
</head>

<body>
	<header>
		<h1>
			<a href="/dev">HowToDev</a>
		</h1>
		<h5>입문개발자들을 위한 툴 가이드</h5>
	</header>
	<section>
		<div id="codebox">
			<img id="codeimg" alt=""
				src="${pageContext.request.contextPath}/img/code.png" />
			<div id="codetext">
				<c:forEach items="${ECLIPSE}" var="elist">
					<h2>에러명 : ${elist.ec_er_name}</h2>
					<h2>에러원인 : ${elist.ec_er_cause}</h2>
					<hr/>
				</c:forEach>
			</div>
		</div>
	</section>
</body>
</html>