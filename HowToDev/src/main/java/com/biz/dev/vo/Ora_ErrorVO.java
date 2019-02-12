package com.biz.dev.vo;

public class Ora_ErrorVO {

	private String or_er_code;
	private String or_er_stanSql;
	private String or_er_cause;
	private String or_er_action;

	public Ora_ErrorVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Ora_ErrorVO(String or_er_code, String or_er_stanSql, String or_er_cause, String or_er_action) {
		super();
		this.or_er_code = or_er_code;
		this.or_er_stanSql = or_er_stanSql;
		this.or_er_cause = or_er_cause;
		this.or_er_action = or_er_action;
	}

	public String getOr_er_code() {
		return or_er_code;
	}

	public void setOr_er_code(String or_er_code) {
		this.or_er_code = or_er_code;
	}

	public String getOr_er_stanSql() {
		return or_er_stanSql;
	}

	public void setOr_er_stanSql(String or_er_stanSql) {
		this.or_er_stanSql = or_er_stanSql;
	}

	public String getOr_er_cause() {
		return or_er_cause;
	}

	public void setOr_er_cause(String or_er_cause) {
		this.or_er_cause = or_er_cause;
	}

	public String getOr_er_action() {
		return or_er_action;
	}

	public void setOr_er_action(String or_er_action) {
		this.or_er_action = or_er_action;
	}

	@Override
	public String toString() {
		return "Ora_ErrorVO [or_er_code=" + or_er_code + ", or_er_stanSql=" + or_er_stanSql + ", or_er_cause="
				+ or_er_cause + ", or_er_action=" + or_er_action + "]";
	}

}
