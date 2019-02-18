package com.biz.sim.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class InoutVO {
	
	// date       time     cname     c  p   s
	// 2018-01-02:00:07:31:그린타임캔:2:700:87
	// 0          1  2  3  4         5  6  7   ( split으로 나누었을 때)
	// time = 1 + 2 + 3
	private String io_date;
	private String io_time;
	private String io_cname;
	private String io_check;
	private int io_price;
	private int io_su;

}
