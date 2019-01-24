<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:redirect url="../controller/book_list.jsp"/>
<% 
	/*
		core tag lib을 import하고 /controller/book_list.jsp로 redirect하는 코드를 작성.
		
		순수하게 redirect만 수행할 때는 HTML 관련된 코드가 없어도 된다.
	*/
 %>
