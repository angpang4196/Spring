<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	Connection dbConn;

	String oracleDriver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "mybts";
	String password = "1234";

	String sql = " SELECT * FROM tbl_addr ORDER BY ad_num ";
	PreparedStatement ps;
	ResultSet rs = null;

	try {
		Class.forName(oracleDriver);
		dbConn = DriverManager.getConnection(url, user, password);

		ps = dbConn.prepareStatement(sql);

		rs = ps.executeQuery();

	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
<style>

	header {
		background-color : #00aba9;
		color : #fff;
		text-align : center;
		font-size : 20px;
		padding : 10px;
	}
	
	footer {
		background-color : #00aba9;
		color : #fff;
		text-align : center;
		padding : 5px;
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
	
	#button-div {
		border : 1px solid lightgray;
		margin : 0 auto; /* block 요소를 어떤 다른 요소 내부에서 */
		                 /* 가로방향 중앙에 배치하고자 할 때 */
		width : 212px;   /* 바깥쪽 요소보다 작게 */
		font-size : 0px;
	}
	
	#button-div button {
		width : 100px;
		margin : 3px;
	}

</style>
</head>
<body>
	<header>
		<h3>주소록 보기</h3>
	</header>

	<section>
		<table>
			<tr>
				<th>학번</th>
				<th>이름</th>
				<th>전화번호</th>
				<th>주소</th>
				<th>상세주소</th>
			</tr>
			<%
				while (rs.next()) {
			%>
			<td><%=rs.getString("ad_num")%><br /></td>

			<td><%=rs.getString("ad_name")%><br /></td>

			<td><%=rs.getString("ad_tel")%><br /></td>

			<td><%=rs.getString("ad_addr1")%><br /></td>

			<td><%=rs.getString("ad_addr2")%></td>

			</tr>
			<%
				}
			%>
		</table>
		<div id = "button-div">
			<button onclick="location.href='/sp003/forms/addr_input.jsp'">주소 추가</button>
			<button type = "button" onclick="confirm('정말 돌아갈까요?')">돌아가기</button>
		</div>
	</section>

	<footer onclick="alert('반갑습니다')">
		<address>CopyRight &copy; colplayer@naver.com</address>
	</footer>
</body>
</html>