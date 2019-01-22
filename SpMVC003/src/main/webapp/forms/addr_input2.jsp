<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<sql:setDataSource var="addrDataSource"
	driver="oracle.jdbc.driver.OracleDriver"
	url="jdbc:oracle:thin:@localhost:1521:xe" user="mybts" password="1234" />

<sql:query dataSource="${addrDataSource}" var="addrList">
	SELECT * FROM tbl_addr WHERE ad_num = ?
	<sql:param value="${param.ad_num}"/>
</sql:query>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록 입력</title>
 <style>
 	body {
 	}
 	
 	fieldset {
 		width : 630px;
 		margin : 0 auto;
 		background-color : #ffaaff;
 	}
 	
 	legend {
 		font-size : 12pt;
 		font-weight : bold;
 		color : #3e65ff;
 		text-align : center;
 	}
 	
 	label {
 		display : block;
 		width : 100px;
 		float : left;
 		text-align : right;
 		padding : 8px;
 		font-weight : bold;
 		color : #009688;
 		font-size : 10pt;
 	}
 	
 	input, select {
 		margin : 3px;
 		padding : 8px;
 		border : 1px solid #ccc;
 	}
 	
 	select{
 		font-size : 12pt;
 		font-weight : bold;
 		color : blue;
 	}
 	
 	#button-div {
 		border : 1px solid lightgray;
 		margin : 0 auto;
 		width : 212px;
 		font-size : 0;
 	}
 	
 	#button-div button {
 		margin : 3px;
 		width : 100px;
 	}
 
 
 </style>
</head>
<body>
	<header>
		<h3>주소록 입력</h3>
	</header>

	<section>
		<c:choose>
			<c:when test="${empty param.ad_num}">
				<form action = "/sp003/controller/addr_insert.jsp">
			</c:when>
		
			<c:otherwise>
				<form action = "/sp003/controller/addr_update.jsp">
			</c:otherwise>
		</c:choose>
	
		<fieldset>
		<legend>주소 입력2</legend>
		<!-- 학번, 이름, 전화번호, 주소, 상세주소 -->
		
		<label form="ad_num">학번</label>
		<input type="text" id="ad_num" name="ad_num" value="${addrList.rows[0].ad_num}"/><br>
		
		<label form="ad_name">이름</label>
		<input type="text" id="ad_name" name="ad_name" value="${addrList.rows[0].ad_name}"/><br>
		
		<label form="ad_tel">전화번호</label>
		<input type="text" id="ad_tel" name="ad_tel" value="${addrList.rows[0].ad_tel}"/><br>
		
		<label form="ad_addr1">주소</label>
		<select id="ad_addr1" name="ad_addr1">
		<option value="광주광역시">광주광역시</option>
		<option value="서울특별시">서울특별시</option>
		<option value="부산광역시">부산광역시</option>
		<option value="울산광역시">울산광역시</option>
		<option value="인천광역시">인천광역시</option>
		</select><br>
		
		<label form="ad_addr2">상세주소</label>
		<input type="text" id="ad_addr2" name="ad_addr2"/ size="30" value="${addrList.rows[0].ad_addr2}"><br>
		<hr />
		<div id = "button-div">
		<button>주소등록</button>
		<button type = "reset">다시 작성</button>
		</div>
		</fieldset>
		</form>
	</section>

</body>
</html>