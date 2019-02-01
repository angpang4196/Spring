package com.biz.memo02.controller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biz.memo02.service.MemoService;
import com.biz.memo02.vo.MemoVO;

@Controller
public class MemoController {
	
	// 지금부터 memoService를 사용할 수 있도록
	// 초기화 작업을 수행해 두어라.
	@Autowired
	// Service 클래스를 사용하기 위해서 선언
	MemoService memoService;
	
	@RequestMapping("memo_home")
	public String memo_list(Model model) {
		
		List<MemoVO> memoList = memoService.selectAll();
		
		model.addAttribute("MEMOS", memoList);
		
		return "home";
	}
	
	@RequestMapping("memo_view")
	public String memo_view(@Param("id") long id, String MSG, Model model) {
		
		// 매개변수로 전달받은 id를 사용해서
		// 데이터를 읽어오고
		// memo_view와 렌더링처리
		MemoVO vo = memoService.getMemo(id);
		
		model.addAttribute("MSG", MSG);
		model.addAttribute("MEMO", vo);
		
		return "memo_view";
	}
	// 폼을 열 때 사용할 requestPath
	// 메뉴에서 메모작성을 클릭하면 호출될 requestPath
	@RequestMapping(value = "memo", method = RequestMethod.GET)
	public String memo() {
		return "memo_write";
	}
	
	// 폼으로부터 데이터를 전달받을 때 사용할 requestPath
	@RequestMapping(value = "memo", method = RequestMethod.POST)
	public String memo(Model model, @ModelAttribute MemoVO vo) {
		
		// form으로부터 받은 데이터를 service에게 전달하여 어떤 가공(연산)을 수행한 후
		// 다시 DB에 저장하도록 실행
		
		String retMsg = "";
		String resPath = "";
//		int ret = memoService.insertDB(vo);
		
		int ret = memoService.writeDB(vo);
		
		if(ret > 0) {
			resPath = "redirect:memo_home";
		}else {
			retMsg = "데이터 추가 오류";
			resPath = "memo_write";
		}
		
		model.addAttribute("MESSAGE", retMsg);
		return resPath;
	}
	
	@RequestMapping(value = "memo_update", method = RequestMethod.GET)
	public String memo_update(@Param("id") long id, Model model) {
		MemoVO vo = memoService.getMemo(id);
		
		model.addAttribute("MEMO", vo);
		return "memo_write";
	}
	
	@RequestMapping("memo_delete")
	public String memo_delete(@Param("id") long id, Model model) {
		
		int ret = memoService.delete(id);
		
		String resPath = "";
		String retMsg = "";
		
		if(ret > 0) {
			resPath = "redirect:memo_home";
		}else {
			resPath = "redirect:memo_view";
			retMsg = "DEL-ERR";
		}
		
		model.addAttribute("id", id);
		model.addAttribute("MSG", retMsg);
		return resPath;
	}

}
