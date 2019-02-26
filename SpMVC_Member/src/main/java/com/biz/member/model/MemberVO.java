package com.biz.member.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class MemberVO {
	
//	ID         NOT NULL NUMBER         
//	M_USERID   NOT NULL NVARCHAR2(30)  
//	M_PASSWORD NOT NULL NVARCHAR2(125) 
//	M_NAME     NOT NULL NVARCHAR2(125) 
//	M_TEL               NVARCHAR2(20)  
//	M_CITY              NVARCHAR2(20)  
//	M_ADDR              NVARCHAR2(125)
	
	private String m_userid;
	private String m_password;
	private String m_name;
	private String m_tel;
	private String m_city;
	private String m_addr;
	private String m_photo;
	private String m_photo_path;

}
