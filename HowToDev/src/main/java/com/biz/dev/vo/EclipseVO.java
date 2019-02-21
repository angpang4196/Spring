package com.biz.dev.vo;

public class EclipseVO {

	private long id;
	private String ec_er_name;
	private String ec_er_cause;

	public EclipseVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public EclipseVO(long id, String ec_er_name, String ec_er_cause) {
		super();
		this.id = id;
		this.ec_er_name = ec_er_name;
		this.ec_er_cause = ec_er_cause;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getEc_er_name() {
		return ec_er_name;
	}

	public void setEc_er_name(String ec_er_name) {
		this.ec_er_name = ec_er_name;
	}

	public String getEc_er_cause() {
		return ec_er_cause;
	}

	public void setEc_er_cause(String ec_er_cause) {
		this.ec_er_cause = ec_er_cause;
	}

	@Override
	public String toString() {
		return "EclipseVO [id=" + id + ", ec_er_name=" + ec_er_name + ", ec_er_cause=" + ec_er_cause + "]";
	}

}
