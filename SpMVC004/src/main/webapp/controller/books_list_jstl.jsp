<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<sql:setDataSource var="booksDataSource"
	driver="oracle.jdbc.driver.OracleDriver"
	url="jdbc:oracle:thin:@localhost:1521:xe" user="mybts" password="1234" />

<sql:query dataSource="${booksDataSource}" var="bookList">
	SELECT * FROM tbl_books ORDER BY id
</sql:query>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
<style>
header {
	background-color: #00aba9;
	color: #fff;
	text-align: center;
	font-size: 20px;
	padding: 10px;
}

footer {
	background-color: #00aba9;
	color: #fff;
	text-align: center;
	padding: 5px;
}

table {
	border-spacing: 0;
	width: 100%;
	display: table;
	border: 1px solid #ccc;
}

tr {
	border: 1px solid #ddd;
}

td {
	border: 1px solid #ddd;
}

th {
	border: 1px solid #ddd;
}

#button-div {
	border: 1px solid lightgray;
	margin: 0 auto; /* block 요소를 어떤 다른 요소 내부에서 */
	/* 가로방향 중앙에 배치하고자 할 때 */
	width: 212px; /* 바깥쪽 요소보다 작게 */
	font-size: 0px;
}

#button-div button {
	width: 100px;
	margin: 3px;
}
</style>
</head>
<body>
	<header>
		<h3>도서 목록 보기</h3>
	</header>

	<section>
		<table>
			<tr>
				<th>코드번호</th>
				<th>이름</th>
				<th>출판사</th>
				<th>저자</th>
				<th>가격</th>
			<tr>
				<c:forEach var="row" items="${bookList.rows}">
					<tr>
						<td>${row.id}</td>

						<td>${row.tb_name}</td>

						<td>${row.tb_company}</td>

						<td>${row.tb_author}</td>

						<td>${row.tb_price}</td>

					</tr>
				</c:forEach>
		</table>
		<div id="button-div">
			<button onclick="location.href='/sp004/forms/books_input.jsp'">도서추가</button>
			<button type="button" onclick="confirm('정말 돌아갈까요?')">돌아가기</button>
		</div>
	</section>

	<footer>
		<address>CopyRight &copy; colplayer@naver.com</address>
	</footer>
</body>
</html>