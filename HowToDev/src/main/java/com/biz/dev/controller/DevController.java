package com.biz.dev.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.biz.dev.service.DevService;
import com.biz.dev.vo.EclipseVO;
import com.biz.dev.vo.Ora_ErrorVO;

@Controller
public class DevController {

	@Autowired
	DevService devService;

	@RequestMapping(value = "error", method = RequestMethod.POST)
	public String searchErInfo(Model model, @RequestParam String or_er_code, @RequestParam String option) {

		if (option.equalsIgnoreCase("oracle")) {
			Ora_ErrorVO vo = devService.findByCode(or_er_code);

			model.addAttribute("ORAVO", vo);
			return "oracle_error";
		}

		if (option.equalsIgnoreCase("eclipse")) {
			List<EclipseVO> ecList = devService.selectAll();
			
			model.addAttribute("ECLIPSE", ecList);
			return "eclipse_error";
		}

		if (option.equalsIgnoreCase("mysql")) {

		}

		return null;
	}

	@RequestMapping(value = "guide", method = RequestMethod.POST)
	public String guideTool() {

		return "guide";
	}

	@RequestMapping(value = "guide", method = RequestMethod.GET)
	public String guideTool1() {

		return "guide";
	}

	@RequestMapping(value = "tools", method = RequestMethod.POST)
	public String downLoad() {

		return "tools";
	}

	@RequestMapping(value = "guide_eclipse", method = RequestMethod.GET)
	public String guide_eclipse() {

		return "guide_eclipse";
	}

	@RequestMapping(value = "guide_data", method = RequestMethod.GET)
	public String guide_data() {

		return "guide_data";
	}

	@RequestMapping(value = "guide_spring", method = RequestMethod.GET)
	public String guide_spring() {

		return "guide_spring";
	}

	@RequestMapping(value = "guide_mysql", method = RequestMethod.GET)
	public String guide_mysql() {

		return "guide_mysql";
	}

}
