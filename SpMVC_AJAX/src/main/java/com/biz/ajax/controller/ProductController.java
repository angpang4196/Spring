package com.biz.ajax.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biz.ajax.service.ProductService;
import com.biz.ajax.vo.ProductVO;

@Controller
public class ProductController {
	
	@Autowired
	ProductService pService;
	
	@RequestMapping(value="home", method=RequestMethod.GET)
	public String goHome() {
		
		return "home";
	}
	
	@RequestMapping(value="product", method=RequestMethod.GET)
	public String viewProductInfo(Model model) {
		
		List<ProductVO> pList = pService.readP();
		
		model.addAttribute("PROS", pList);
		
		return "product";
	}
		
	

}
