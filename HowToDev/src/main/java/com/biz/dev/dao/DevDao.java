package com.biz.dev.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.biz.dev.vo.EclipseVO;
import com.biz.dev.vo.Ora_ErrorVO;

public interface DevDao {

	@Select(DevSQL.DEV_FIND_BY_CODE)
	public Ora_ErrorVO findByCode(String or_er_code);
	
	@Select(DevSQL.DEV_SELECT_ALL)
	public List<EclipseVO> selectAll();

}
