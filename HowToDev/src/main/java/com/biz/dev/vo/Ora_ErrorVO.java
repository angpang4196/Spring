package com.biz.dev.vo;

public class Ora_ErrorVO {

	private String OR_ER_CODE;
	private String OR_ER_STANSQL;
	private String OR_ER_CAUSE;
	private String OR_ER_ACTION;

	public Ora_ErrorVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Ora_ErrorVO(String oR_ER_CODE, String oR_ER_STANSQL, String oR_ER_CAUSE, String oR_ER_ACTION) {
		super();
		OR_ER_CODE = oR_ER_CODE;
		OR_ER_STANSQL = oR_ER_STANSQL;
		OR_ER_CAUSE = oR_ER_CAUSE;
		OR_ER_ACTION = oR_ER_ACTION;
	}

	public String getOR_ER_CODE() {
		return OR_ER_CODE;
	}

	public void setOR_ER_CODE(String oR_ER_CODE) {
		OR_ER_CODE = oR_ER_CODE;
	}

	public String getOR_ER_STANSQL() {
		return OR_ER_STANSQL;
	}

	public void setOR_ER_STANSQL(String oR_ER_STANSQL) {
		OR_ER_STANSQL = oR_ER_STANSQL;
	}

	public String getOR_ER_CAUSE() {
		return OR_ER_CAUSE;
	}

	public void setOR_ER_CAUSE(String oR_ER_CAUSE) {
		OR_ER_CAUSE = oR_ER_CAUSE;
	}

	public String getOR_ER_ACTION() {
		return OR_ER_ACTION;
	}

	public void setOR_ER_ACTION(String oR_ER_ACTION) {
		OR_ER_ACTION = oR_ER_ACTION;
	}

	@Override
	public String toString() {
		return "Ora_ErrorVO [OR_ER_CODE=" + OR_ER_CODE + ", OR_ER_STANSQL=" + OR_ER_STANSQL + ", OR_ER_CAUSE="
				+ OR_ER_CAUSE + ", OR_ER_ACTION=" + OR_ER_ACTION + "]";
	}

}
