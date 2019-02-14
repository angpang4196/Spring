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
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/guide.css">
   <style>
		#li1 a{
			color : #f70f81;
		}
   </style>
</head>
<body>
   <header>
      <h1><a href="/dev">HowToDev</a></h1>
      <h5>입문개발자들을 위한 툴 가이드</h5>
   </header>
   <section>
      <div id="mainbox">
         <div id="label1">Menu</div>
         <div id="label2"><a href="guide.html">Guide Box</a></div>
      </div>
      <div id="subbox">
         <div id="menubox">
            <li id="li1"><a href="guide_eclipse">Eclipse</a></li>
            <li id="li2"><a href="guide_spring">Spring</a></li>
            <li id="li3"><a href="guide_data">DataBase</a></li>
            <li id="li4"><a href="guide_mysql">MySQL</a></li>
         </div>
         <div id="readbox">
            <img src="../img/test.jpg" style="float: left;" />테스트용 사진입니다 테스트용 사진입니다 
            가운데정렬해도 양이많아지면 사진을 밀어낼 수 있습니다.대단한 발견
            <p>안녕하세용<p>안녕하세용<p>안녕하세용<p>안녕하세용<p>안녕하세용<p>안녕하세용<p>안녕하세용<p>안녕하세용<p>안녕하세용<p>안녕하세용
            <p>안녕하세용<p>안녕하세용<p>안녕하세용<p>안녕하세용<p>안녕하세용<p>안녕하세용<p>안녕하세용<p>안녕하세용<p>안녕하세용<p>안녕하세용
         </div>
      </div>

   </section>

</body>
</html>