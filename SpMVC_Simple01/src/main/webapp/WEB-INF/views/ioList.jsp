<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach items="${IOLIST}" var="vo">
		<p>날짜 : ${vo.io_date}
		<p>시간 : ${vo.io_time}
		<p>상품명 : ${vo.io_cname}
		<p>구분 : ${vo.io_check}
		<p>단가 : ${vo.io_price}
		<p>수량 : ${vo.io_su}
	</c:forEach>
</body>
</html>