package com.biz.sim.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.biz.sim.service.MyService;
import com.biz.sim.vo.CalcVO;

@Controller
public class MyController {

	/*
	 * "@Service Annotation이 설정된 클래스를 가져다가 ms객체를 생성(초기화)하여 사용할 준비를 해라" 라는 지시어
	 */
	@Autowired
	MyService mService;

	@ResponseBody
	@RequestMapping(value = "addList", method = RequestMethod.GET, produces = "text/html; charset=utf8")
	public String addList(@RequestParam("intNum1") String strNum1, @RequestParam("intNum2") String strNum2) {

		int intNum1 = 0;
		int intNum2 = 0;

		try {
			intNum1 = Integer.valueOf(strNum1);
		} catch (Exception e) {
			return "intNum1 을 숫자로 변환할 수 없습니다.";
		}

		try {
			intNum2 = Integer.valueOf(strNum2);
		} catch (Exception e) {
			return "intNum2 를 숫자로 변환할 수 없습니다.";
		}

		String strRet = "<html>";
		strRet += "<body>";

		int intSum = 0;

		if (intNum1 < intNum2) {
			for (int i = intNum1; i <= intNum2; i++) {
				intSum += i;
			}
		}

		if (intNum1 == intNum2) {
			intSum = intNum1 * 2;
		}

		if (intNum1 > intNum2) {
			for (int i = intNum2; i <= intNum1; i++) {
				intSum += i;
			}
		}

		strRet += "<p>" + intNum1 + "</p>";
		strRet += "<p>" + intNum2 + "</p>";
		strRet += "<p>두 수 범위의 합은 " + intSum + " 입니다.</p>";

		strRet += "</body>";
		strRet += "</html>";

		return strRet;
	}

	@RequestMapping(value = "addList", method = RequestMethod.POST, produces = "text/html; charset=utf8")
	public String addList1(@RequestParam("intNum1") String strNum1, @RequestParam("intNum2") String strNum2,
			Model model) {

		int intNum1 = 0;
		int intNum2 = 0;

		try {
			intNum1 = Integer.valueOf(strNum1);
		} catch (Exception e) {
			return "intNum1 을 숫자로 변환할 수 없습니다.";
		}

		try {
			intNum2 = Integer.valueOf(strNum2);
		} catch (Exception e) {
			return "intNum2 를 숫자로 변환할 수 없습니다.";
		}

		int intOdd = 0;
		int intEven = 0;

		if (intNum1 < intNum2) {
			for (int i = intNum1; i <= intNum2; i++) {
				if (i % 2 == 0) {
					intEven += i;
				} else {
					intOdd += i;
				}
			}
		}

		if (intNum1 > intNum2) {
			for (int i = intNum2; i <= intNum1; i++) {
				if (i % 2 == 0) {
					intEven += i;
				} else {
					intOdd += i;
				}
			}
		}

		if (intNum1 % 2 == 0 && intNum1 == intNum2) {
			intEven = intNum1 * 2;
		}

		if (intNum1 % 2 != 0 && intNum1 == intNum2) {
			intOdd = intNum1 * 2;
		}

		model.addAttribute("intNum1", intNum1);
		model.addAttribute("intNum2", intNum2);
		model.addAttribute("intEven", intEven);
		model.addAttribute("intOdd", intOdd);

		return "home";
	}

	@RequestMapping(value = "calc", method = RequestMethod.GET)
	public String calc(int intNum1, int intNum2, Model model) {
		return "calc";
	}

	@RequestMapping(value = "calc", method = RequestMethod.POST)
	public String calc(@RequestParam("intNum1") String strNum1, @RequestParam("intNum2") String strNum2, Model model) {

		int intNum1 = 0;
		int intNum2 = 0;

		try {
			intNum1 = Integer.valueOf(strNum1);
		} catch (Exception e) {
			return "intNum1 을 숫자로 변환할 수 없습니다.";
		}

		try {
			intNum2 = Integer.valueOf(strNum2);
		} catch (Exception e) {
			return "intNum2 를 숫자로 변환할 수 없습니다.";
		}

		int intSum = mService.add(intNum1, intNum2);
		int intMinus = mService.minus(intNum1, intNum2);
		int intMulti = mService.multi(intNum1, intNum2);
		int intDevide = mService.devide(intNum1, intNum2);

		model.addAttribute("ADD", intSum);
		model.addAttribute("MINUS", intMinus);
		model.addAttribute("MULTI", intMulti);
		model.addAttribute("DEVIDE", intDevide);

		return "home";
	}

	@RequestMapping(value = "calc-vo", method = RequestMethod.POST)
	public String calc(@ModelAttribute CalcVO vo, Model model) {

		int intSum = mService.add(vo.getIntNum1(), vo.getIntNum2());
		int intMinus = mService.minus(vo.getIntNum1(), vo.getIntNum2());
		int intMulti = mService.multi(vo.getIntNum1(), vo.getIntNum2());
		int intDevide = mService.devide(vo.getIntNum1(), vo.getIntNum2());
		
		vo.setIntADD(intSum);
		vo.setIntMinus(intMinus);
		vo.setIntMulti(intMulti);
		vo.setIntDevide(intDevide);

		model.addAttribute("CALC", vo);
		
		return "calc";
	}

}
