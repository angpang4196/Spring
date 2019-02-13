package com.biz.dev.dao;

public class DevSQL {

	public static final String DEV_FIND_BY_CODE = " SELECT * FROM tbl_or_error WHERE or_er_code = 'ORA-' || LPAD(#{or_er_code},5,0) ";

}
