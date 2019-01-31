package com.biz.memo02.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biz.memo02.vo.MemoVO;

@Controller
public class MemoController {

	// 폼을 열 때 사용할 requestPath
	@RequestMapping(value = "memo", method = RequestMethod.GET)
	public String memo() {
		return "memo_write";
	}
	
	// 폼으로부터 데이터를 전달받을 때 사용할 requestPath
	@RequestMapping(value = "memo", method = RequestMethod.POST)
	public String memo(Model model, MemoVO vo) {
		return "memo_write";
	}

}
