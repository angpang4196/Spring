<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<%@ include file="/WEB-INF/views/include/include-head.jspf" %>
</head>
<body>
	<header>
		<h3>주소록 입력</h3>
	</header>

	<section>
		<c:choose>
			<c:when test="${empty param.ad_num}">
			</c:when>
			
		</c:choose>
	
		<form action = "insert" method="POST">
		<fieldset>
		<legend>주소 입력</legend>
		<!-- 학번, 이름, 전화번호, 주소, 상세주소 -->
		
		<label form="ad_num">학번</label>
		<input type="text" id="ad_num" name="ad_num" value="${addr.ad_num}"/><br>
		
		<label form="ad_name">이름</label>
		<input type="text" id="ad_name" name="ad_name" value="${addr.ad_name}"/><br>
		
		<label form="ad_tel">전화번호</label>
		<input type="text" id="ad_tel" name="ad_tel" value="${addr.ad_tel}"/><br>
		
		<label form="ad_addr1">주소</label>
		<select id="ad_addr1" name="ad_addr1">
		<option value="광주광역시">광주광역시</option>
		<option value="서울특별시">서울특별시</option>
		<option value="부산광역시">부산광역시</option>
		<option value="울산광역시">울산광역시</option>
		<option value="인천광역시">인천광역시</option>
		</select><br>
		
		<label form="ad_addr2">상세주소</label>
		<input type="text" id="ad_addr2" name="ad_addr2"/ size="30" value="${addr.ad_addr2}"><br>
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