<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>메모장</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}">
<link rel="stylesheet" href="/memo02/css/memo_main.css">
<link rel="stylesheet" href="/memo02/css/memo_input_style.css">
</head>
<body>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
	
	<section>
		<form action=<c:url value="/memo/"/> method="POST">
			<label for="m_auth" class="w3-text-blue">작성자</label>
			<input type="text" id="m_auth" name="m_auth" placeholder="작성자 이름를 입력하세요."><br />
			
			<label for="m_date" class="w3-text-blue">작성일자</label>
			<input type="text" id="m_date" name="m_date" placeholder="연도-월-일" ><br />
			
			<label for="m_subject" class="w3-text-blue">제목</label>
			<input type="text" id="m_subject" name="m_subject" placeholder="제목을 입력하세요."><br />
			
			<label class="w3-text-blue">메모</label>
			<textarea rows="5" id="m_text" name="m_text" placeholder="메모 내용을 입력하세요."></textarea>
			
			<hr />
			<label></label>
			<button>메모 저장</button>
		</form>
	</section>
	
	<footer>
		<address>CopyRight &copy; colplayer@naver.com</address>
	</footer>
</body>
</html>