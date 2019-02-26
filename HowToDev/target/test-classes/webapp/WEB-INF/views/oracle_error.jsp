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
	href="${pageContext.request.contextPath}/css/code.css">
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
				src="${pageContext.request.contextPath}/resources/code.png" />
			<div id="codetext">
				<h1>에러코드 : ${ORAVO.or_er_code}</h1>
				<h1>에러명 : ${ORAVO.or_er_stanSql}</h1>
				<h1>에러원인 : ${ORAVO.or_er_cause}</h1>
				<h1>에러조치 : ${ORAVO.or_er_action}</h1>
			</div>
		</div>
	</section>
</body>
</html>