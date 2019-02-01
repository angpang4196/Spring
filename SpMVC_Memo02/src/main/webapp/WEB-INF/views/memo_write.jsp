<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/include-head.jspf" %>
<link rel="stylesheet" href="/memo02/css/memo_input_style.css">
</head>
<body>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<style>
#message {
	color:red;
	font-size:30pt;
}
</style>
	
	<section>
		<form action=<c:url value="/memo"/> method="POST">
		
			<input type="hidden" name="id" value=<c:out value="${MEMO.id}" default="0" /> >
			<label for="m_auth" class="w3-text-blue">작성자</label>
			<input value="${MEMO.m_auth}" type="text" id="m_auth" name="m_auth" placeholder="작성자 이름를 입력하세요."><br />
			
			<label for="m_date" class="w3-text-blue">작성일자</label>
			<input value="${MEMO.m_date}" type="text" id="m_date" name="m_date" placeholder="연도-월-일" ><br />
			
			<label for="m_subject" class="w3-text-blue">제목</label>
			<input value="${MEMO.m_subject}" type="text" id="m_subject" name="m_subject" placeholder="제목을 입력하세요."><br />
			
			<label class="w3-text-blue">메모</label>
			<textarea rows="5" id="m_text" name="m_text" placeholder="메모 내용을 입력하세요.">${MEMO.m_text}</textarea>
			
			<hr />
			<label></label>
			<button>메모 저장</button>
		</form>
		<p id="message"><b>${MESSAGE}</b>	
	</section>
	
	<footer>
		<address>CopyRight &copy; colplayer@naver.com</address>
	</footer>
</body>
</html>