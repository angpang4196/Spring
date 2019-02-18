package com.biz.sim.service;

import org.springframework.stereotype.Service;

/*
 * "Service를 실행하는 class이다" 라는 것을 알려주는 동시에 spring에게 "MyService 클래스를 객체로 생성해서 사용할 준비를 해 두어라" 라는 지시어.
 */
@Service
public class MyService {

	public int add(int intNum1, int intNum2) {

		int intSum = intNum1 + intNum2;

		return intSum;
	}

	public int minus(int intNum1, int intNum2) {

		int intMinus = intNum1 - intNum2;

		return intMinus;
	}

	public int multi(int intNum1, int intNum2) {

		int intMulti = intNum1 * intNum2;

		return intMulti;
	}

	public int devide(int intNum1, int intNum2) {

		int intDevide = intNum1 / intNum2;

		return intDevide;
	}
}
