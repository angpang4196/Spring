package com.biz.sim.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biz.sim.service.InoutService;
import com.biz.sim.vo.InoutVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class InoutController {

	@Autowired
	InoutService ioService;

	@RequestMapping(value = "ioList", method = RequestMethod.GET)
	public String getIoInfo(Model model) {

		List<InoutVO> ioList = ioService.getInout();
		
		model.addAttribute("IOLIST", ioList);

		return "ioList";
	}

}
