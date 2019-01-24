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
<title>도서 정보 관리</title>
<style>
header {
	background-color: #00aba9;
	color: #fff;
	padding: 10px;
	font-size: 20pt;
	font-weight: bold;
	text-align: center;
}

nav {
	width: 100%;
	color: #fff;
	background-color: #00aba9;
	font-weight: normal;
	font-size: 14px;
}

section {
	font-weight : bold;
	font-size : 20pt;
	text-align : center;
	margin : 20px auto;
	padding : 0;
}

table {
	border-spacing : 0;
	width : 100%;
	display : table;
	border : 1px solid #ccc;
}
	
tr {
	border : 1px solid #ddd;
}
	
td {
	border : 1px solid #ddd;
}
	
th {
	border : 1px solid #ddd;
}

footer{
	width : 300px;
	margin : 0 auto;
	font-style: italic;
	font-weight: bold;
}
	
</style>

</head>
<body>
	<header>
		<h2>도서 정보</h2>
		<nav>
			<a href="#">홈</a> 
			<a href="#">도서정보보기</a> 
			<a href="#">로그인</a> 
			<a href="#">회원가입</a> 
			<a href="#">About</a>
		</nav>
	</header>

	<section>
		<table>
			<tr>
				<th>코드번호</th>
				<th>도서명</th>
				<th>출판사</th>
				<th>저자</th>
				<th>가격</th>
			</tr>
			
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
		
		<div id = "button-div">
			<button onclick="location.href='/sp004/forms/books_input.jsp'">도서 추가</button>
			<button type = "button" onclick="confirm('정말 돌아갈까요?')">돌아가기</button>
		</div>
		
		<hr />
	</section>
	
	<footer>
		<p>CopyRight &copy; colplayer@naver.com</p>
		
	</footer>

	<hr />
</body>
</html>