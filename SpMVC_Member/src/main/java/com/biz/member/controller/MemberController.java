package com.biz.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.biz.member.model.MemberVO;
import com.biz.member.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MemberController {
	
	@Autowired
	MemberService mService;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String home() {
		return "member-home";
	}
	
	@RequestMapping(value="join", method=RequestMethod.GET)
	public String login(Model model) {
		
		model.addAttribute("BODY","JOIN-FORM");
		
		return "member-home";
	}
	
	@RequestMapping(value="join", method=RequestMethod.POST)
	public String join(@ModelAttribute MemberVO memberVO) {
		
		log.debug(memberVO.toString());
		
		mService.insert(memberVO);
		
		return "redirect:/";
	}
	
	@ResponseBody
	@RequestMapping(value="id-check", method=RequestMethod.POST)
	public String id_Check(String m_userid) {
		
		String ret = "";
		
		MemberVO vo = mService.findById(m_userid);
		if(vo == null) {
			ret = "사용할 수 있는 ID입니다";
		}else {
			ret = "이미 등록된 ID입니다";
		}
		
		return ret;
	}

}
