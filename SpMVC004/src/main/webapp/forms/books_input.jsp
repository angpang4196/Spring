<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 추가</title>
<style>
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
 	
 	input{
 		margin : 3px;
 		padding : 8px;
 		border : 1px solid #ccc;
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
		<h3>도서 추가 입력란</h3>
	</header>
	
	<section>
		<form action = "/sp004/controller/books_insert.jsp">
		<fieldset>
		<legend>도서 입력</legend>
		<!-- 이름, 출판사, 저자, 가격 -->
		
		<label form="tb_name">이름</label>
		<input type="text" id="tb_name" name="tb_name"/><br>
		
		<label form="tb_company">출판사</label>
		<input type="text" id="tb_company" name="tb_company"/><br>
		
		<label form="tb_author">저자</label>
		<input type="text" id="tb_author" name="tb_author"/><br>
		
		<label form="tb_price">가격</label>
		<input type="text" id="tb_price" name="tb_price"/><br>
		<hr />
		<div id = "button-div">
		<button>도서등록</button>
		<button type = "reset">다시 작성</button>
		</div>
		</fieldset>
		</form>
	
	
	
	</section>

</body>
</html>