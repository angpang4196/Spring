<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/public.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/home.css">
	<link href="https://fonts.googleapis.com/css?family=Indie+Flower"
	rel="stylesheet">
	<title>HowToDev</title>
</head>
<body>
	<!--상단 howtodev아이콘-->
	<header>
		<h1 id="mainText"><a id="headerA" href="home.html">HowToDev</a></h1><br/>
		<h2 id="subText">입문개발자들을 위한 툴 가이드</h2>
	</header>
	<!--베너가 들어가는 부분-->
	<div id="banner" img="banner.png"><h3>Tools needed for development, and error codes.<br/>Resolve it here!</h3></div>
	<section>
		<!--에러코드, 가이드, 커스텀박스묶음-->            
        <div id="allbox">
       	<img src="${pageContext.request.contextPath}/img/ERcode.png" id="all1"class="boxcollection" alt="에러코드박스" > 
		
		
		<map id="map" name="boxlink">
			<area shape="rect" coords="500,500,0,0" href="guide.html">
		</map>
		<div id="ERbox">		
		<h1 id="Text">Error Code!</h1>
		<h2 id="Text2">오류코드를 검색하고 문제를 해결하세요</h2>
			<form>
				<div placeholder="오류 코맨트">
					<h3>에러코드 : ${ERROR.or_er_code}</h3>
					<h3>에러명</h3>
					<h2>${ERROR.or_er_stanSql}</h2>
					<h3>에러 원인</h3>
					<h2>${ERROR.or_er_cause}</h2>
					<h3>에러 조치</h3>
					<h2>${ERROR.or_er_action}</h2>
				</div>
			</form>		
			</div>
		</div>
	</section>
	<!--footer/만든이-->
	<footer>
		<address>
		    Creater
			<br>&copy; Moon Jihyun
			<br>&copy; Cho donghyuck
			<br>&copy; Go jaebeom
		</address>
	</footer>
</body>
</html>