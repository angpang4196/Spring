<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>HowToDev</title>
	<link href="https://fonts.googleapis.com/css?family=Sunflower:300" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Indie+Flower" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Staatliches" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/public.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/home.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script>
		$(function(){
			$("#option").change(function(){
				let o =$(this).val()
				if(o == 'eclipse') {
					alert("아무 키나 입력 해 주세요")
				}
				
			})
		})
	</script>
</head>
<body>
	<header>
		<h1><a href="/dev">HowToDev</a></h1>
		<h5>입문개발자들을 위한 툴 가이드</h5>
	</header>
	<nav class="line"></nav>
	<section>
		<div id="banner" class="boxs">
			<img src="${pageContext.request.contextPath}/img/banner3.jpg"/>
			<h3>Tools needed for development,
			</br>and error codes.
			</br>Resolve it here!</h3>
			<h5>개발에 필요한 툴, 오류코드.</br>이곳에서 해결하세요!</h5>
		</div>
		<div id="codebox" class="boxs">
			<img src="${pageContext.request.contextPath}/img/codebox.png" />		
			<div >
				<form id="codetext" action="error" method="POST">	
				<h1>Error Code</h1>
				<h3>오류코드를 검색하고</br>문제를 해결하세요</h3>									
					<select id="option" name="option">
						<option value="">해당 툴을 선택해주세요</option>
						<option value="eclipse">Eclipse</option>
						<option value="oracle">Oracle</option>
						<option value="mysql">MySQL</option>					
					</select><p><input name="or_er_code" placeholder="코드를 입력하세요" />
					<p><button>검색</button>
				</form>
			</div>
		</div>
		<div id="guidebox" class="boxs">
			<form id="toolText" action="guide" method="POST">
				<img src="${pageContext.request.contextPath}/img/guidebox.png"/>
				<h1>Guide Note</h1>
				<h3>개발 툴 인터페이스</br>기초 사용방법 제공</h3>
			<button>Click Here!</button>
			</form>
		</div>
		<div id="toolbox" class="boxs">
			<form id="downText" action="tools" method="POST">
		    	<img src="${pageContext.request.contextPath}/img/toolbox.png"/>
		    	<h1>Tool Box</h1>
				<h3>필요한 툴을 다운로드하세요</h3>
			<button>Click Here!</button>
			</form>
		</div>
	</section>
	<nav class="line"></nav>
	<footer>
		<address>
			Creater</br>			
			&copy;MoonJihyun</br> 
			&copy;Chodonghyuck</br>
			&copy;Gojaebeom
		</address>
	</footer>

</body>
</html>