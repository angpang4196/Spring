package com.biz.ajax01.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.biz.ajax01.model.DeptVO;
import com.biz.ajax01.service.DeptService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class DeptController {

	@Autowired
	DeptService dService;
	
	@RequestMapping(value = "dept", method = RequestMethod.POST)
	public String viewDeptList(Model model) {

		List<DeptVO> dList = dService.getDeptList();

		model.addAttribute("DLIST", dList);
		
		int intSize = dList.size();
		
		for (DeptVO vo : dList) {
			log.debug(vo.toString());
		}

		return "dept";
	}

}
