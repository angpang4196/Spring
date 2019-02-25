package com.biz.ajax01.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biz.ajax01.mapper.DeptMapper;
import com.biz.ajax01.model.DeptVO;

@Service
public class DeptService {

	@Autowired
	DeptMapper dMapper;

	public List<DeptVO> getDeptAllList() {

		List<DeptVO> dList = dMapper.selectAll();

		return dList;

	}

	public DeptVO getDept(String d_code) {

		DeptVO deptVO = dMapper.findByDCode(d_code);

		return deptVO;
	}

	public List<DeptVO> getFindByDName(String d_name) {
		
		List<DeptVO> deptList = dMapper.findByDName(d_name.trim());
		
		return deptList;
	}

	public int save(DeptVO deptVO) {
		
		// 새로 등록? 아니면 수정?
		String d_code = deptVO.getD_code();
		DeptVO tvo = dMapper.findByDCode(d_code);
		
		int ret = 0 ;
		if(tvo == null) {
			ret = dMapper.insert(deptVO);
		}else {
			ret = dMapper.update(deptVO);
		}
		
		return ret;
	}

}
