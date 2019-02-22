package com.biz.ajax01.mapper;

import org.apache.ibatis.jdbc.SQL;

public class DeptSQLBuilder {

	public String selectAll() {
		SQL sql = new SQL().SELECT("*").FROM("tbl_dept").ORDER_BY("d_code");

		return sql.toString();
	}

	public String getInsertSQL() {

		// SQLBuilder(Mybatis 3.x 에서 새로 도입된 SQL 작성기의 초기 버전
		SQL sql = new SQL().INSERT_INTO("tbl_dept").INTO_COLUMNS("d_code").INTO_VALUES("#{d_code}")
				.VALUES("d_name", "#{d_name}").VALUES("d_ceo", "#{d_ceo}");

		return sql.toString();
	}

	public String getUpdateSQL() {

		SQL sql = new SQL().UPDATE("tbl_dept").SET("d_code = #{d_code}").SET("d_name = #{d_name}")
				.SET("d_ceo = #{d_ceo}").WHERE("d_code = #{d_code}");
		
		return sql.toString();
	}
	
	public String getDeleteSQL() {
		
		SQL sql = new SQL().DELETE_FROM("tbl_dept").WHERE("d_code = #{d_code}");
		
		return sql.toString();
	}
}
