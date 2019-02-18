package com.biz.sim.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CalcVO {
	
	private int intNum1;
	private int intNum2;

	private int intADD;
	private int intMinus;
	private int intMulti;
	private int intDevide;
}
