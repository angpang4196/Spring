package com.biz.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biz.member.mapper.MemberDao;
import com.biz.member.model.MemberVO;

@Service
public class MemberService {
	
	@Autowired
	MemberDao dao;

	public void insert(MemberVO memberVO) {
		
		dao.insert(memberVO);
		
	}

	public MemberVO findById(String m_userid) {
		
		MemberVO vo = dao.findById(m_userid);
		
		return vo;
	}
}
