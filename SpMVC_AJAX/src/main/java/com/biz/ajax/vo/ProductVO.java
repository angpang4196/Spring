package com.biz.ajax.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductVO {
	
	private String p_code;
	private String p_cname;
	private String p_vat;
	private int p_iprice;
	private int p_oprice;

}
