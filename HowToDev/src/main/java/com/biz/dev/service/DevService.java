package com.biz.dev.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biz.dev.dao.DevDao;
import com.biz.dev.vo.EclipseVO;
import com.biz.dev.vo.Ora_ErrorVO;

@Service
public class DevService {

	@Autowired
	DevDao devDao;

	public Ora_ErrorVO findByCode(String or_er_code) {

		Ora_ErrorVO vo = devDao.findByCode(or_er_code);

		return vo;
	}
	
	public List<EclipseVO> selectAll(){
		
		List<EclipseVO> ecList = devDao.selectAll();
		
		return ecList;
	}

}
