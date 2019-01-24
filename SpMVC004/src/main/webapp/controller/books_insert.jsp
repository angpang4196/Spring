<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<sql:setDataSource var="booksDataSource"
	driver="oracle.jdbc.driver.OracleDriver"
	url="jdbc:oracle:thin:@localhost:1521:xe" user="mybts" password="1234" />

<sql:update dataSource="${booksDataSource}" var="bookList">
	INSERT INTO tbl_books VALUES(SEQ_BOOKS.NEXTVAL,?,?,?,?)
	
	<sql:param value="${param.tb_name}"/>
	<sql:param value="${param.tb_company}"/>
	<sql:param value="${param.tb_author}"/>
	<sql:param value="${param.tb_price}"/>
	 
</sql:update>
<c:redirect url="/controller/books_list_jstl.jsp"/>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>