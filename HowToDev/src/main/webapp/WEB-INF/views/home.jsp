<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<script>

</script>
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
		<img src="${pageContext.request.contextPath}/img/guide.png" id="all2" class="boxcollection" alt="가이드박스" usemap="#boxlink">
		<img src="${pageContext.request.contextPath}/img/custom.png" id="all3" class="boxcollection" alt="커스텀아이디박스" usemap="#boxlink">
		<map id="map" name="boxlink">
			<area shape="rect" coords="500,500,0,0" href="guide.html">
		</map>
		<div id="ERbox">		
		<h1 id="Text">Error Code!</h1>
		<h2 id="Text2">오류코드를 검색하고 문제를 해결하세요</h2>
			<form action="error" id="error_code" method="POST">
				<select>
					<option value="">해당 툴을 선택해주세요</option>
					<option value="">Eclipse</option>
					<option value="">Oracle</option>
					<option value="">python</option>
				</select> 
				<input name="or_er_code" placeholder="코드를 입력하세요" />
				<button>검색</button>
				<br />
				<div placeholder="오류 코맨트"></div>
			</form>		
			</div>
		</div>
	    <!--ToolsCollection Box 시작-->
		<div id="TCbox">
			<div id="main">
				</h2>
				<h1>Tools Collection</h1>
			</div>
			<div id="icon5" class="toolbox">
				<img src="${pageContext.request.contextPath}/img/Java.png"> 
				<label><h3>Java-Tool</h3></label> <a class="downbox"
					href="http://mirrors.xmission.com/eclipse/oomph/epp/2018-12/R/eclipse-inst-win64.exe">Download64bit</a>
				<a class="downbox" href="#">Site Link</a>
			</div>
			<div id="icon1" class="toolbox">
				<img src="${pageContext.request.contextPath}/img/logo-eclipse.png">
				<label><h3>Eclipse IDE 2018‑12</h3></label> <a class="downbox"
					href="http://mirrors.xmission.com/eclipse/oomph/epp/2018-12/R/eclipse-inst-win64.exe">Download64bit</a>
				<a class="downbox" href="#">Site Link</a>
			</div>
			<div id="icon2" class="toolbox">
				<img src="${pageContext.request.contextPath}/img/Spring.svg">
				<label><h3>Spring Tools 4</h3></label> <a class="downbox"
					href="http://download.springsource.com/release/STS4/4.1.1.RELEASE/dist/e4.10/spring-tool-suite-4-4.1.1.RELEASE-e4.10.0-win32.win32.x86_64.zip">
					Download64bit</a> <a class="downbox" href="#">Site Link</a>
			</div>
			<div id="icon3" class="toolbox">
				<img src="${pageContext.request.contextPath}/img/developer.png">
				<label><h3>SQL-Developer</h3></label> <a class="downbox"
					href="http://mirrors.xmission.com/eclipse/oomph/epp/2018-12/R/eclipse-inst-win64.exe">Download64bit</a>
				<a class="downbox" href="#">Site Link</a>
			</div>
			<div id="icon4" class="toolbox">
				<img src="${pageContext.request.contextPath}/img/mysql.png">
				<label><h3>MySQL</h3></label><a class="downbox"
					href="http://mirrors.xmission.com/eclipse/oomph/epp/2018-12/R/eclipse-inst-win64.exe">Download64bit</a>
				<a class="downbox" href="#">Site Link</a>
			</div>
			<div id="icon5" class="toolbox">
				<img src="${pageContext.request.contextPath}/img/sub.png">
				<label><h3>SublimeText</h3></label> <a class="downbox"
					href="http://mirrors.xmission.com/eclipse/oomph/epp/2018-12/R/eclipse-inst-win64.exe">Download64bit</a>
				<a class="downbox" href="#">Site Link</a>
			</div>
			<div id="icon6" class="toolbox">
				<img src="${pageContext.request.contextPath}/img/sub.png">
				<label><h3>SublimeText</h3></label> <a class="downbox"
					href="http://mirrors.xmission.com/eclipse/oomph/epp/2018-12/R/eclipse-inst-win64.exe">Download64bit</a>
				<a class="downbox" href="#">Site Link</a>
			</div>
			<div id="icon7" class="toolbox">
				<img src="${pageContext.request.contextPath}/img/sub.png">
				<label><h3>SublimeText</h3></label> <a class="downbox"
					href="http://mirrors.xmission.com/eclipse/oomph/epp/2018-12/R/eclipse-inst-win64.exe">Download64bit</a>
				<a class="downbox" href="#">Site Link</a>
			</div>	
			<div id="icon8" class="toolbox">
				<img src="${pageContext.request.contextPath}/img/sub.png">
				<label><h3>SublimeText</h3></label> <a class="downbox"
					href="http://mirrors.xmission.com/eclipse/oomph/epp/2018-12/R/eclipse-inst-win64.exe">Download64bit</a>
				<a class="downbox" href="#">Site Link</a>
			</div>
			<div id="icon9" class="toolbox">
				<img src="${pageContext.request.contextPath}/img/sub.png">
				<label><h3>SublimeText</h3></label> <a class="downbox"
					href="http://mirrors.xmission.com/eclipse/oomph/epp/2018-12/R/eclipse-inst-win64.exe">Download64bit</a>
				<a class="downbox" href="#">Site Link</a>
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