package com.biz.dev.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.biz.dev.dao.DevDao;
import com.biz.dev.vo.Ora_ErrorVO;

public class DevService {

	@Autowired
	DevDao devMapper;

	public Ora_ErrorVO getAns(String or_er_code) {

		Ora_ErrorVO vo = devMapper.findByCode(or_er_code);

		return vo;
	}

}
