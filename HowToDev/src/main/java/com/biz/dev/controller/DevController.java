package com.biz.dev.controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biz.dev.service.DevService;
import com.biz.dev.vo.Ora_ErrorVO;

@Controller
public class DevController {

	@Autowired
	DevService devService;

	@RequestMapping(value = "error", method = RequestMethod.POST)
	public String searchErInfo(Model model, @Param("or_er_code") String or_er_code) {

		Ora_ErrorVO vo = devService.findByCode(or_er_code);
		System.out.println(or_er_code);

		model.addAttribute("ERROR", vo);

		return "error_code";
	}

}
